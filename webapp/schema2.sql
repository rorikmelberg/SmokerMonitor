DROP TABLE IF EXISTS TempLog;
DROP TABLE IF EXISTS ErrorLog
DROP TABLE IF EXISTS Cook

CREATE TABLE TempLog (
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  SensorNum int NOT NULL,
  EventDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Temp FLOAT NOT NULL,
);

CREATE TABLE Cook (
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  Title nvarchar[256],
  CookStart TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  CookEnd TIMESTAMP,
);

CREATE TABLE errorLog (
  Id INTEGER PRIMARY KEY AUTOINCREMENT,
  EventDate TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  Error TEXT NOT NULL,
);