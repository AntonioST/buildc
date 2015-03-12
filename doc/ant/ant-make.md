Util Task module
================

[ant-make.xml](/.ant/ant-make.xml)

Basic Information
-----------------

defined task macro for make

-------------------------------------------------------------------------------


Macro
-----

### macro-make

call command `make`, reference to [exec task][ant-task-exec]

attribute   | default value     | description
---------   | -------------     | -----------
basedir     | `${basedir}`      |
makefile    | Makefile          |
target      |                   |
failonerror | true              |

element     | implicit  | optional  | description
-------     | --------  | --------  | -----------
custom      | true      | true      | task `exec` nest element before target

-------------------------------------------------------------------------------

See Also
--------

Bug Note
--------

[ant-task-exec]: http://ant.apache.org/manual/Tasks/exec.html