drop table hosp_pat;

create table hosp_pat as
  select best_hosp.hospital_name, best_hosp.avg_score as hosp_score, surveys.hosp_sur_score
  from best_hosp
  left join surveys on best_hosp.hospital_name = surveys.hospital_name
  ;
