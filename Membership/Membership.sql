drop table Member;
CREATE SEQUENCE member_seq
	MAXVALUE		9999
	NOCYCLE

CREATE TABLE Member
(
	idx				NUMBER(4)		NOT NULL,
	userid		VARCHAR2(20),
	passwd		VARCHAR2(50)	NOT NULL,
	username	VARCHAR2(20)	NOT NULL,
	email			VARCHAR2(100)		NOT NULL,
	regdate		DATE							NOT NULL,
	zipcode		CHAR(7),
	address1	VARCHAR2(200),
	address2	VARCHAR2(100),
	CONSTRAINT member_userid_pk PRIMARY KEY(userid)
);

commit;

CREATE OR REPLACE PROCEDURE member_insert
(
	userid						IN			member.userid%TYPE,
	passwd						IN			member.passwd%TYPE,
	username						IN			member.username%TYPE,
	email						IN			member.email%TYPE,
	zipcode						IN			member.zipcode%TYPE,
	address1						IN			member.address1%TYPE,
	address2						IN			member.address2%TYPE
)
IS
BEGIN
		INSERT INTO Member(idx, userid, passwd, username, email, regdate, zipcode, address1, address2)
		VALUE(member_seq.NEXTVAL, userid, passwd, username, email, SYSDATE, zipcode, address1, address2)
		COMMIT;
END;

CREATE OR REPLACE PROCEDURE member_login_new
(
	userid			IN			member.userid%TYPE,
	login_record		OUT	SYS_REFCURSOR
)
AS
BEGIN
	OPEN login_record FOR
	SELECT userid, passwd
	FROM Member
	WHERE userid = userid;
END;

CREATE OR REPLACE PROCEDURE member_select
(
	p_userid			IN			member.userid%TYPE,
	member_record		OUT		SYS_REFCURSOR
)
AS
BEGIN
	OPNE member_record FOR
	SELECT * FROM Member
	WHERE userid = p_userid
END; 