
DROP TABLE hosp_info;
CREATE TABLE hosp_info AS
SELECT provider_id, hospital_name, state
FROM hospitals;

DROP TABLE te_care;
CREATE TABLE te_care AS
SELECT provider_id, hospital_name, state, condition, score, measure_id
FROM effective_care;

DROP TABLE read_deaths;
CREATE TABLE read_deaths AS
SELECT phone, score, measure_id, measure_name
FROM readmissions;

DROP TABLE surveys;
CREATE TABLE surveys AS
select hospital_name, int(substring(overall_rating_of_hospital_dimension_score, 1, 1)) as hosp_sur_score
from surveys_responses;
