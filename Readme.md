### Healthapp backend with Riak TS database (https://hub.docker.com/r/basho/riak-ts/)
   
1. Set volume with Firebase admin credentional named as 'FirebasePrivateKey.json' to '/home/node/app/secrets' directory in nodeapp container.
   
```
  ...
  nodeapp:
    image: nbinik/healthapp
    restart: always 
    ports:
      - "8080:8080"
    depends_on:
      - coordinator
    environment:
      - RIAK_ADDRESS='10.3.0.2:8087'
      - RIAK_RECONECT_ATTEMPTS=5
    volumes:
      - /path/to/secrets:/home/node/app/secrets
  ...
```

2. Add execute permission to files run.sh and init-letsencrypt.sh

   chmod +x prepare.sh
   chmod +x init-letsencrypt.sh
3. Run init-letsencrypt.sh for ssl sertificate generation

4. Run run.sh for start containers 

All tables defined in /tables drectory will be loded to database when startup.
When the cluster has started, open Riak Explorer in the browser by navigating to localhost:8098/admin/.

Script 'run.sh' create directories 'logs','data' and 'schemas' in current directory, and set owner 102:105 to this directories (details https://stackoverflow.com/questions/45183678/riak-container-does-not-start-when-its-data-volume-is-mounted).
Logs folder for logger. Data folder for data persistance. Schemas folder for predefined tables.
"run.sh" also remove old files from data directory before startup containers.
