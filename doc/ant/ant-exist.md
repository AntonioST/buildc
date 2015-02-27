Util Task module
================

Basic Information
-----------------

defined task macro for exist

-------------------------------------------------------------------------------


Macro
-----

### macro-exist

append path.

attribute   | default value     | description
---------   | -------------     | -----------
property    | (required)        | the property be set (override)
path        | (required)        |
type        |                   | the path type
setonfail   | false             | true for setting the property `false` if not exist
setvalue    | true              | the value set the property if exist
setfalsevalue | faluse          | the value set the property if not exist and `setonfail`


type list:

* (empty)

* __f__, __file__

    test exist and it is file.

* __d__, __dir__, __directory__

    test exist and it is directory.

* __l__, __link__

    test exist and it is symbolic link.

* __c__, __class__

    use FQN and test correspond java file (not .class file) exist.

-------------------------------------------------------------------------------

See Also
--------

