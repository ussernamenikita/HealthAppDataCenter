CREATE TABLE Coordination
(
   user_id	VARCHAR   NOT NULL,
   time         TIMESTAMP NOT NULL,
   pitch DOUBLE ,
   azimut DOUBLE,
   roll DOUBLE ,
   latitude DOUBLE ,
   longitude DOUBLE ,
   altiture DOUBLE ,
   speed DOUBLE,
   PRIMARY KEY (
     (user_id, QUANTUM(time, 15, 'm')),
      user_id, time)
)
