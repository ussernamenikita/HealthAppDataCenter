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
     (QUANTUM(time, 15, 'm')),
      time)
)
