DROP TABLE hospitals;

CREATE EXTERNAL TABLE hospitals
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county string,
  phone string,
  hospital_type string,
  hospital_ownership string,
  emergency_services string,
  meets_ehs_criteria string,
  overall_rating string,
  overall_rating_footnote string,
  mortality_national_comparing string,
  mortality_national_comparing_footnote string,
  safety_of_care_national_comparison string,
  safety_of_care_national_comparison_footnote string,
  readmission_national_comparison string,
  readmission_national_comparison_footnote string,
  patient_experience_national_comparison string,
  patient_experience_national_comparison_footnote string,
  effective_of_care_national_comparison string,
  effective_of_care_national_comparison_footnote string,
  timeliness_of_care_national_comparison string,
  timeliness_of_care_national_comparison_footnote string,
  efficient_use_of_medical_imaging_national_comparison string,
  efficient_use_of_medical_imaging_national_comparison_footnote string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = '"',
  "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/hospitals"
;

DROP TABLE effective_care;

CREATE EXTERNAL TABLE effective_care
(
  provider_id string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county string,
  phone string,
  condition string,
  measure_id string,
  measure_name string,
  score string,
  sample string,
  footnote string,
  mesaure_start_date string,
  measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = '"',
  "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/effective_care"
;

DROP TABLE readmissions;

CREATE EXTERNAL TABLE readmissions
(
  county string,
  phone string,
  measure_name string,
  measure_id string,
  compare_to_national string,
  denominator string,
  score string,
  lower_estimate string,
  higher_estimate string,
  footnote string,
  measure_start_date string,
  measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = '"',
  "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/readmissions"
;

DROP TABLE measures;

CREATE EXTERNAL TABLE measures
(
  measure_name string,
  measure_id string,
  measure_start_quarter string,
  measure_start_date string,
  measure_end_quarter string,
  measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = '"',
  "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/measures"
;

DROP TABLE surveys_responses;

CREATE EXTERNAL TABLE surveys_responses
(
  provider_number string,
  hospital_name string,
  address string,
  city string,
  state string,
  zip_code string,
  county string,
  comm_with_nurses_floor string,
  comm_with_nurses_achievement_threshold string,
  comm_with_nurses_benchmark string,
  comm_with_nurses_baseline_rate string,
  comm_with_nurses_performance_rate string,
  comm_with_nurses_achievement_points string,
  comm_with_nurses_improvement_points string,
  comm_with_nurses_dimension_score string,
  comm_with_doctors_floor string,
  comm_with_doctors_achievement_threshold string,
  comm_with_doctors_benchmark string,
  comm_with_doctors_baseline_rate string,
  comm_with_doctors_performance_rate string,
  comm_with_doctors_achievement_points string,
  comm_with_doctors_improvement_points string,
  comm_with_doctors_dimension_score string,
  responsiveness_of_hospital_staff_floor string,
  responsiveness_of_hospital_staff_achivement_threshold string,
  responsiveness_of_hospital_staff_benchmark string,
  responsiveness_of_hospital_staff_baseline_rate string,
  responsiveness_of_hospital_staff_performance_rate string,
  responsiveness_of_hospital_staff_achievement_points string,
  responsiveness_of_hospital_staff_improvement_points string,
  responsiveness_of_hospital_staff_dimension_score string,
  pain_management_floor string,
  pain_management_achievement_threshold string,
  pain_management_benchmark string,
  pain_management_baseline_rate string,
  pain_management_performance_rate string,
  pain_management_achievement_points string,
  pain_management_improvement_points string,
  pain_management_dimension_score string,
  comm_about_meds_achievement_threshold string,
  comm_about_meds_benchmark string,
  comm_about_meds_baseline_rate string,
  comm_about_meds_performance_rate string,
  comm_about_meds_achievement_points string,
  comm_about_meds_dimension_score string,
  cleanliness_and_quietness_of_hospital_env_floor string,
  cleanliness_and_quietness_of_hospital_env_achievement_threshold string,
  cleanliness_and_quietness_of_hospital_env_benchmark string,
  cleanliness_and_quietness_of_hospital_env_baseline_rate string,
  cleanliness_and_quietness_of_hospital_env_performance_rate string,
  cleanliness_and_quietness_of_hospital_env_achievement_points string,
  cleanliness_and_quietness_of_hospital_env_improvement_points string,
  cleanliness_and_quietness_of_hospital_env_dimension_score string,
  discharge_information_floor string,
  discharge_information_achievement_threshold string,
  discharge_information_benchmark string,
  discharge_information_baseline_rate string,
  discharge_information_performance_rate string,
  discharge_information_achievement_points string,
  discharge_information_improvement_points string,
  discharge_information_dimension_score string,
  overall_rating_of_hospital_floor string,
  overall_rating_of_hospital_achievement_threshold string,
  overall_rating_of_hospital_benchmark string,
  overall_rating_of_hospital_baseline_rate string,
  overall_rating_of_hospital_performance_rate string,
  overall_rating_of_hospital_achievement_points string,
  overall_rating_of_hospital_improvement_points string,
  overall_rating_of_hospital_dimension_score string,
  hcahps_base_score string,
  hcahps_consistency_score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
  "separatorChar" = ",",
  "quoteChar" = '"',
  "escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION "/user/w205/hospital_compare/surveys_responses"
;
