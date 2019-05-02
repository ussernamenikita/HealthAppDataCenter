CREATE TABLE Coordination
(
   user_id	VARCHAR   NOT NULL,
   time         TIMESTAMP NOT NULL,
   pitch DOUBLE NOT NULL,
   azimut DOUBLE NOT NULL,
   roll DOUBLE NOT NULL,
   latitude DOUBLE NOT NULL,
   longitude DOUBLE NOT NULL,
   altiture DOUBLE NOT NULL,
   PRIMARY KEY (
     (user_id, QUANTUM(time, 15, 'm')),
      user_id, time,symbol)
)
