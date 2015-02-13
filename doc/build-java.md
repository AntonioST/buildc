Build Java
==========

Basic Information
-----------------

Directory Structure
-------------------

    ./
    |_src/
    |_test/
    |_res/
    |_lib/
    |_build/
      |_classes/
      |_test/
      | |_classes/
      | |_result/
      |_jar
      |_META-INF/

-------------------------------------------------------------------------------

Default import
--------------

* [ant-git](ant-git.md)
* [ant-exist](ant-exist.md)
* [ant-classpath](ant-classpath.md)

Build Script Require
--------------------

no

Property Require
----------------

no

-------------------------------------------------------------------------------

Global Property
---------------

property            | value                         | type      | description
--------            | -----                         | ----      | -----------
define.java         |                               |           | define this build script is imported
src.dir             | src                           | directory |
test.dir            | test                          | directory |
build.dir           | build                         | directory |
res.dir             | res                           | directory |
lib.dir             | lib                           | directory |
lib.master.dir      | `${lib.dir}`/master           | directory |
lib.compile.dir     | `${lib.dir}`/compile          | directory |
lib.runtime.dir     | `${lib.dir}`/runtime          | directory |
lib.test.dir        | `${lib.dir}`/test             | directory |

Property Defined
----------------

property            | value                         | type      | task  | description
--------            | -----                         | ----      | ----  | -----------
readme.file         |                               | file      |       |
main.class          |                               | class     |       |
manifest.file       |                               | file      |       |
splash.image        |                               | file      |       |
config              |                               | file      |       | task __run__ use
class               |                               | class     |       | task __test-class__, __test-method__ use
method              |                               | method    |       | task __test-method__ use
java.jvmargs        |                               | lines     |       |
test.jvmargs        |                               | lines     |       |
program.args        |                               | lines     |       |
jar.file            | `${project.name}`-`${project.version}`.jar | file | |
project.name        | `${ant.project.name}`         | string    | -init |
project.version     |                               | string    | -init | use either git-describle or time-stamp
javac.source        | 1.8                           | value     | -init | -source
javac.target        | 1,8                           | value     | -init | -target
javac.debug         | true                          | bool      | -init |
javac.verbose       | true                          | bool      | -init | -verbose
javac.jvmargs       |                               | lines     | -init |
javac.list-file     | true                          | bool      | -init |
src.include         | **                            | glob      | -init |
src.exclude         |                               | glob      | -init |
jar.lib.copy        | true                          | bool      | -init | copy lib to jar
jar.lib.dir         | lib                           | directory | -init | library directory used in jar manifest classpath
build.classes.dir   | `${build.dir}`/classes        | directory | -init |
build.test.dir      | `${build.dir}`/test/classes   | directory | -init |
build.javadoc.dir   | `${build.dir}`/javadoc        | directory | -init |
build.jar.dir       | `${build.dir}`/jar            | directory | -init |
build.meta.dir      | `${build.dir}`/META           | directory | -init |
test.result.dir     | `${build.dir}`/test/result    | directory | -init |
master.classpath    |                               | classpath | -init-classpath | join into compile, runtime, test
compile.classpath   |                               | classpath | -init-classpath |
runtime.classpath   |                               | classpath | -init-classpath |
test.classpath      |                               | classpath | -init-classpath |
classpath           |                               | classpath | -init-classpath |
real.compile.classpath |                            | classpath | -init-classpath | join all compile-relative classpath
real.runtime.classpath |                            | classpath | -init-classpath | join all runtime-relative classpath
real.test.classpath |                               | classpath | -init-classpath | join all test-relative classpath

-------------------------------------------------------------------------------

Extension Point
---------------

### -pre-init

### -post-init

### -pre-compile

### -post-compile

### -pre-jar

### -post-jar

### -pre-test

### -post-test

### -post-clean

### -pre-run

### -post-run

### -post-clean

-------------------------------------------------------------------------------

Task
----

### init

### compile

### compile-single

### compile-test

### test

### test-class

### test-method

### jar

### run

### run-test

### run-jar

### clean

### clean-all


-------------------------------------------------------------------------------

Macro
-----

-------------------------------------------------------------------------------

See Also
--------

