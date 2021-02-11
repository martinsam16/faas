.PHONY: package run deploy

package:
	mvn clean package

run:
	make package
	mvn azure-functions:run

deploy:
	make package
	mvn azure-functions:deploy