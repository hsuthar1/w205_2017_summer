
DROP TABLE hosp_info;
CREATE TABLE hosp_info AS
SELECT provider_id, hospital_name, state
FROM hospitals;

DROP TABLE te_care;
CREATE TABLE te_care AS
SELECT provider_id, hospital_name, state, condition, score, meas_id
FROM effective_care;

DROP TABLE read_deaths;
CREATE TABLE ER_read_deaths AS
SELECT provider_id, hospital_name, state, score
FROM readmissions;

DROP TABLE surv_resp;
CREATE TABLE surv_resp AS
SELECT provider_id, hospital_name, state, SUBSTRING(nurse_achieve, 1, 2)/SUBSTR(nurse_achieve, -2) AS nur_ac, SUBSTRING(nurse_improve, 1, 2)/SUBSTR(nurse_improve, -2) AS nur_imp, SUBSTRING(nurse_dimen, 1, 2)/SUBSTR(nurse_dimen, -2) AS nur_dim, SUBSTRING(doc_achieve, 1, 2)/SUBSTR(doc_achieve, -2) AS doc_ac, SUBSTRING(doc_improve, 1, 2)/SUBSTR(doc_improve, -2) AS doc_imp, SUBSTRING(doc_dimen, 1, 2)/SUBSTR(doc_dimen, -2) AS doc_dim, SUBSTRING(staff_achieve, 1, 2)/SUBSTR(staff_achieve, -2) AS staff_ac, SUBSTRING(staff_improve, 1, 2)/SUBSTR(staff_improve, -2) AS staff_imp, SUBSTRING(staff_dimen, 1, 2)/SUBSTR(staff_dimen, -2) AS staff_dim, SUBSTRING(pain_achieve, 1, 2)/SUBSTR(pain_achieve, -2) AS pain_ac, SUBSTRING(pain_improve, 1, 2)/SUBSTR(pain_improve, -2) AS pain_imp, SUBSTRING(pain_dimen, 1, 2)/SUBSTR(pain_dimen, -2) AS pain_dim, SUBSTRING(med_achieve, 1, 2)/SUBSTR(med_achieve, -2) AS med_ac, SUBSTRING(med_improve, 1, 2)/SUBSTR(med_improve, -2) AS med_imp, SUBSTRING(med_dimen, 1, 2)/SUBSTR(med_dimen, -2) AS med_dim, SUBSTRING(clean_quiet_achieve, 1, 2)/SUBSTR(clean_quiet_achieve, -2) AS clquiet_ac, SUBSTRING(clean_quiet_improve, 1, 2)/SUBSTR(clean_quiet_improve, -2) AS clquiet_imp, SUBSTRING(clean_quiet_dimen, 1, 2)/SUBSTR(clean_quiet_dimen, -2) AS clquiet_dim, SUBSTRING(discharge_achieve, 1, 2)/SUBSTR(discharge_achieve, -2) AS disch_ac, SUBSTRING(discharge_improve, 1, 2)/SUBSTR(discharge_improve, -2) AS disch_imp, SUBSTRING(discharge_dimen, 1, 2)/SUBSTR(discharge_dimen, -2) AS disch_dim, SUBSTRING(overall_achieve, 1, 2)/SUBSTR(overall_achieve, -2) AS total_ac, SUBSTRING(overall_improve, 1, 2)/SUBSTR(overall_improve, -2) AS total_imp, SUBSTRING(overall_dimen, 1, 2)/SUBSTR(overall_dimen, -2) AS total_dim, hcahps_base_score, hcahps_consist_score
FROM surveys_responses;
