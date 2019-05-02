CREATE TABLE TextWatcher
(
   user_id	VARCHAR   NOT NULL,
   time         TIMESTAMP NOT NULL,
   symbol     DOUBLE   NOT NULL,
   timeDelta  SINT64 NOT NULL,
   PRIMARY KEY (
     (user_id, QUANTUM(time, 15, 'm')),
      user_id, time,symbol)
)
