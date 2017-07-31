
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
SELECT hospital_name, state, score
FROM readmissions;
