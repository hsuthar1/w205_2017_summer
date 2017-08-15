from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt
import psycopg2


class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()
        conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
        cur = conn.cursor()
        cur.execute("SELECT word FROM tweetwordcount")
        existing_words = cur.fetchall()
        self.counts.update([words[0] for words in existing_words])
       

    def process(self, tup):
        word = tup.values[0]

        # Write codes to increment the word count in Postgres
        # Use psycopg to interact with Postgres
        # Database name: Tcount 
        # Table name: Tweetwordcount 
        # you need to create both the database and the table in advance.
        conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")
        cur = conn.cursor()
        if self.counts[word] == 0:
            self.counts[word] += 1
            string = cur.mogrify("INSERT INTO tweetwordcount VALUES (%s, %s)", (word, 1))
            cur.execute(string)
            conn.commit()
        else:
            self.counts[word] += 1
            string = cur.mogrify("UPDATE tweetwordcount SET count=%s WHERE word=%s",(self.counts[word], word))
            cur.execute(string)
            conn.commit()

        self.emit([word, self.counts[word]])

        # Log the count - just to see the topology running
        self.log('%s: %d' % (word, self.counts[word]))
