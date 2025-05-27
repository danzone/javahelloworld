#!/bin/sh
set -e

# directories
mkdir -p bin

# compile main source
javac -d bin src/HelloWorld.java

# compile tests
javac -cp bin:/opt/gradle/lib/junit-4.13.2.jar:/opt/gradle/lib/hamcrest-core-1.3.jar -d bin src/test/java/HelloWorldTest.java

# run tests
java -cp bin:/opt/gradle/lib/junit-4.13.2.jar:/opt/gradle/lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore HelloWorldTest
