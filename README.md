Project Build Script Collections
================================

The Build System used in my project.

Basic Information
-----------------

* __version__

    2

Usage
-----

For Java Project with apache ant build as example, copy directory `.ant/` to your project, and write in your `build.xml`

    <import file=".ant/build-java.xml"/>

then you can use any task defined in the `build-java.xml`

-------------------------------------------------------------------------------

Ant for Java
------------

* [build-java.xml](doc/ant/build-java.md)

### Build Extension Task

* [java-application](doc/ant/java-application.md)
* [java-coverage](doc/ant/java-coverage.md)
* [java-ivy](doc/ant/java-ivy.md)
* [java-javadoc](doc/ant/java-javadoc.md)
* [java-publish](doc/ant/java-publish.md)

### Utility Task

* [ant-exist](doc/ant/ant-exist.md)
* [ant-git](doc/ant/ant-git.md)
* [ant-classpath](doc/ant/ant-classpath.md)
* [ant-make](doc/ant/ant-make.md)
* [ant-groovy](doc/ant/ant-groovy.md)
* [ant-scala](doc/ant/ant-scala.md)
* [ant-clojure](doc/ant/ant-clojure.md)

