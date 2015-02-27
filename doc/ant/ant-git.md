Util Task module
================

[ant-git.xml](/.ant/ant-git.xml)

Basic Information
-----------------

defined task macro for git

-------------------------------------------------------------------------------

Global Property
---------------

property            | value     | type      | description
--------            | -----     | ----      | -----------
exist.git           |           | bool      | test directory `.git/` available

-------------------------------------------------------------------------------

Macro
-----

### macro-git

call command `git`, reference to [exec task][ant-task-exec]

attribute   | default value     | description
---------   | -------------     | -----------
property    | (required)        | the property be set (override)

### git-describe

call command `git describe --tags`

attribute   | default value     | description
---------   | -------------     | -----------
property    | (required)        | the property be set (override)

### git-current-branch

call command `git branch` and postfix. return the name of the current branch.

attribute   | default value     | description
---------   | -------------     | -----------
property    | (required)        | the property be set (override)

### git-ls-files

call command `git ls-files` and save to a fileset.

attribute   | default value     | description
---------   | -------------     | -----------
property    | (required)        | the filest id be set (override)

-------------------------------------------------------------------------------

See Also
--------

[ant-task-exec]: http://ant.apache.org/manual/Tasks/exec.html