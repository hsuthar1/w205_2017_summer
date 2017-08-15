import psycopg2
import sys
import pprint
 
def main():
  conn = psycopg2.connect(database="tcount", user="postgres", password="pass", host="localhost", port="5432")

  cursor = conn.cursor()
 
  if len(sys.argv) == 1:
    cursor.execute("SELECT * FROM tweetwordcount order by word asc")
    records = cursor.fetchall()
    for record in records:
          print '(<%s> , %s)'% (record[0], record[1])
  if len(sys.argv) == 2:
    word = sys.argv[1]
    input = [word]
    cursor.execute("SELECT count FROM tweetwordcount where word=%s", input)
    records = cursor.fetchone()
    print 'Count of "%s": %d'% (word, records[0])
 
if __name__ == "__main__":
  main()
