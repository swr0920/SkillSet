Setup
============

History
--------

For the latest updates and version history, please refer to the following link:
`AboutMe – SkillSet Updates <https://raw.githubusercontent.com/swr0920/SkillSet/refs/heads/main/SkillSet/Menu/AboutMe>`_


Structure
---------

.. code-block:: 

    ~/.SkillSet/
    |__ Menu/               # Contains all GUI-related components (menus, dialogs, etc.)
    |__ Proc/               # Contains bindkey settings and general functions
          |__ bindkey.il    # Edit this file to customize your bindkey configurations

All GUI-related components are stored in the ~/.SkillSet/Menu directory. 

Each file is designed to operate independently and does not rely on a shared fn_common file, even when similar functions are used across files.

For example, the Get Window functionality is used in both gui_AddInstLabel.il and gui_Port_Bus.il, but the get_window() function is implemented separately within each file to maintain modularity and avoid interdependencies.

Bindkey configurations and general utility functions are stored in the ~/.SkillSet/Proc directory. 

Some general functions are defined within bindkey.il and are reused where necessary. 

To customize key bindings, simply edit the ~/.SkillSet/Proc/bindkey.il file.
