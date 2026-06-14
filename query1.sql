--select clause
select * 
from student_dataset_10000_rows

SELECT study_hours, attendance, sleep_hours
FROM student_dataset_10000_rows

SELECT DISTINCT study_hours 
FROM student_dataset_10000_rows


--where clause
SELECT * 
FROM student_dataset_10000_rows
WHERE study_hours= 7;

SELECT exam_score 
FROM student_dataset_10000_rows
WHERE exam_score >=50;

SELECT internet_usage, sleep_hours
FROM student_dataset_10000_rows
WHERE internet_usage <=3 AND sleep_hours=8

--groupbyclause

SELECT study_hours 
FROM student_dataset_10000_rows
GROUP BY study_hours

SELECT *
FROM student_dataset_10000_rows
GROUP BY exam_score

SELECT previous_score 
FROM student_dataset_10000_rows
GROUP BY previous_score,,





