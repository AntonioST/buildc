Build Script Template
=====================

Basic Information
-----------------

provide javadoc task

-------------------------------------------------------------------------------

Default import
-------------

Build Script Require
--------------------

* [build-java](build-java.md)

Property Require
----------------

property                | type      | task used     | description
--------                | ----      | ---------     | -----------
build.dir               | directory | javadoc       |
src.dir                 | directory | javadoc       |

-------------------------------------------------------------------------------

Global Property
---------------

property            | value                     | type      | description
--------            | -----                     | ----      | -----------
define.javadoc      |                           |           | defined this build script is imported
build.javadoc.dir   | `${build.dir}`/javadoc    | directory | javadoc output directory


Pre-Defined Property
--------------------

property            | value                 | type      | task      | description
--------            | -----                 | ----      | ----      | -----------
src.include         | \**/*                 | pattern   | javadoc   |
src.exclude         |                       | pattern   | javadoc   |
javadoc.title       | `${project.name}` API | text      | javadoc   | title
javadoc author      |                       | text      | javadoc   | author information
javadoc.version     | `${project.version}`  | text      | javadoc   |
javadoc.charset     | UTF-8                 | encoding  | javadoc   |
javadoc.noindex     | false                 | bool      | javadoc   |
javadoc.nonavbar    | false                 | bool      | javadoc   |
javadoc.notree      | false                 | bool      | javadoc   |
javadoc.private     | false                 | bool      | javadoc   |
javadoc.splitindex  | false                 | bool      | javadoc   |

-------------------------------------------------------------------------------

Task
----

### javadoc


-------------------------------------------------------------------------------

See Also
--------

