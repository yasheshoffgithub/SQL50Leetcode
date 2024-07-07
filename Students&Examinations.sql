/* Write your PL/SQL query statement below */
SELECT S.student_id, S.student_name, SUB.subject_name, 

count(E.subject_name) AS attended_exams 
FROM Students S CROSS JOIN Subjects SUB #to generate all possible combinations of students,subjects

LEFT OUTER JOIN Examinations E ON #combine with examinations to search for exams attended

S.student_id = E.student_id AND SUB.subject_name = E.subject_name 

GROUP BY S.student_id, S.student_name,SUB.subject_name #count when all these 3 attributes are same
ORDER BY S.student_id, SUB.subject_name #order of the final result 