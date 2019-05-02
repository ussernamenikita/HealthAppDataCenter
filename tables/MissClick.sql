CREATE TABLE MissClick
(
   user_id	VARCHAR   NOT NULL,
   time         TIMESTAMP NOT NULL,
   distance     DOUBLE   NOT NULL,
   isMissClick  BOOLEAN NOT NULL,
   PRIMARY KEY (
     (user_id, QUANTUM(time, 15, 'm')),
      user_id, time)
)
