# apcjs_docker

Docker buildfile and start script for apcjs web application.

To use:

	git clone https://github.com/wsmith85/apcjs_docker.git
	cd apcjs_docker
	docker build -t wsmith85/apcjs .
	./start.sh
	
Exposes port 3000 which is currently hard coded in the apcjs code. Expect apc host name to be 'apc' as it's currently also hard coded in apcjs code.