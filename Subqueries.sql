SUBQUERY AGGREGATE FUNCTION
SELECT ProjectID, ProjectName, MaxHours
FROM PROJECT
WHERE MaxHours >
(SELECT AVG (MaxHours)
 FROM PROJECT
 WHERE ProjectID = ProjectID
 ORDER BY ProjectName, MaxHours)
 
 DOUBLE EXISTS
 SELECT DISTINCT DepartmentPhone
 FROM Department
 WHERE NOT EXISTS 
         ( SELECT *
          FROM DepartmentName
          WHERE DepartmentName.DepartmentPhone=
                  Department.DepartmentPhone
          );
