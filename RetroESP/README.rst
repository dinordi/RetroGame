.. _retro_game:

Retro Game
###########

Overview
********

A retro game using Zephyr as kernel with SPI communication to a Basys 3 FPGA board.


Building and Running
********************

This application can be built and executed on QEMU as follows:

.. zephyr-app-commands::
   :zephyr-app: samples/RetroGame/RetroESP/
   :host-os: unix, windows
   :board: esp32s3-devkitm

   west build
   west flash
   

Sample Output
=============

.. code-block:: console

    Updating game
    Wrote 0x0001, 0x0111, 0x0111 over SPI
    Waiting for frame completion
