# 317Hardware

## Table of Contents

- [Introduction](#introduction)
- [Bill of Materials](#bill-of-materials)
- [Time Commitment](#time-commitment)
- [Mechanical Assembly](#mechanical-assembly)
- [PCB/Soldering](#pcbsoldering)
  * [Pre-made PCB](#pre-made-pcb)
  * [Solder your own](#solder-your-own-pcb)
- [Power Up](#power-up)
- [Unit Testing](#unit-testing)
- [Production Testing](#production-testing)
- [Reproducible](#reproducible)

_(TOC generated with help from [markdown-toc](https://github.com/jonschlinkert/markdown-toc))_

## Introduction

System diagram and scope

## Bill of Materials

List of items or materials needed/to purchase

List of tools needed

List of resources/outside help needed

## Time Commitment

Time to complete

Skill level/difficulty/prior experience

## Mechanical Assembly

How to asseble PCB, how to assemble Pi

## PCB/Soldering

Pre made PCB

### Pre made PCB

### Solder your own PCB

This section is for individuals who have gotten their PCB manufactured and need to install their components onto it. Follow the steps below if you have chosen to assemble/solder your own PCB.

>Hint: If you do not have prior soldering experience, I recommended reading [this](https://www.makerspaces.com/how-to-solder/) website and watching their demonstration video.

Before beginning please ensure you have an adequate workspace, the appropriate tools, and that everything is clean and tidy. The appropriate safety equipment is outlined in the website above.

1. Vias

![PCBvias1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBvias1.jpg)*Fig. 5.1: Top vias* ![PCBvias2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBvias2.JPG)*Fig. 5.2: Bottom vias*

Begin by cutting 6 short lengths of your solid core wire and stripping them completely. Place a piece of wire through one of the holes circled in red and solder one side of it. Once the solder joint has cooled, flip the PCB over and solder the other side of the same wire. Carefully cut off the excess wire on either side down at the tip of the solder joint. Repeat this process for the other 5 holes circled in red.

2. DC Jack and SP3T Switch

![PCBjack1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBjack1.JPG) ![PCBjack2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBjack2.JPG)

Place the DC jack (circled in blue) into its mounting holes on the PCB. Ensure that the jack is sitting on top of the board, facing out the side, and its pins/tabs stick out the bottom. Bend the 3 tabs down towards the PCB to help hold the jack in place and to allow for a better solder connection. Solder each tab individually on the bottom of the board. Allow time to cool in between each pin (to avoid melting the plastic).

Place the SP3T switch (circled in red) into its mounting holes on the PCB. Ensure that the switch is sitting on top of the board, facing out the side, and its pins stick out the bottom. Bend the pins slightly to help hold the switch in place. Solder each pin individually on the bottom of the board (the second pin from the left will remain empty). After this is done solder just the far left hand pin from the top as well (this is the interior red circle on the first image). 

3. Resistors

![PCBresist1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist1.JPG) ![PCBresist2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist2.JPG) ![PCBresist3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist3.JPG)

Bend the legs on your 1k ohm resistors so each resistor aligns with a pair of holes circled in red. Place the first resistor into its mounting holes from the top of the board and bend the legs from underneath to hold it in place. Solder both the top and bottom holes (allow time to cool between solder joints to prevent overheating the resistor). Do this for the other 2 resistors.

4. Diode

![PCBdiode1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBdiode1.JPG) ![PCBdiode2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBdiode2.JPG)

Bend the legs on your diode so it aligns with the pair of holes circled in red. 

>The silver line on your diode MUST face the square pad on the board (red arrow pointing to it).

Place the diode into its mounting holes from the top of the board and bend the legs from underneath to hold it in place. Solder the diode from underneath the board (allow time to cool between solder joints to prevent damaging the diode).

5. Transistor

![PCBtransist1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBtransist1.JPG) ![PCBtransist2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBtransist2.JPG)

Place the transistor into its mounting holes from the top of the board.

>The flat side on the transistor body MUST face the flat red line in the diagram. However, if you are using a different transistor/different package please refer to its data sheet to determine its orientation (collector, base, and emitter labelled in the diagram).

Bend the pins on the transistor from underneath to help hold it in place. Solder the transistor pins from underneath the board. It is very important you allow time to cool between each solder joint as transistors are very sensistive to heat.

6. Molex Connectors

![PCBmolex1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex1.JPG) ![PCBmolex2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex2.JPG) ![PCBmolex3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex3.JPG)

Place the sensor molex connector (circled in red) into its mounting holes from the top of the board.

>The plastic "tab" on the molex connector should face the flat red line in the diagram.

Bend the pins from underneath to hold it in place. Solder each pin from underneath the board.

For the motor molex connector (circled in blue), cut off or bend the far right pin flat as it will not be used (interior blue circle on the third image). Place the connector into its mounting holes from the top of the board (the direction the plastic tab faces isn't critical). Solder the two pins from underneath the board.

7. ADC and Pi Headers

![PCBheader1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader1.JPG) ![PCBheader2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader2.JPG) ![PCBheader3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader3.JPG)

If you haven't already, now is the time to cut your headers to size. You will need one 2 pin, one 4 pin, and one 9 pin header.

Place the 4 pin header onto the Vcc, Gnd, SDA, and SCL pins of the ADS1115. Place the 2 pin header onto the A0 and A1 pins of the ADS1115. Place the headers into their mounting holes from the top of the PCB (circled in red) and ensure that the pins stick out the bottom. Flip the PCB over so it is now resting on the ADS1115. Prop up the PCB so it is parallel and square with the ADS1115. Solder the the header pins on the bottom side of the board.

Place the 9 pin header onto your Raspberry Pi so it sits on pins 1, 3, 5, 7, 9, 11, 13, 15, and 17. Now place the entire PCB onto the 9 pin header from the bottom (the pins should stick out the top of the PCB). Prop up the PCB so it is parallel and square with the Raspberry Pi. Solder the two outermost pins from the top side of the board (this is done to secure it). Now remove the PCB from the Pi with the 9 pin header attached. Finish soldering the other 7 pins from the top side of the board.

## Power Up

Power up/test

## Unit Testing

How to test sensor/code

## Production Testing

How to test in production? Every unit, every 10th, random, etc

## Reproducible

Is it reproducible
