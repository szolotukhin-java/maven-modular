# I want to execute tests without build a main source, I want to use maven local repository.

## I can do that in the following way:

* Crate a separate maven module for tests
* I can set main source to empty directory
* I can set the phase none to each another plugins which is not related to the test phase
* I can directly call maven test plugin
    pros (+)

    cons (-)
        We do not execute another phases which is related to the tests
        We do not execute another plugins on the test phase
        We need to execute a several maven plugins to run a test (resource, compile, test). So we will be run a JVM 3 times
        We have a compilation error because the main class does not compile into target directory   