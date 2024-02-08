.. _retro_game:

Retro Game
###########

Overview
********

A retro game using Zephyr as kernel with uart communication to a Basys 3 FPGA board.


Building and Running
********************

This application can be built and executed on QEMU as follows:

.. zephyr-app-commands::
   :zephyr-app: samples/RetroGame/RetroESP/
   :host-os: unix
   :board: esp32s3-devkitm
   :goals: run
   :compact:


Sample Output
=============

.. code-block:: console

    LOGIC-HIT
    LOGIC-MIS
    IMG-SHOT
