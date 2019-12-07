# 317Hardware

## Table of Contents

- [Introduction](#introduction)
- [Bill of Materials](#bill-of-materials)
  * [Parts list:](#parts-list)
  * [Custom Parts](#custom-parts)
  * [Tools List](#tools-list)
- [Time Commitment](#time-commitment)
- [PCB/Soldering](#pcbsoldering)
  * [ADS1115 soldering](#ads1115-soldering)
  * [PCB soldering](#pcb-soldering)
  * [Motor soldering](#motor-soldering)
- [Mechanical Assembly](#mechanical-assembly)
- [Power Up](#power-up)
- [Unit Testing](#unit-testing)
- [Production Testing](#production-testing)
- [Reproducible](#reproducible)


## Introduction

Welcome to my CENG 317 hardware project page. This guide will provide you with instructions on how to build a capacitive soil moisture sensor using a Broadcom development platform.

![System diagram]()

The system will consist of the Broadcom development platform which takes readings from the various sensors and places these into the database via WiFi. If these readings are outside of certain ranges/thresholds then the platform will send a signal out to the certain effector to adjust the environment/conditions. All of this data will viewed from within our app which will connect to the database via WiFi. The app will also be able to control/turn on the various effectors.

These instructions cover the hardware aspect specifically soil moisture, while the other sensors are being covered by my group members, and the software/app is covered in a different course CENG 319 [found here]().


## Bill of Materials

### Parts List:

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

### Custom Parts:

| Part                  | Source file                                                                                       | Cost   |
|-----------------------|---------------------------------------------------------------------------------------------------|-------:|
| PCB manufacturing     | [PCB file](hhttps://github.com/DBoo92/317Hardware/blob/master/electronics/SoilMoisture_Gerber.zip)| $20.00 |
| 3D printing           | [3D file](https://github.com/DBoo92/317Hardware/blob/master/mechanical/ProjectBoxMiddleRPI.stl)   | $15.00 |
| Acrylic laser cutting | [Acrylic Top](https://github.com/DBoo92/317Hardware/blob/master/mechanical/CaseTop.cdr) <br>                                             [Acrylic Bottom](https://github.com/DBoo92/317Hardware/blob/master/mechanical/CaseBottom.cdr)     | $10.00 |

> Tip: If you haven't already ordered/received the custom parts above, please find a PCB manufacturer, 3D print shop, and a laser cutting shop. Use the source files above and have these parts made before beginning your project.

### Tools List:

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

> Hint: If you do not have prior soldering experience, I recommended reading [this](https://www.makerspaces.com/how-to-solder/) website and watching their demonstration video.

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

![PCBmolex1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex1.JPG "Fig 5.12: Molex holes") ![PCBmolex2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex2.JPG "Fig 5.13: Bottom molex solder points") ![PCBmolex3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/molexpcb.jpg "Fig 5.14: Top molex orientation")

Place the sensor molex connector (circled in red) into its mounting holes from the top of the board.

>The plastic "tab" on the molex connector should face the flat red line in the diagram.

Bend the pins from underneath to hold it in place. Solder each pin from underneath the board.

For the motor molex connector (first image circled in blue), cut off or bend flat the bottom of the pin as it will interfere with mounting (blue circle on the third image). Place the connector into its mounting holes from the top of the board (the direction the plastic tab faces isn't critical). Solder the two pins from underneath the board.

#### 7. ADC and Pi Headers

![PCBheader1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader1.JPG "Fig 5.15: Header holes") ![PCBheader2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader2.JPG "Fig 5.16: Bottom solder points") ![PCBheader3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader3.JPG "Fig 5.17: Top solder points")

If you haven't already, now is the time to cut your headers to size. You will need one 2 pin, one 4 pin, and one 9 pin header.

Place the 4 pin header onto the Vcc, Gnd, SDA, and SCL pins of the ADS1115. Place the 2 pin header onto the A0 and A1 pins of the ADS1115. Place the headers into their mounting holes from the top of the PCB (circled in red) and ensure that the pins stick out the bottom. Flip the PCB over so it is now resting on the ADS1115. Prop up the PCB so it is parallel and square with the ADS1115. Solder the the header pins on the bottom side of the board.

Place the 9 pin header onto your Raspberry Pi so it sits on pins 1, 3, 5, 7, 9, 11, 13, 15, and 17. Now place the entire PCB onto the 9 pin header from the bottom (the pins should stick out the top of the PCB). Prop up the PCB so it is parallel and square with the Raspberry Pi. Solder the two outermost pins from the top side of the board (this is done to secure it). Now remove the PCB from the Pi with the 9 pin header attached. Finish soldering the other 7 pins from the top side of the board.

### Motor soldering

![motorsolder](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/motorpigtail.jpg)

Cut two pieces of 22 AWG solid wire approximately 8" long and strip 1/4" off each end. Wrap the end of one wire onto one of the motor terminals. Solder this connection. Cut off a 2" piece of heatshrink and slide it down the wire and over the connection. Use the heat gun to heat up the tubing and shrink it. Repeat this process for the second wire and the second motor terminal.

![motorwires](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/motorpins.jpg) ![motormolex](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/molex3pin.jpg)

Using the wire strippers crimp a molex pin on the open end of each motor wire (shown in the first image). Apply a small amount of solder to the crimp connection to strengthen it. Once the solder has cooled, insert the pins into holes 1 and 2 as labelled in the second picture (doesn't matter which pin goes in which hole).

### Sensor soldering

![sensorwires](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/sensorpins.jpg) ![sensormolex](ttps://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/molex3pin.jpg)

Cut the stock connector off the soil sensor using the diagonal cutters. Make your cut close to the existing connector so the wires stay long. Strip about 1/4" off the end of each wire. Crimp a molex pin on the open end of each wire (shown in first image) using the wire strippers. Apply a small amount of solder to the crimp connection to strengthen it. Once the solder has cooled, insert the Vcc pin into hole 1, Aout pin into hole 2, and Gnd pin into hole 3 (as labelled in the second picture).

> Make sure the pins go into the appropriate connector hole otherwise you could damage the sensor/circuit.


## Mechanical Assembly

![ADSrisers](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/adsrisers.jpg)

Start by inserting a 10mm riser in each mounting hole of the ADS1115 with a 3mm washer underneath it (as shown in the picture). Fasten them by threading a nut on the end of the riser and tightening it. Then from the bottom side of the PCB thread a screw into the riser through the 2 mounting holes and tighten them. Careful not to overtighten anything as the risers are only plastic.

![PCBrisers](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/pcbrisers.JPG)

Next insert a 10mm riser into each outer mounting hole on the PCB with a 3mm washer underneath it (as shown in the picture). Fastern them by threading aa nut onto the end of the riser and tightening it. Careful not to overtighten as the risers are only plastic.

Now that the ADC is mounted to the PCB and the PCB has its own risers; you are ready to install it onto the Raspberry Pi. Place the PCB onto the Raspberry Pi by lining up the 9 pin header with pins 1, 3, 5, 7, 9, 11, 13, 15, and 17. Press straight down gently on the header to fully seat the PCB onto the Pi.

![acrylicthreads](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/acrylicthreads.JPG)

Before mounting anything to the bottom layer of acrylic, use the M5 x 0.8 tap + handle to tap/thread these 4 holes (outlined in red). 

> Hint: If you haven't used a tap before, follow the instructions on [this](https://disher.com/2016/11/08/whats-tap-hand-taps-beginners/) website.

![Piscrews](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/piscrews.JPG) ![Piwashers](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/piwashers.JPG) ![Pinuts](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/pinuts.JPG)

Place a M2.5 x 10mm screw through each of the Pi mounting holes in the acrylic (first image circled in red). Place the acrylic bottom down with the bolt heads against the table (this will hold them in place). Place three 3mm washers onto each bolt on top of the acrylic (similar to the second image). Then line up the Pi over the bolts and lower it on to them (audio/video ports should face outside edge). Thread a nut onto the two bolts closest to the ethernet/USB ports and tighten them (third image). Carefully prop the unit up on its side, ensuring the outer 2 mounting bolts stay in their holes (as they are threaded in yet). Use the 1.5mm allen key to tighten up the outer 2 mounting bolts from underneath the acrylic (don't overtighten as they are threading into the plastic risers).

![motorscrews](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/motorscrews.JPG) ![motornuts](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/motornuts.JPG)

Install the included rubber mounts onto the motor body. Place the motor onto the acrylic base. Insert a M3 x 0.5 x 16mm screw with a 3mm washer into each mounting hole (as circled in red). Then thread a nut onto the bottom of each screw from underneath. Hold the nut with you fingers while using the 2.5mm allen key to tighten them. The motor mounts are only rubber so do not overtighten/compress the rubber.

![fanscrews](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/fanscrews.JPG)

Line up the fan with the acrylic top cover with the "cage" part of the fan facing down (this will ensure air is pulled in). Then use the Philips #2 screwdriver thread the fan screws into the fan. Snug the screws down but do not overtighten as the acrylic will crack.

![caselayers](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/caselayers.jpg) ![PCBnotch](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/pcbnotch.JPG) ![casebolts](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/casebolts.jpg)

Assemble the case by fitting the 3D printed middle section (first image blue arrow) onto the acrylic base. Then plug the fan connector into the 5v and Ground on the Pi header where the notch was cut earlier (second image). Now place the acrylic top on top of th 3D printed middle section (first image red arrow). Finally, insert the four M5 x 0.8 x 40mm bolts through all three layers and begin threading into the bottom layer (third image in red). Tighten these bolts with the 4mm allen key (careful not to overtighten).

![connectors](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/connectors.JPG)

Now that the case is complete we can add the sensor and effector. Plug the 3 pin soil sensor into the center connector on the PCB (circled in red). Then plug the motor connector into the remaining connector on the PCB (circled in blue).

We are now ready to test and then power up.


## Power Up

Power up/test


## Unit Testing

How


## Production Testing

How to test in production? Every unit, every 10th, random, etc


## Reproducible

Is it reproducible
