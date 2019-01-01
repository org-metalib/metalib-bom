build:
	mvn install

travis-deploy:
	gpg --import ./.travis/private-key.gpg
	mvn versions:set -DnewVersion=${TRAVIS_TAG}
	mvn clean deploy -P release --settings ./.travis/maven-settings.xml