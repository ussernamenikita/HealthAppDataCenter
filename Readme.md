1) Move to ./riak directory
2) Add execute permission to file prepare.sh
	sudo chmod +x prepare.sh
This file create and set owner to 'logs' and 'data' folders 
3) Execute 'docker-compose up -d cordinator' for startup container
Step 2 need only before first run.

