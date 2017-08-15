W205 Summer 2017 Exercise 2
Run Instructions

Before we run the code, the following assumptions are being made:
1.	You are on the “UCB MIDS W205 EX2-FULL” AMI
2.	The machine is running python 2.7
3.	The package “psycopg” is installed on your machine

Instructions:
1.	Connect to the AMI
2.	Change user to w205 with:
su – w205
3.	Perform a git pull on https://github.com/hsuthar1/w205_2017_summer
4.	Set up the database by running the following:
Su – postgres
Psql
CREATE DATABASE tcount;
\connect tcount;
CREATE TABLE tweetwordcount(word TEXT PRIMARY KEY NOT NULL, count INT NOT NULL);
5.	 Navigate to extweetwordcount folder with:
cd exercise_2
cd extweetwordcount
6.	Run the program with:
sparse run
	***The program will run indefinitely, you need to manually stop with CRTL+C 
7.	 To see a list of all the words and their count, run the following:
python finalresults.py
8.	To see the count of just one word, run the following:
python finalresults.py <word>
9.	To see words whose frequency lie between k1 and k2, along with their frequencies, run the following:
python histogram k1,k2

