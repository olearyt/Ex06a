SELECT ProjectID, ProjectName, MaxHours
FROM PROJECT
WHERE MaxHours >
(SELECT AVG (MaxHours)
 FROM PROJECT
 WHERE ProjectID = ProjectID
 ORDER BY ProjectName, MaxHours)
