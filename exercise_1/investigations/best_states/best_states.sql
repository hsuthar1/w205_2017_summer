select state, avg(score)
from te_care
group by state
order by avg(score) desc
limit 10
;
