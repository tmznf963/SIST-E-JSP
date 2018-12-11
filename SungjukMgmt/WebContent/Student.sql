CREATE OR REPLACE PROCEDURE sp_student_delete
(
	v_hakbun	IN	Student.hakbun%TYPE
)
IS
BEGIN
	DELETE FROM Student
	WHERE hakbun = v_hakbun;
END; 

CREATE OR REPLACE PROCEDURE sp_student_insert
(
	v_hakbun        IN        Student.hakbun%TYPE,
	v_name          IN        Student.name%TYPE,
	v_kor             IN        Student.kor%TYPE,
	v_eng            IN        Student.eng%TYPE,
	v_mat           IN        Student.mat%TYPE,
	v_edp           IN        Student.edp%TYPE,
	v_sum          IN        Student.sum%TYPE,
	v_avg           IN        Student.avg%TYPE,
	v_grade        IN        Student.grade%TYPE
)
IS
BEGIN
	INSERT INTO Student(hakbun, name, kor, eng, mat, edp, sum, avg, grade)
	VALUES(v_hakbun, v_name, v_kor, v_eng, v_mat, v_edp, v_sum, v_avg ,v_grade);
END; 

CREATE OR REPLACE PROCEDURE sp_student_update
(
	v_hakbun        IN        Student.hakbun%TYPE,
	v_kor             IN        Student.kor%TYPE,
	v_eng            IN        Student.eng%TYPE,
	v_mat           IN        Student.mat%TYPE,
	v_edp           IN        Student.edp%TYPE,
	v_sum          IN        Student.sum%TYPE,
	v_avg           IN        Student.avg%TYPE,
	v_grade        IN        Student.grade%TYPE
)
IS
BEGIN
	UPDATE Student SET kor=v_kor , eng=v_eng, mat=v_mat, edp=v_edp, sum=v_sum, avg=v_avg, grade=v_grade 
	WHERE hakbun = v_hakbun;
END; 

CREATE OR REPLACE PROCEDURE sp_student_select_one
(
	v_hakbun IN Student.hakbun%TYPE,
	rec_student OUT SYS_REFCURSOR
)
AS
BEGIN
	OPEN rec_student FOR
	SELECT * FROM Student 
	WHERE hakbun = v_hakbun;
END;

CREATE OR REPLACE PROCEDURE sp_student_select
(
	rec_students		OUT		SYS_REFCURSOR
)
AS
BEGIN
	OPEN rec_students FOR
	SELECT hakbun, name, kor, eng, mat, edp, sum, avg, grade FROM Student
	ORDER BY sum DESC;
END;