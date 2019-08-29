
CREATE TABLE if not exists systemadministrator (
  sysadmid INTEGER PRIMARY KEY,
  username VARCHAR(64) NOT NULL,
  password   VARCHAR(64) NOT NULL
);

CREATE TABLE if not exists company (
  companyid INTEGER PRIMARY KEY,
  companyadminid INTEGER NOT NULL,
  companyname   VARCHAR(64) NOT NULL,
  sysadmid   INTEGER FOREIGN KEY NOT NULL
);

CREATE TABLE if not exists employee (
  employeeid INTEGER PRIMARY KEY,
  companyid INTEGER FOREIGN KEY NOT NULL
);

CREATE TABLE if not exists companyadministrator (
  companyadminid INTEGER NOT NULL,
  companyadminname  VARCHAR(64) NOT NULL,
  employeeid FOREIGN KEY NOT NULL
);