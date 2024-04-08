
Retro Game - Saga of Sacrifice
******************************

.. raw:: html

   <a href="https://github.com/dinordi/RetroGame/">
     <p align="center">
       <picture>
         <source media="(prefers-color-scheme: dark)" srcset="images/readme/player.png">
         <source media="(prefers-color-scheme: light)" srcset="images/readme/player.png">
         <img src="images/readme/player.png">
       </picture>
     </p>
   </a>


Saga of Sacrifice is a 2D-platformer where the player traverses several levels to defeat his nemesis, a samurai.

The game runs using a ESP32-S3-DevkitC v1.1 and a Basys3 FPGA.


Getting Started
***************

Welcome to Saga of Sacrifice! See the `Hardware Documentation`_ for a high-level overview,
and the documentation's `Setup`_ to get the game running.

.. start_include_here

.. _project-resources:

Hardware Documentation
**********************

The KiCad files can be downloaded from the Docs/KiCad folder.

`Scheme <https://github.com/dinordi/RetroGame/blob/main/Docs/KiCad/images/retrogame.pdf>`_

`PCB Coloured <https://github.com/dinordi/RetroGame/blob/main/Docs/KiCad/images/retrogame-brd.svg>`_

`PCB Back <https://github.com/dinordi/RetroGame/blob/main/Docs/KiCad/images/PCBAchter.pdf>`_

`PCB Front <https://github.com/dinordi/RetroGame/blob/main/Docs/KiCad/images/PCBVoor.pdf>`_

+------------------+----------------------------------+
| GPIO pin         | Function                     |
+==================+==================================+
| GPIO 6           | Joystick left                     |
+------------------+----------------------------------+
| GPIO 4           | Joystick right                  |
+------------------+----------------------------------+
| GPIO 7           | Joystick up                     |
+------------------+----------------------------------+
| GPIO 5           | Joystick down                     |
+------------------+----------------------------------+
| GPIO 16           | Green button                     |
+------------------+----------------------------------+
| GPIO 15           | Red button                     |
+------------------+----------------------------------+
| GPIO 9           | Black button                     |
+------------------+----------------------------------+

Setup
*****

The game runs on a ESP32-S3-Devkit-C v1.1 using the Zephyr RTOS. v3.5.0.
Windows 11 is tested no guarantee is given for any other OS. For building the esp code West version: v1.2.0 is used.
For compiling the FPGA code Vivado 2023.2 is used.
Plug the VGA cable into the FPGA, headphonejack into the aux output and the micro usb cables into the ESP32 and FPGA.
That should be all for the setup, the software is already flashed.

DFPlayer mini
*************

If at any point the music/SFX need to be changed. The SD Card folder structure must be maintained!

Software
*************

The game is written in C++, classdiagram is available in the Docs folder.
The source code for the game is well-commented, providing clear explanations for the functionality of each function. 
With some research and understanding of these comments, you should be able to modify and adapt the code to suit your needs.

Changing Sprites
****************

explanation how to change sprites with Piksel and which dimensions we use (15x15 etc)
and also how to upload them to the FPGA.

Changing text
**************

explanation how to change text in code.
Frequently Asked Questions (FAQ)
---------------------------------

**Q: How to fix empty screen/weird boxes are all over the screen?**

A: Restart ESP32 using reset button or unplugging from power. If that does not work, restart FPGA by pressing the restart button.

**Q: Why isn't there any audio playing?**

A: Check if both SD cards are seated properly in DFPlayer mini's. Also check if the aux cable is connected to an amplified speaker.
The aux connection port could be a little janky, so check if the GND pin makes connection to the PCB.

**Q: Can't flash or can't see the COM port for the esp?**

A: Make sure you have the micro usb cable in the port labeled 'uart' on the esp. Also installing a driver is needed to get the COM port to work.
Download the driver in the github and follow the following link starting at "Manually Install Device Drivers on Windows". `Manually Install Device Drivers on Windows`_ 
When you browse for the driver, select the driver folder from the git.

Additional Resources
--------------------
  | 🌐 `Zephyr Project Website`_

.. 
.. _Zephyr Project Website: https://www.zephyrproject.org
.. _Manually Install Device Drivers on Windows: https://www.groovypost.com/howto/install-device-drivers-manually-on-windows-11-10/
.. _Hardware Documentation: https://github.com/dinordi/RetroGame/tree/main/Docs/
.. _Getting Started Guide: https://github.com/dinordi/RetroGame/tree/main/Docs/
.. _FAQ: https://github.com/dinordi/RetroGame/tree/main/Docs/
