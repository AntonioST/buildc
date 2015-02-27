Project Build Script Collections
================================

The Build System used in my project.

Basic Information
-----------------

* __version__

    2

Project
-------

### ant for java

* [build-java.xml](doc/ant/build-java.md)


Usage
-----

For Java Project with apache ant build as example, copy directory `.ant/` to your project, and write in your `build.xml`

    <import file=".ant/build-java.xml"/>

then you can use any task defined in the `build-java.xml`

Build Extension Task
--------------------

* [java-application](doc/java-application.md)
* [java-coverage](doc/java-coverage.md)
* [java-ivy](doc/java-ivy.md)
* [java-javadoc](doc/java-javadoc.md)
* [java-publish](doc/java-publish.md)

Utility Task
------------

* [ant-exist](doc/ant-exist.md)
* [ant-git](doc/ant-git.md)
* [ant-classpath](doc/ant-classpath.md)
* [ant-make](doc/ant-make.md)

