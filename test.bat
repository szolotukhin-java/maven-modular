call mvn clean compile
call mvn org.apache.maven.plugins:maven-resources-plugin:2.6:testResources
call mvn org.apache.maven.plugins:maven-compiler-plugin:3.1:testCompile
call mvn org.apache.maven.plugins:maven-surefire-plugin:2.12.4:test