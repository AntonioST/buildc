Build Script Template
=====================

[java-ivy.xml](/.ant/java-ivy.xml)

Basic Information
-----------------

provide ivy retrieve task.

Retrieve Pattern
----------------

By default, retrieve pattern is `${lib.dir}/[conf]/[artifact].[ext]`

Configuration
-------------

* __default__ extends _master_, _runtime_

* __master__

* __compile__

* __runtime__ extends _compile_

* __test__ extends _runtime_

* __source__

* __javadoc__

-------------------------------------------------------------------------------

Default import
-------------

Build Script Require
--------------------

* [build-java](build-java.md)

-------------------------------------------------------------------------------

Global Property
---------------

property            | value     | type      | description
--------            | -----     | ----      | -----------
define.ivy          |           |           | defined this build script is imported
lib.dir             | lib       | directory | library path
exist.ivy           |           | bool      | test `ivy.xml` exist
exist.lib           |           | bool      | test `${lib.dir}` exist


-------------------------------------------------------------------------------

Task
----

### retrieve

retrieve library according `ivy.xml` file

### -try-retrieve

extension from __-post_init__. Checking `${lib.dir}` exist ot not. If false, retrieve required library.
It only detect directory `${lib.dir}`. If any modify in `ivy.xml` file or anything, this task doesn't
give any help. Please run `ant retrieve` manually.

-------------------------------------------------------------------------------

See Also
--------

