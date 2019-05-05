### Docker container with Riak TS database (https://hub.docker.com/r/basho/riak-ts/)

All tables defined in /tables drectory will be loded to database when startup.
1. Add execute permission to file run.sh

2. Run run.sh with sudo 

When the cluster has started, open Riak Explorer in the browser by navigating to localhost:8098/admin/.

Script 'run.sh' create directories 'logs','data' and 'schemas' in current directory, and set owner 102:105 to this directories (details https://stackoverflow.com/questions/45183678/riak-container-does-not-start-when-its-data-volume-is-mounted).
Logs folder for logger. Data folder for data persistance. Schemas folder for predefined tables.
"run.sh" also remove old files from data directory before startup container.
