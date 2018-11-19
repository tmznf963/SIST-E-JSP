CREATE SEQUENCE board_idx_seq
START WITH 1
MAXVALUE 999999
NOCYCLE;

COMMIT;

DROP SEQUENCE board_idx_seq;

CREATE TABLE Gesipan
(
	idx					NUMBER(6),
	name				VARCHAR2(20)	NOT NULL,
	passwd			VARCHAR2(20)	NOT NULL,
	email				VARCHAR2(50)	NOT NULL,
	title					VARCHAR2(100)	NOT NULL,
	contents		LONG					NOT NULL,
	writedate		DATE					NOT NULL,
	readnum 		NUMBER(4)	NOT NULL,
	filename		VARCHAR2(200),
	grp					NUMBER(5)	NOT NULL,
	lev					NUMBER(1)	NOT NULL,
	step				NUMBER(4)	NOT NULL,
	CONSTRAINT gesipan_idx_pk	PRIMARY KEY(idx)
);

CREATE INDEX idx_gesipan_name
ON gesipan(name);

CREATE INDEX idx_gesipan_title
ON gesipan(title);

CREATE OR REPLACE PROCEDURE board_insert
(
	p_name				IN			gesipan.name%TYPE,
	p_passwd		IN			gesipan.passwd%TYPE,
	p_email				IN			gesipan.email%TYPE,
	p_title				IN			gesipan.title%TYPE,
	p_contents		IN			gesipan.contents%TYPE,
	p_filename		IN			gesipan.filename%TYPE
)
IS
BEGIN
	INSERT INTO Gesipan
	VALUES (board_idx_seq.NEXTVAL, p_name, p_passwd, p_email, p_title, p_contents, SYSDATE, 0, p_filename, board_idx_seq.CURRVAL, 0, 0);
	COMMIT;
END ;

CREATE OR REPLACE PROCEDURE board_selectAll
( 
	board_record				OUT				SYS_REFCURSOR
)
AS
BEGIN
	OPEN board_record FOR
	SELECT idx, name, email, writedate, readnum
	FROM Gesipan ORDER BY grp DESC, step ASC;
END;

CREATE OR REPLACE PROCEDURE board_select
(
	p_idx 					IN			gesipan.idx%TYPE,
	board_record			OUT		SYS_REFCURSOR
)
AS
BEGIN
	OPEN board_record FOR
	SELECT * FROM Gesipan
	WHERE idx = p_idx;
END;

--조회수 증가를 위한 update
CREATE OR REPLACE PROCEDURE board_readnum_update
( 
	p_idx 		IN		gesipan.idx%TYPE
)
IS
	p_readnum		gesipan.readnum%TYPE;
BEGIN
	SELECT readnum INTO p_readnum
	FROM Gesipan	WHERE idx = p_idx;
	
	UPDATE Gesipan SET readnum = readnum + 1
	WHERE idx = p_idx;
	COMMIT;
END;

CREATE OR REPLACE procedure board_delete
(
	p_idx IN gesipan.idx%TYPE
)
IS
BEGIN
	DELETE FROM Gesipan
	WHERE idx = p_idx;
	COMMIT;
END;

CREATE OR REPLACE PROCEDURE board_select_passwd
(
	p_idx 			IN		gesipan.idx%TYPE,
	dbpasswd		OUT		gesipan.passwd%TYPE
)
IS
BEGIN
	SELECT passwd INTO dbpasswd
	FROM Gesipan
	WHERE idx = p_idx;
END; 

--답변처리를 위한 각 레코드의 step Update
--답변글의 step값과  같거나, 큰 step 값 1씩 증가
CREATE OR REPLACE PROCEDURE board_update_step
(
	p_grp			IN			gesipan.grp%TYPE,
	p_step		IN			gesipan.step%TYPE
)
IS
BEGIN
	UPDATE Gesipan
	SET step = step + 1
	WHERE grp = p_grp AND step > p_step;
	COMMIT;
END;