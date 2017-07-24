ave my current directory
MY_CWD=$(pwd)

# create staging directories
mkdir ~/staging
mkdir ~/staging/exercise_1

# change to staging directory
cd ~/staging/exercise_1

# get file from data.medicare.gov
MY_URL="https://data.medicare.gov/views/bg9k-emty/files/0a9879e0-3312-4719-a1db-39fd114890f1?content_type=application%2Fzip%3B%20charset%3Dbinary&filename=Hospital_Revised_Flatfiles.zip"
wget "$MY_URL" -O medicare_data.zip

# unzip the medicare data
unzip medicare_data.zip

# create our hdfs directory
hdfs dfs -mkdir /user/w205/hospital_compare

# remove first line of files and rename
OLD_FILE="Hospital General Information.csv"
NEW_FILE="hospitals.csv"
tail -n +2 "$OLD_FILE" > $NEW_FILE

# copy files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare

# remove first line of files and rename
OLD_FILE="Timely and Effective Care - Hospital.csv"
NEW_FILE="effective_care.csv"
tail -n +2 "$OLD_FILE" > $NEW_FILE

# copy files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare

# remove first line of files and rename
OLD_FILE="Readmissions and Deaths - Hospital.csv"
NEW_FILE="readmissions.csv"
tail -n +2 "$OLD_FILE" > $NEW_FILE

# copy files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare

# remove first line of files and rename
OLD_FILE="Measure Dates.csv"
NEW_FILE="Measures.csv"
tail -n +2 "$OLD_FILE" > $NEW_FILE

# copy files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare

# remove first line of files and rename
OLD_FILE="hvbp_hcahps_05_28_2015.csv"
NEW_FILE="surveys_responses.csv"
tail -n +2 "$OLD_FILE" > $NEW_FILE

# copy files to hdfs
hdfs dfs -put $NEW_FILE /user/w205/hospital_compare

# change directory back to original
cd $MY_CWD

# clean exit

exit
