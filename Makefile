all: help

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make sonar-analysis        - perform sonar analysis"
	@echo "   2. make docker-verify         - builds the project inside a docker container"

sonar-analysis:
	@mvn sonar:sonar -Dsonar.host.url=http://localhost:58200 -Dsonar.jdbc.url=jdbc:postgresql://localhost:58300/sonar

docker-verify:
	@docker-compose -f build/docker/build-environment.yml up

