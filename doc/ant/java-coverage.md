Build Script Template
=====================

Basic Information
-----------------

provide code coverage task. use [JaCoCo][ant-jacoco]

Project Layout
--------------
    ${build.dir}/
    |_jacoco/
      |_jacoco.exec
      |_report/

-------------------------------------------------------------------------------

Default import
--------------

Build Script Require
--------------------

* [build-java](build-java.md)

Property Require
----------------

property                | type      | task used     | description
--------                | ----      | ---------     | -----------
main.class              | class     | coverage      | main class

-------------------------------------------------------------------------------

Global Property
---------------

property            | value                 | type      | description
--------            | -----                 | ----      | -----------
define.coverage     |                       |           | defined this build script is imported
build.coverage.dir  | `${build.dir}`/jacoco | directory | output directory
coverage.report.type| html                  | text      | one of html, xml and csv


Pre-Defined Property
--------------------

property            | value                                 | type      | task          | description
--------            | -----                                 | ----      | ----          | -----------
coverage.result.file| `${build.coverage.dir}`/jacoco.exec   | file      | -coverage-init| result file
coverage.report.dir | `${build.coverage.dir}`/report        | directory | -coverage-init| report output directory
java.jvmargs        |                                       | line      | (all)         | jvm arguments
program.args        |                                       | line      | (all)         | program arguments
coverage.report.type.html |                                 | bool      | -coverage-report-init | cannot be used
coverage.report.type.xml |                                  | bool      | -coverage-report-init | cannot be used
coverage.report.type.csv |                                  | bool      | -coverage-report-init | cannot be used
exist.coverage.result |                                     | bool      | -coverage-report-init | check `${coverage.result.file}` exist

Custom Define Property
----------------------

-------------------------------------------------------------------------------

Task
----

### coverage

run `${main.class}` and do coverage test.

### coverage-test

run all unit test and do coverage test.

### coverage-test-class

run a test unit class and do coverage test.

-------------------------------------------------------------------------------

Macro
-----

### coverage-report

defined by __-def-macro-coverage-report__

attribute   | default value             | description
---------   | -------------             | -----------
result      | `${coverage.result.file}` |
classpath   | `${build.classes.dir}`    |
sourcepath  | `${src.dir}`              |

-------------------------------------------------------------------------------

See Also
--------

-------------------------------------------------------------------------------

Bug Note
--------

* If root build.xml not import java-applicaiton.xml, coverage may cause error.

[ant-jacoco]: http://www.eclemma.org/jacoco/trunk/doc/ant.html