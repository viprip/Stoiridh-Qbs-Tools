:qbs:pkg:`~StoiridhQbsTools.Stoiridh.Qt` --- GUIPlugin
====================================================================================================

.. Copyright 2015-2016 Stòiridh Project.
.. This file is under the FDL licence, see LICENCE.FDL for details.

.. sectionauthor:: William McKIE <mckie.william@hotmail.co.uk>

.. qbs:currentsdk:: StoiridhQbsTools
.. qbs:currentpackage:: Stoiridh.Qt

----------------------------------------------------------------------------------------------------

Introduction
^^^^^^^^^^^^

.. qbs:item:: GUIPlugin

   The *GUIPlugin* item is a Product that has its type set to ``dynamiclibrary`` and ``qt-plugin``.

   .. note::

      This item inherits from the :qbs:item:`.Stoiridh.Qt.CorePlugin` item.

Use
^^^

.. code-block:: qbs

   import qbs 1.0
   import Stoiridh.Qt

   Qt.GUIPlugin {
       name: "My GUI plugin"
   }

Dependencies
^^^^^^^^^^^^

The *GUIPlugin* item depends from the following modules:

* cpp [#]_
* Qt [#]_

  * core
  * gui

Properties
^^^^^^^^^^

.. qbs:property:: bool install: false

   Set to ``true`` in order to install the application into the install-root directory.

.. qbs:property:: string installDirectory

   In which directory the application will be installed relative to the install-root directory.

.. qbs:property:: stringList installFileTagsFilter: type

   Filter for the file tags in order to determine what will be installed into the
   :qbs:prop:`installDirectory` directory.

.. rubric:: Footnotes

.. [#] C++ Module (Qbs built-in module): https://doc.qt.io/qbs/cpp-module.html
.. [#] Qt Modules: https://doc.qt.io/qbs/qt-modules.html
