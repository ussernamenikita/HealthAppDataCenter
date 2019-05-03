### Docker container with Riak TS database (https://hub.docker.com/r/basho/riak-ts/)

All tables defined in /tables drectory will be loded to database when startup.
1. Add execute permission to file prepare.sh

   chmod +x prepare.sh
2. Run prepare.sh 
3. Execute 'docker-compose up -d cordinator' for startup container

When the cluster has started, open Riak Explorer in the browser by navigating to localhost:8098/admin/.

Step 2 need only before first run.

All commands must be run from root user (sudo)

Script 'Prepare.sh' create directories 'logs','data' and 'schemas' in current directory, and set owner 102:105 to this directories (details https://stackoverflow.com/questions/45183678/riak-container-does-not-start-when-its-data-volume-is-mounted).
Logs folder for logger. Data folder for data persistance. Schemas folder for predefined tables.
