# I want to execute tests without build a main source, I want to use maven local repository.

## I can do that in the following way:

* Crate a separate maven module for tests
* I can set main source to empty directory
* I can set phase none to each related plugins
* I can directly call maven test plugin