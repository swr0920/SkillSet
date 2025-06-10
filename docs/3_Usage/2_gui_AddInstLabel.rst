gui_AddInstLabel
=====================

Instance Auto-Labeling
----------------------
This feature automates the labeling of instances based on their names.

When using the Place function in LayoutXL, layout instance names align with those in the schematic. While LayoutXL’s built-in functionality is robust, there are times when circuit and layout engineers need to view instance names directly within the layout for easier and more intuitive tracing.

The Instance Auto-Labeling function addresses this need by clearly displaying instance names in the layout view.

Specifically, it:
 - Detects and removes any existing instance labels.
 - Creates new labels based on user-defined layer and display settings.
 - Adds missing labels where none exist, using the configured parameters.

This enhances layout readability and simplifies the process of tracing instances.

.. figure:: /images/gui_AddInstLabel.png
   :scale: 50%
