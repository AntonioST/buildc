Util Task module
================

[ant-classpath.xml](/.ant/ant-classpath.xml)

Basic Information
-----------------

defined task macro for classpath

-------------------------------------------------------------------------------


Macro
-----

### path-append

append path.

attribute   | default value     | description
---------   | -------------     | -----------
property    | (required)        | the property be set (override)
path        | (required)        | the path append into `@{property}`
split       | :                 | split character

example:

    <echo message="${path}"/>       # lib/master/123.jar
    <path-append property="path" path="lib/test/junit.jar"/>
    <echo message="${path}"/>       # lib/master/123.jar:lib/test/junit.jar

### list-path

list all the file in the directory

attribute   | default value     | description
---------   | -------------     | -----------
property    | (required)        | the property be set (override)
dir         | (required)        | the directory be list
split       | :                 | split character
include     | \**/*             |

example:

    directory under test/
    lib/test/
      |_ junit.jar
      |_ hamcrest-core.jar

    <list-path property="classpath" dir="lib/test"/>
    <echo message="${classpath}"/>      # lib/test/junit.jar:lib/test/hamcrest-core.jar

-------------------------------------------------------------------------------

See Also
--------

