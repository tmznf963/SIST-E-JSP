CREATE table Department
(
	d_code 	CHAR(1) PRIMARY KEY,
	dname VARCHAR(20) NOT NULL
);

INSERT INTO Department VALUES('A','영업부');
INSERT INTO Department VALUES('B','시설부');
INSERT INTO Department VALUES('C','인사부');
INSERT INTO Department VALUES('D','회계부');
INSERT INTO Department VALUES('E','개발부');
INSERT INTO Department VALUES('F','운용부');
INSERT INTO Department VALUES('G','경리부');
INSERT INTO Department VALUES('H','연구부');

COMMIT;

create table Salary(
	s_grade TINYINT PRIMARY KEY auto_increment,
	s_money	INT	NOT NULL
);

INSERT INTO Salary(s_money) VALUES(730000);
INSERT INTO Salary(s_money) VALUES(630000);
INSERT INTO Salary(s_money) VALUES(590000);
INSERT INTO Salary(s_money) VALUES(430000);
INSERT INTO Salary(s_money) VALUES(880000);
INSERT INTO Salary(s_money) VALUES(960000);
INSERT INTO Salary(s_money) VALUES(660000);
INSERT INTO Salary(s_money) VALUES(820000);

create table Employee(
	sabun CHAR(4)	PRIMARY KEY,
	hobong TINYINT 	NOT NULL,
	night_time	TINYINT NOT NULL,
	family	TINYINT NOT NULL,
	dname	VARCHAR(20),
	gibon		INT,
	j_sal 		INT,
	n_sal		INT,
	f_sal		INT,
	total		INT,
	tax			INT,
	salary	INT
);


