# I want to execute tests without build a main source, I want to use maven local repository.

## I can do that in the following way:

= Crate a separate maven module for tests
    pros (+)
        ?
    cons (-)
        We need to exclude all main submodules via command line or maven profiles
        We need to chang a  default maven layout

= I can set main source to empty directory
= I can set the phase none to each another plugins which is not related to the test phase
    pros (+)
        We don't need to change default maven layout 
    cons (-)
        !!! We have a compilation error because the main class does not compile into target directory
        We need to do that for each plugins one by one

= I can directly call maven test plugin
    pros (+)
        We don't need to change default maven layout
    cons (-)
        !!! We have a compilation error because the main class does not compile into target directory
        We do not execute another phases which is related to the tests
        We do not execute another plugins on the test phase
        We need to execute a several maven plugins to run a test (resource, compile, test). So we will be run a JVM 3 times
           
## Open quests 

= Do we really need to split main source and unit tests ? 