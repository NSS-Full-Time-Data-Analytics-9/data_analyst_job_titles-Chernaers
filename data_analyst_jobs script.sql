SELECT COUNT(title), domain 
FROM data_analyst_jobs
WHERE skill ILIKE '%sql%' 
AND days_since_posting > 3
AND domain IS NOT NULL
GROUP BY domain
ORDER BY count DESC
LIMIT 4;
