CREATE TABLE TextWatcher
(
   user_id	VARCHAR   NOT NULL,
   time         TIMESTAMP NOT NULL,
   symbol     VARCHAR   NOT NULL,
   timeDelta  SINT64 NOT NULL,
   PRIMARY KEY (
     (QUANTUM(time, 15, 'm')),
      time,symbol)
)
