--
-- create the table children
--

create table children(
	childno int(11) not null auto_increment,
	fname varchar(30),
	age int(11),
	primary key(childno)
);

--
-- populate the table 'children'
--

INSERT INTO children(childno, fname, age) VALUES(1, 'jenny', 21);
INSERT INTO children(childno, fname, age) VALUES(2, 'andrew', 17);
INSERT INTO children(childno, fname, age) VALUES(3, 'gavin', 8);
INSERT INTO children(childno, fname, age) VALUES(4, 'duncan', 6);
INSERT INTO children(childno, fname, age) VALUES(5, 'emma', 4);
INSERT INTO children(childno, fname, age) VALUES(6, 'alex', 15);
INSERT INTO children(childno, fname, age) VALUES(7, 'andrian', 9);

