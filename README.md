# 317Hardware

## Table of Contents

- [Introduction](#introduction)
- [Bill of Materials](#bill-of-materials)
- [Time Commitment](#time-commitment)
- [PCB/Soldering](#pcbsoldering)
- [Mechanical Assembly](#mechanical-assembly)
- [Power Up](#power-up)
- [Unit Testing](#unit-testing)
- [Production Testing](#production-testing)
- [Reproducible](#reproducible)


## Introduction

Welcome to my CENG 317 hardware project page. This guide will provide you with instructions on how to build a capacitive soil moisture sensor using a Broadcom development platform.

System diagram

The system will consist of the Broadcom development platform which takes readings from the various sensors and places these into the database via WiFi. If these readings are outside of certain ranges/thresholds then the platform will send a signal out to the certain effector to adjust the environment/conditions. All of this data will viewed from within our app which will connect to the database via WiFi. The app will also be able to control/turn on the various effectors.

These instructions cover the hardware aspect specifically soil moisture, while the other sensors are being covered by my group members, and the software/app is covered in a different course CENG 319 (found here).


## Bill of Materials

Parts Needed:

| Part/Material                         | Part Number   | Supplier                               | Qty    | Approx. Cost     |
|---------------------------------------|---------------|----------------------------------------|:------:|-----------------:|
| Raspberry Pi 4 starter kit            | CAN123        | CanaKit (Amazon)                       | 1      | $134.99          |
| Capacitive Soil Moisture sensor       | EK1940        | Gikfun (Amazon)                        | 1      | $8.48            |
| Mini Diaphragm Pump                   | EK1856C       | Gikfun (Amazon)                        | 1      | $11.67           |
| ADS1115 (or ADS1015)                  | 4260474032037 | Universal Solder (Amazon)              | 1      | $7.89            |
| 1K ohm resistor                       |               | Electronics store                      | 3      | $0.30            |
| PN2222A transistor                    |               | Electronics store                      | 1      | $0.25            |
| IN4001 diode                          |               | Electronics store                      | 1      | $0.15            |
| 1P3T switch                           | SMC-549-1     | Sayal Electronics                      | 1      | $1.50            |
| 2.1mm DC power jack                   | GAK-1973E-2   | Sayal Electronics                      | 1      | $0.80            |
| 6v - 12v power supply (2.1mm plug)    |               | Electronics store                      | 1      | $9.95            |
| 50mm case fan (with screws)           | 8880205       | Princess Auto                          | 1      | $1.99            |
| 20 pin GPIO header (single row)       |               | Electronics store                      | 1      | $0.50            |
| 3 pin Molex connectors (female)       | 37-603-5      | Mode Electronics (Sayal Electronics)   | 2      | $1.00            |
| 3 pin Molex header (male)             | 37-6203-5     | Mode Electronics (Sayal Electronics)   | 2      | $1.00            |
| 22 AWG solid wire                     |               | Electronics store                      | 1 foot | $0.50            |
| 1/8" heatshrink                       |               | Electronics store                      | 1 foot | $0.40            |
| 63/37 solder (small roll)             | 4880-18G      | MG Chemicals (Sayal Electronics)       | 18g    | $3.95            |
| Cone spray nozzle (3/8" thread)       | SG-4200TIP-CSK| Valley Industries (Princess Auto)      | 1      | $6.49            |
| 1/4" barbed to 3/8" NPT fitting       | 903-41161001  | Sioux Chief (Home Depot)               | 1      | $3.25            |
| Clear vinyl tube 1/4" ID              |               | Hardware store                         | 4 feet | $2.00            |
| M5 x 0.8 x 40mm socket head screw     |               | Bolts Plus                             | 4      | $2.80            |
| M3 x 0.5 x 16mm socket head screw     |               | Bolts Plus                             | 4      | $1.60            |
| M2.5 x 0.45 x 10mm button head screw  |               | Bolts Plus                             | 4      | $1.20            |
| M3 x 0.5 nuts                         |               | Bolts Plus                             | 4      | $0.40            |
| M3 washers                            |               | Bolts Plus                             | 20     | $1.00            |
| 10mm PCB risers (with nuts)           |               | Hardware store                         | 4      | $0.80            |
| 12" x 12" x 1/8" acrylic              |               | Hardware store                         | 1      | $10.00           |

Custom Parts (to be made):

| Part                  | Source file                                                                                       | Cost   |
|-----------------------|---------------------------------------------------------------------------------------------------|-------:|
| PCB manufacturing     | [PCB file](hhttps://github.com/DBoo92/317Hardware/blob/master/electronics/SoilMoisture_Gerber.zip)| $20.00 |
| 3D printing           | [3D file](https://github.com/DBoo92/317Hardware/blob/master/mechanical/ProjectBoxMiddleRPI.stl)   | $15.00 |
| Acrylic laser cutting | [Acrylic Top](https://github.com/DBoo92/317Hardware/blob/master/mechanical/CaseTop.cdr) <br>                                             [Acrylic Bottom](https://github.com/DBoo92/317Hardware/blob/master/mechanical/CaseBottom.cdr)     | $10.00 |

>Tip: If you haven't already ordered/received the custom parts above, please find a PCB manufacturer, 3D print shop, and a laser cutting shop. Use the source files above and have these parts made before beginning your project.

Tools Needed:

| Tool                       | 
|----------------------------|
| Soldering iron             |
| Wire strippers             |
| Diagonal cutting pliers    |
| Heat gun (or blow dryer)   |
| M5 x 0.8 tap + handle      |
| Square file                |
| 4mm allen key              |
| 2.5mm allen key            |
| 1.5mm allen key            |
| Philips #2 screwdriver     |


## Time Commitment

The time required to complete this project is approximately: _______ hours

It is best to approach this project with mild/moderate experience in electronics and circuits, tools and assembly, and computers. However, my aim is to make this guide thorough enough for people of all experience levels.


## PCB/Soldering

Follow the steps below to assemble/solder your PCB.

>Hint: If you do not have prior soldering experience, I recommended reading [this](https://www.makerspaces.com/how-to-solder/) website and watching their demonstration video.

Before beginning please ensure you have an adequate workspace, the appropriate tools, and that everything is clean and tidy. The appropriate safety equipment is outlined in the website above.

### ADS1115 soldering

![ADSsolder](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/adcsolder.jpg)

Place the 10 pin header through the ADS1115 with the short side of pins going through the holes. Solder each pin as circled in red above. Allow time to cool between each solder joint.

### PCB soldering

#### 1. Vias

![PCBvias1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBvias1.jpg "Fig 5.1: Top vias solder points") ![PCBvias2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBvias2.JPG "Fig. 5.2: Bottom vias solder points")

Begin by cutting 6 short lengths of your solid core wire and stripping them completely. Place a piece of wire through one of the holes circled in red and solder one side of it. Once the solder joint has cooled, flip the PCB over and solder the other side of the same wire. Carefully cut off the excess wire on either side down at the tip of the solder joint. Repeat this process for the other 5 holes circled in red.

#### 2. DC Jack and SP3T Switch

![PCBjack1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBjack1.JPG "Fig 5.3: Top jack and switch") ![PCBjack2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBjack2.JPG "Fig 5.4: Bottom solder points")

Place the DC jack (circled in blue) into its mounting holes on the PCB. Ensure that the jack is sitting on top of the board, facing out the side, and its pins/tabs stick out the bottom. Bend the 3 tabs down towards the PCB to help hold the jack in place and to allow for a better solder connection. Solder each tab individually on the bottom of the board. Allow time to cool in between each pin (to avoid melting the plastic).

Place the SP3T switch (circled in red) into its mounting holes on the PCB. Ensure that the switch is sitting on top of the board, facing out the side, and its pins stick out the bottom. Bend the pins slightly to help hold the switch in place. Solder each pin individually on the bottom of the board (the second pin from the left will remain empty). After this is done solder just the far left hand pin from the top as well (this is the interior red circle on the first image). 

#### 3. Resistors

![PCBresist1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist1.JPG "Fig 5.5: Resistor holes") ![PCBresist2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist2.JPG "Fig 5.6: Top resistor solder points") ![PCBresist3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist3.JPG "Fig 5.7: Bottom resistor solder points")

Bend the legs on your 1k ohm resistors so each resistor aligns with a pair of holes circled in red. Place the first resistor into its mounting holes from the top of the board and bend the legs from underneath to hold it in place. Solder both the top and bottom holes (allow time to cool between solder joints to prevent overheating the resistor). Do this for the other 2 resistors.

#### 4. Diode

![PCBdiode1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBdiode1.JPG "Fig 5.8: Diode holes") ![PCBdiode2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBdiode2.JPG "Fig 5.9: Bottom diode solder points")

Bend the legs on your diode so it aligns with the pair of holes circled in red. 

>The silver line on your diode MUST face the square pad on the board (red arrow pointing to it).

Place the diode into its mounting holes from the top of the board and bend the legs from underneath to hold it in place. Solder the diode from underneath the board (allow time to cool between solder joints to prevent damaging the diode).

#### 5. Transistor

![PCBtransist1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBtransist1.JPG "Fig 5.10: Transistor holes") ![PCBtransist2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBtransist2.JPG "Fig 5.11: Bottom transistor solder points")

Place the transistor into its mounting holes from the top of the board.

>The flat side on the transistor body MUST face the flat red line in the diagram. However, if you are using a different transistor/different package please refer to its data sheet to determine its orientation (collector, base, and emitter labelled in the diagram).

Bend the pins on the transistor from underneath to help hold it in place. Solder the transistor pins from underneath the board. It is very important you allow time to cool between each solder joint as transistors are very sensistive to heat.

#### 6. Molex Connectors

![PCBmolex1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex1.JPG "Fig 5.12: Molex holes") ![PCBmolex2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex2.JPG "Fig 5.13: Bottom molex solder points") ![PCBmolex3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex3.JPG "Fig 5.14: Top molex orientation")

Place the sensor molex connector (circled in red) into its mounting holes from the top of the board.

>The plastic "tab" on the molex connector should face the flat red line in the diagram.

Bend the pins from underneath to hold it in place. Solder each pin from underneath the board.

For the motor molex connector (circled in blue), cut off or bend the far right pin flat as it will not be used (interior blue circle on the third image). Place the connector into its mounting holes from the top of the board (the direction the plastic tab faces isn't critical). Solder the two pins from underneath the board.

#### 7. ADC and Pi Headers

![PCBheader1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader1.JPG "Fig 5.15: Header holes") ![PCBheader2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader2.JPG "Fig 5.16: Bottom solder points") ![PCBheader3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader3.JPG "Fig 5.17: Top solder points")

If you haven't already, now is the time to cut your headers to size. You will need one 2 pin, one 4 pin, and one 9 pin header.

Place the 4 pin header onto the Vcc, Gnd, SDA, and SCL pins of the ADS1115. Place the 2 pin header onto the A0 and A1 pins of the ADS1115. Place the headers into their mounting holes from the top of the PCB (circled in red) and ensure that the pins stick out the bottom. Flip the PCB over so it is now resting on the ADS1115. Prop up the PCB so it is parallel and square with the ADS1115. Solder the the header pins on the bottom side of the board.

Place the 9 pin header onto your Raspberry Pi so it sits on pins 1, 3, 5, 7, 9, 11, 13, 15, and 17. Now place the entire PCB onto the 9 pin header from the bottom (the pins should stick out the top of the PCB). Prop up the PCB so it is parallel and square with the Raspberry Pi. Solder the two outermost pins from the top side of the board (this is done to secure it). Now remove the PCB from the Pi with the 9 pin header attached. Finish soldering the other 7 pins from the top side of the board.


## Mechanical Assembly

How to asseble PCB, how to assemble Pi


## Power Up

Power up/test


## Unit Testing

How


## Production Testing

How to test in production? Every unit, every 10th, random, etc


## Reproducible

Is it reproducible
