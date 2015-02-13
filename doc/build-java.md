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
src.dir             | src                           | directory | source directory
test.dir            | test                          | directory | test source directory
build.dir           | build                         | directory | build project output directory
res.dir             | res                           | directory | resource directory
lib.dir             | lib                           | directory | external library directory
lib.master.dir      | `${lib.dir}`/master           | directory |
lib.compile.dir     | `${lib.dir}`/compile          | directory | compile-time use only
lib.runtime.dir     | `${lib.dir}`/runtime          | directory | runtime use only
lib.test.dir        | `${lib.dir}`/test             | directory | test-time use only

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
exist.test          |                               | bool      | -test-init | does directory `${build.test.dir}` exist?
exist.manifest.file |                               | bool      | -jar-init | does file `${manifest.file}` exist?
exist.splash.file   |                               | bool      | -jar-init | does file `${splash.file}` exist?
exist.readme.file   |                               | bool      | -jar-init | does file `${readme.file}` exist?
exist.meta.dir      |                               | bool      | -jar-init | does directory `${res.dir}`/META-INF exist?
jar.manifest.file   | `${build.dir}`/MANIFEST.MF    | file      | -jar-init |

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

### -pre-run

### -post-run

### -post-clean

### -post-clean

-------------------------------------------------------------------------------

Task
----

### init

### compile

compile java file under `${src.dir}`

### compile-single

compile java file `${class}`

### compile-test

compile java file under `${test.dir}`

### test

unit test with all test file under `${test.dir}`

### test-class

unit test with test class `${class}`

### test-method

unit test a method with test class `${class}` and method `${method}`

### jar

build jar file

### run

run main class.

you can use `${config}` to set condig file path.

### run-class

### run-jar

### clean

delete `${build.dir}`

### clean-all

delete `${build.dir}` and `${lib.dir}`

-------------------------------------------------------------------------------

Macro
-----

-------------------------------------------------------------------------------

See Also
--------

