CREATE DATABASE IF NOT EXISTS test CHARACTER SET utf8;

CREATE TABLE IF NOT EXISTS test.user (
`ID` INT(8) NOT NULL AUTO_INCREMENT PRIMARY KEY,
`NAME` VARCHAR(25) NOT NULL,
`AGE` INT NOT NULL,
`IS_ADMIN` BIT(1) NOT NULL DEFAULT false,
`CREATED_DATE` TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO test.user (`NAME`, `AGE`, `IS_ADMIN`) VALUES ('Admin','1', true);
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Jeff ','90');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Taler','30');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Don ','36');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Petro','56');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Bob','21');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Ban','54');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Jack','16');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('John ','17');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Joe','18');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Kevin','19');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Henry','36');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Elliot','51');
INSERT INTO test.user (`NAME`, `AGE`) VALUES ('Oliver','61');
