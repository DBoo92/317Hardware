# 317Hardware


## Table of Contents

- [Introduction](#introduction)
- [Bill of Materials](#bill-of-materials)
  * [Parts list](#parts-list)
  * [Custom Parts](#custom-parts)
  * [Tools List](#tools-list)
- [Time Commitment](#time-commitment)
- [PCB/Soldering](#pcbsoldering)
  * [ADS1115 soldering](#ads1115-soldering)
  * [PCB soldering](#pcb-soldering)
  * [Motor soldering](#motor-soldering)
  * [Sensor soldering](#sensor-soldering)
- [Mechanical Assembly](#mechanical-assembly)
  * [ADS1115 risers](#ads1115-risers)
  * [PCB risers](#pcb-risers)
  * [Thread acrylic](#thread-acrylic)
  * [Mount Pi](#mount-pi)
  * [Mount motor](#mount-motor)
  * [Install case fan](#install-case-fan)
  * [Assemble case](#assemble-case)
  * [Plug in connectors](#plug-in-connectors)
  * [Water lines](#water-lines)
  * [Spray nozzle](#spray-nozzle)
- [Power Up](#power-up)
  * [Load OS](#load-os)
  * [Import libraries](#import-libraries)
- [Unit Testing](#unit-testing)
  * [Sensor test](#sensor-test)
  * [Water switch test](#water-switch-test)
  * [Motor test](#motor-test)
  * [Full system test](#full-system-test)
- [Production Testing](#production-testing)
- [Conclusion](#conclusion)



## Introduction

Welcome to my CENG 317 hardware project page. The aim of this project is to create a system for monitoring greenhouse conditions using a Broadcom development platform and various sensors/effectors. Here is a diagram of the proposed systemm:

![Systemdiagram](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/intro/systemdia.png)

The system consists of a Raspberry Pi which takes readings from various sensors and places them into a Firebase database via WiFi. If these readings are outside of certain ranges/thresholds the device will activate a certain effector to adjust the environment/conditions. All of this data will be viewable from within our app which will connect to the database via WiFi. The app will also be able to control/turn on the various effectors through Bluetooth.

The BME 680 and PT100 sensors are being covered by my group members, Ryan and Aiden respectively.The app is covered in a different course, CENG 319 - [GreenSense App](https://github.com/Aidenbolos/Green-Sense). These build instructions will focus solely on the capacitive soil moisture platform (seen in the system diagram above and the diagram below).

![soilmoisture](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/intro/caseabove.jpg)

This project features a capacitive soil moisture sensor for monitoring soil conditions, a pump/irrigation system for watering the plant/soil, and a watering level switch for selecting the amount of water to be dispersed to the plant. 



## Bill of Materials

### Parts List:

| Part/Material                         | Part Number   | Supplier                               | Qty    | Approx. Cost     |
|---------------------------------------|---------------|----------------------------------------|:------:|-----------------:|
| Raspberry Pi 4 starter kit <br>                                                                                       (includes power supply, HMDI, <br>                                                                                                                  SD card, and card reader)               | 99467         | CanaKit (Amazon)                       | 1      | $134.99          |
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
| 22 AWG solid wire                     |               | Electronics store                      | 1 ft   | $0.50            |
| 1/8" heatshrink                       |               | Electronics store                      | 1 ft   | $0.40            |
| 63/37 solder (small roll)             | 4880-18G      | MG Chemicals (Sayal Electronics)       | 18g    | $3.95            |
| Cone spray nozzle (3/8" thread)       | SG-4200TIP-CSK| Valley Industries (Princess Auto)      | 1      | $6.49            |
| 1/4" barbed to 3/8" NPT fitting       | 903-41161001  | Sioux Chief (Home Depot)               | 1      | $3.25            |
| Clear vinyl tube 1/4" ID              |               | Hardware store                         | 4 ft   | $2.00            |
| M5 x 0.8 x 40mm socket head screw     |               | Bolts Plus                             | 4      | $2.80            |
| M3 x 0.5 x 16mm socket head screw     |               | Bolts Plus                             | 4      | $1.60            |
| M2.5 x 0.45 x 10mm button head screw  |               | Bolts Plus                             | 4      | $1.20            |
| M3 x 0.5 nuts                         |               | Bolts Plus                             | 4      | $0.40            |
| M2.5 x 0.45 nuts                      |               | Bolts Plus                             | 2      | $0.10            |
| M3 washers                            |               | Bolts Plus                             | 20     | $1.00            |
| 10mm PCB risers (with nuts/screws)    |               | Hardware store                         | 4      | $0.80            |
| 12" x 12" x 1/8" acrylic              |               | Hardware store                         | 1      | $10.00           |

### Custom Parts:

| Part                  | Source file                                                                                       | Approx. Cost   |
|-----------------------|---------------------------------------------------------------------------------------------------|-------:|
| PCB manufacturing     | [PCB gerber files](https://github.com/DBoo92/317Hardware/blob/master/electronics/SoilMoisture_Gerber.zip) | $20.00 |
| 3D printing           | [3D .stl file](https://github.com/DBoo92/317Hardware/blob/master/mechanical/ProjectBoxMiddleRPI.stl)| $15.00 |
| Acrylic laser cutting | [Acrylic Top cut file](https://github.com/DBoo92/317Hardware/blob/master/mechanical/CaseTop.cdr) <br>                                             [Acrylic Bottom cut file](https://github.com/DBoo92/317Hardware/blob/master/mechanical/CaseBottom.cdr)                               | $10.00 |

> Tip 1: If you haven't already ordered/received the custom parts above, please find a PCB manufacturer, 3D print shop, and a laser cutting shop. Use the source files above and have these parts made before beginning your project.

### Tools List:

| Tool                       | 
|----------------------------|
| HDMI monitor/TV            |
| USB mouse and keyboard     |
| Soldering iron             |
| Wire strippers             |
| Diagonal cutting pliers    |
| Heat gun (or blow dryer)   |
| Digital Multimeter         |
| M5 x 0.8 tap + handle      |
| Small square file          |
| 4mm allen key              |
| 2.5mm allen key            |
| 1.5mm allen key            |
| Philips #2 screwdriver     |
| X-Acto knife               |



## Time Commitment

Time required to complete this project is approximately: **15 - 18 hours** (continuous work), or 2 work days.

It is best to approach this project with mild/moderate experience in electronics and circuits, tools and assembly, and computers. However, my aim is to make this guide thorough enough for people of all experience levels.



## PCB/Soldering

Follow the steps below to assemble/solder your PCB.

> Hint: If you do not have prior soldering experience, I recommended reading [this](https://www.makerspaces.com/how-to-solder/) website and watching their demonstration video.

Before beginning please ensure you have an adequate workspace, the appropriate tools, and that everything is clean and tidy. The appropriate safety equipment is outlined in the website above.

### ADS1115 soldering

![ADSsolder](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/adcsolder.jpg "Fig 4.1: ADS1115 solder points")

Place the 10 pin header through the ADS1115 with the short side of pins going through the holes. Ensure that the pins are at a 90 degree angle with the circuit coard. Solder each pin as circled in red above. Allow time to cool between each solder joint.

### PCB soldering

#### 1. Vias

![PCBvias1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBvias1.jpg "Fig 4.2: Via solder points (top)") ![PCBvias2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBvias2.JPG "Fig. 4.3: Via solder points (bottom)")

Begin by cutting six 2" lengths of your solid core wire and stripping them completely. Place a piece of wire through one of the holes circled in red and solder one side of it. Once the solder joint has cooled, flip the PCB over and solder the other side of the same wire. Using the diagonal cutters, carefully cut off the excess wire on either side down at the tip of the solder joint. Repeat this process for the other 5 holes circled in red.

#### 2. DC Jack and 1P3T Switch

![PCBjack1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBjack1.JPG "Fig 4.4: Jack and switch placement") ![PCBjack2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBjack2.JPG "Fig 4.5: Jack and switch solder points")

Place the DC jack (first image circled in blue) into its mounting holes on the PCB. Ensure that the jack is sitting on top of the board, facing out the side, and its pins/tabs stick out the bottom. Bend the 3 tabs down towards the PCB to help hold the jack in place and to allow for a better solder connection. Solder each tab individually on the bottom of the board (second image circled in clue). Allow time to cool in between each pin (to avoid melting the plastic).

Place the 1P3T switch (first image circled in red) into its mounting holes on the PCB. Ensure that the switch is sitting on top of the board, facing out the side, and its pins stick out the bottom. Bend the pins slightly to help hold the switch in place. Solder each pin individually on the bottom of the board (second image circled in red). After this is done solder just the far left hand pin from the top as well (first image interior red circle). One hole will remain empty as seen in the second image.

#### 3. Resistors

![PCBresist1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist1.JPG "Fig 4.6: Resistor holes") ![PCBresist2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist2.JPG "Fig 4.7: Resistor solder points (top)") ![PCBresist3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBresist3.JPG "Fig 4.8: Resistor solder points (bottom)")

Bend the legs on your 1k ohm resistors so each resistor aligns with a pair of holes (first image circled in red). Place the first resistor into its mounting holes from the top of the board and bend the legs from underneath to hold it in place. Solder both the top and bottom holes (second and third image circled in red). Allow time to cool between solder joints to prevent overheating the resistor. Do this for the other 2 resistors.

#### 4. Diode

![PCBdiode1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBdiode1.JPG "Fig 4.9: Diode holes") ![PCBdiode2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBdiode2.JPG "Fig 4.10: Diode solder points (bottom)")

Bend the legs on your diode so it aligns with its pair of holes (first image circled in red). 

> Tip 2: The silver line on your diode MUST face the square pad on the board (red arrow pointing to it).

Place the diode into its mounting holes from the top of the board and bend the legs from underneath to hold it in place. Solder the diode from underneath the board. Allow time to cool between solder joints to prevent damaging the diode.

#### 5. Transistor

![PCBtransist1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBtransist1.JPG "Fig 4.11: Transistor holes") ![PCBtransist2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBtransist2.JPG "Fig 4.12: Transistor solder points (bottom)")

Place the transistor into its mounting holes from the top of the board (first image circled in red).

> Tip 3: The flat side on the transistor body MUST face the flat red line in the diagram. However, if you are using a different transistor/package please refer to its data sheet to determine its orientation (collector, base, and emitter are labelled in the diagram).

Bend the pins on the transistor from underneath to help hold it in place. Solder the transistor pins from underneath the board (second image circled in red). It is very important you allow time to cool between each solder joint as transistors are very sensistive to heat.

#### 6. Molex Connectors

![PCBmolex1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex1.JPG "Fig 4.13: Molex holes") ![PCBmolex2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBmolex2.JPG "Fig 4.14: Molex solder points (bottom)") ![PCBmolex3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/molexpcb.jpg "Fig 4.15: Unused molex pin")

Place the soil sensor molex connector (circled in red) into its mounting holes from the top of the board.

> Tip 4: The plastic "tab" on the molex connector should face the flat red line in the diagram.

Bend the pins from underneath to hold it in place. Solder each pin from underneath the board (second image circled in red).

For the motor molex connector, cut off or bend flat the bottom pin (third image circled in blue) as it will interfere with mounting and is unused. Place the connector into its mounting holes from the top of the board (first image circled in blue). Solder the two pins from underneath the board (second image circled in blue).

#### 7. ADC and Pi Headers

![PCBheader1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader1.JPG "Fig 4.16: Header holes") ![PCBheader2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader2.JPG "Fig 4.17: Header solder points (bottom)") ![PCBheader3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/PCBheader3.JPG "Fig 4.18: Header solder points (top)")

If you haven't already, now is the time to cut your headers to size. You will need one 2 pin, one 4 pin, and one 9 pin header. Carefully use the X-Acto knife to cut your headers to the desired size.

Push the 4 pin header onto the Vcc, Gnd, SDA, and SCL pins of the ADS1115. Push the 2 pin header onto the A0 and A1 pins of the ADS1115. Place the headers into their mounting holes from the top of the PCB (first image circled in red) and ensure that the pins stick out the bottom. Flip the PCB over so it is now resting on the ADS1115. Prop up the PCB so it is parallel and square with the ADS1115. Solder the the header pins on the bottom side of the board (second image circled in red).

Push the 9 pin header onto your Raspberry Pi so it sits on pins 1, 3, 5, 7, 9, 11, 13, 15, and 17. Now place the entire PCB (bottom down) onto the 9 pin header (the pins should stick out the top of the PCB - first image circled in blue). Prop up the PCB so it is parallel and square with the Raspberry Pi. Solder the two outermost pins from the top side of the board (third image circled in blue). Now remove the PCB from the Pi with the 9 pin header attached. Finish soldering the other 7 pins from the top side of the board.

#### 8. PCB notch

![PCBnotch](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/pcbnotch.JPG "Fig 5.11: Notch for fan power")

Use the small square file to cut a notch in the PCB beside the first 3 header pins. Copy the notch in the image above. This will allow us access to the Pi's 5v and Gnd to plug in the case fan.

Now that you have completed the PCB, it is advised to run a couple quick tests:

> Test 1: It is recommended to do continuity tests on side-by-side solder joints or any connections that look close to each other/touching. This is a precaution to help ensure there are no shorts between solder joints.

> Test 2: Use a jumper wire to connect Vcc and Gnd together on the PCB sensor circuit (connect the pins in the header). Then, using a DMM set to ohms, measure resistance between Gnd and A0 on your ADC. You should see a reading between a few hundred thousand ohms and a few million ohms. If you see this reading it indicates your sensor circuit is wired correctly.

### Motor soldering

![motorsolder](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/motorpigtail.jpg "Fig 4.19: Motor terminal wires")

Cut two pieces of 22 AWG solid wire approximately 8" long and strip 1/4" off each end. Wrap the end of one wire onto one of the motor terminals. Solder this connection. Cut off a 2" piece of heatshrink and slide it down the wire and over the connection. Use the heat gun to heat up the tubing and shrink it. Repeat this process for the second wire and the second motor terminal.

![motorwires](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/motorpins.jpg "Fig 4.20: Motor wires molex pins") ![motormolex](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/molex3pin.jpg "Fig 4.21: Molex pin numbers")

Using the wire strippers crimp a molex pin onto the open end of each motor wire (shown in the first image). Apply a small amount of solder to the crimp connection to strengthen it. Once the solder has cooled, insert the pins into holes 1 and 2 as labelled in the second picture (doesn't matter which pin goes in which hole).

### Sensor soldering

![sensorwires](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/sensorpins.jpg "Fig 4.22: Soil sensor molex pins") ![sensormolex](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/molex3pin.jpg "Fig 4.23: Molex pin numbers")

Cut the stock connector off the soil sensor using the diagonal cutters. Make your cut close to the existing connector so the wires stay long. Strip about 1/4" off the end of each wire. Crimp a molex pin on the open end of each wire (shown in first image) using the wire strippers. Apply a small amount of solder to the crimp connection to strengthen it. Once the solder has cooled, insert the Aout pin into hole 1, Vcc pin into hole 2, and Gnd pin into hole 3 (as labelled in the second picture).

> Tip 5: Make sure the pins go into the appropriate connector hole otherwise it may damage the sensor/circuit.

You are now ready for mechanical assembly.



## Mechanical Assembly

### ADS1115 risers

![ADSrisers](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/adsrisers.jpg "Fig 5.1: ADS1115 risers")

Start by inserting a 10mm riser in each mounting hole of the ADS1115 with a 3mm washer underneath it (as shown in the picture). Fasten them by threading a nut on the end of the riser and tightening it. Then from the bottom side of the PCB thread a screw into the riser through the 2 mounting holes and tighten them. Careful not to overtighten anything as the risers are only plastic.

### PCB risers

![PCBrisers](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/pcbrisers.JPG "Fig 5.2: PCB risers")

Next insert a 10mm riser into each outer mounting hole on the PCB with a 3mm washer underneath it (as shown in the picture). Fastern them by threading a nut onto the end of the riser and tightening it. Careful not to overtighten as the risers are only plastic.

Now that the ADC is mounted to the PCB and the PCB has its own risers; you are ready to install it onto the Raspberry Pi. Place the PCB onto the Raspberry Pi by lining up the 9 pin header with pins 1, 3, 5, 7, 9, 11, 13, 15, and 17 on the Pi. Press straight down gently on the header to fully seat the PCB onto the Pi.

### Thread acrylic

![acrylicthreads](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/acrylicthreads.JPG "Fig 5.3: Acrylic holes to tap")

Before mounting anything to the bottom layer of acrylic, use the M5 x 0.8 tap + handle to tap/thread these 4 holes (outlined in red). 

> Hint: If you haven't used a tap before, follow the instructions on [this](https://disher.com/2016/11/08/whats-tap-hand-taps-beginners/) website.

### Mount Pi

![Piscrews](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/piscrews.JPG "Fig 5.4: Pi mounting screws") ![Piwashers](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/piwashers.JPG "Fig 5.5: Pi spacers/washers") ![Pinuts](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/pinuts.JPG "Fig 5.6: Pi mounting nuts")

Place an M2.5 x 10mm screw through each of the Pi mounting holes in the acrylic (first image circled in red). Lie the acrylic bottom down with the bolt heads against the table (the bolt threads should be facing upward). Place three 3mm washers onto each bolt on top of the acrylic (similar to the second image). Then line up the Pi over the bolts and lower it on to them (audio/video ports should face outside edge). Thread a M2.5 nut onto the two bolts closest to the ethernet/USB ports and tighten them (third image). Carefully prop the unit up on its side, ensuring the other 2 mounting bolts stay in their holes (as they are not threaded in yet). Use the 1.5mm allen key to tighten up the other 2 mounting bolts from underneath the acrylic (don't overtighten as they are threading into the plastic risers).

### Mount motor

![motorscrews](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/motorscrews.JPG "Fig 5.7: Motor mounting screws") ![motornuts](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/motornuts.JPG "Fig 5.8: Motor mounting nuts")

Install the included rubber mounts onto the motor body. Place the motor onto the acrylic base. Insert a M3 x 0.5 x 16mm screw with a 3mm washer into each mounting hole (first image circled in red). Then thread a nut onto the bottom of each screw from underneath (second image circled in red). Hold the nut with you fingers while using the 2.5mm allen key to tighten them. The motor mounts are only rubber so do not overtighten/compress the rubber.

### Install case fan

![fanscrews](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/fanscrews.JPG "Fig 5.9: Case fan screws")

Place the fan against acrylic top cover with the "cage" part of the fan facing down (this will ensure air is pulled in). Then use the Philips #2 screwdriver thread the fan screws into the fan (circled in red). Lightly tighten the screws but do not overtighten as the acrylic may crack.

### Assemble case

![caselayers](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/caselayers.jpg "Fig 5.10: Layers of the case") ![PCBnotch](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/pcb/pcbnotch.JPG "Fig 5.11: Notch for fan power") ![casebolts](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/casebolts.jpg "Fig 5.12: Case fastening bolts")

Assemble the case by fitting the 3D printed middle section (first image red arrow) over the Pi and onto the acrylic base. Then plug the fan connector into 5v and Ground on the Pi header (where the notch was cut earlier - second image circled in red). Now place the acrylic top (first image blue arrow) onto the 3D printed middle section. Finally, insert the four M5 x 0.8 x 40mm bolts through all three layers and thread them into the bottom layer (third image circled in red). Tighten these bolts with the 4mm allen key (careful not to overtighten).

### Plug in connectors

![connectors](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/connectors.JPG "Fig 5.13: Molex plug in location")

Now that the case is assembled we can add the sensor and effector. Plug the 3 pin soil sensor into the center connector on the PCB (circled in red). Then plug the motor connector into the remaining connector on the PCB (circled in blue).

### Water lines

![waterlines](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/waterlines.jpg "Fig 5.14: Water line attachment")

Using the diagonal cutters, cut the clear vinyl tubing into 2 equal length pieces (around 2 ft each). Push the end of a tube onto each water pump barb as shown in the image above.

### Spray nozzle

![waternozzle](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/mechanical/waternozzle.jpg "Fig 5.15: Spray nozzle setup")

Thread the 1/4" barb to 3/8" NPT brass fitting into the spray nozzle threads. Tighten these together firmly to prevent leaks. See above image for reference.

Look on the face of the water pump (where the tubes connect) and note which tube is labelled "IN" and which is "OUT". Then push the barbed end of the nozzle into the open end of the "OUT" tube (as shown in the image above).

You are now ready to power up.



## Power Up

> Tip 6: If you haven't already, please complete the 2 tests listed at the bottom of the PCB soldering section. These will help ensure that no damage is done to your Pi during initial power up.

### Load OS

1. Unfortunately the OS file is too large to post on Github. However, the link below will take you to the Raspberry Pi download page where you can get it. There you can download the OS as either a torrent or a zip file. For this project it is recommended to download the full "Raspbian Buster with desktop and recommended software". You will need at least an 8GB SD card for this.

[Download Raspbian OS](https://www.raspberrypi.org/downloads/raspbian/)

2. Once downloaded, follow the link below for instructions on flashing the OS onto your SD card.

[Install Raspbian OS](https://www.raspberrypi.org/documentation/installation/installing-images/README.md)

3. Finally, follow the link below for help with the intital power up/configuration setup:

[Configure Raspbian](https://projects.raspberrypi.org/en/projects/raspberry-pi-setting-up/4)

4. The Pi starter kit comes with an HDMI cable, so for your initial tests you will be connecting it to an HDMI monitor. However, in the future you are recommended to download VNC Viewer to connect remotely via WiFi or ethernet.

[Download VNC Viewer](https://www.realvnc.com/en/connect/download/viewer/)

5. Use the guide below to help you setup/use VNC Viewer and connect to your Pi.

[Setup VNC Viewer](https://magpi.raspberrypi.org/articles/vnc-raspberry-pi)

### Import libraries

Now that the Pi is setup and running you will need to import this library to access the readings from the ADS1115.

Open the terminal and run the following commands one at a time. You may see some text appear between each command, allow it to finish before inputting the next command.

```sh
sudo apt-get update
sudo apt-get install build-essential python-dev python-smbus git
cd ~
git clone https://github.com/adafruit/Adafruit_Python_ADS1x15.git
cd Adafruit_Python_ADS1x15
sudo python setup.py install
```

You now have the necessary libraries and some sample code to work with.



## Unit Testing

I suggest testing the sensor and watering level switch first without the motor functionality. This way it is easier to troubleshoot if you run into problems.

### Sensor test

Now that everything is assembled and the software is installed you are ready to test the sensor. The sensor should be connected to the PCB at this point and you should have a glass of water nearby to simulate soil moisture.

Power up your Pi and open a terminal session. Enter the following command to navigate to the Adafruit example code you downloaded earlier:

```sh
cd ~/Adafruit_Python_ADS1x15/examples
```

Now that you are in the examples folder, run this command:

```sh
nano simpletest.py
```

> Tip 7: Use CTRL-c to stop the program when you are done.

The program should start up in the terminal. You will see the readings of the 4 ADS1115 channels displayed in a table. See the picture below as an example:

![readings](https://raw.githubusercontent.com/DBoo92/317Hardware/master/readme_images/intro/readings.jpg "Fig 7.1: Test readings")

The soil sensor values are shown in the first column. In dry air the sensor should read around 24,000. Test the senor by placing it into the glass of water. You should see these readings drop down below 15,000. Repeat this a few times to ensure things are working well.

### Water switch test

The watering level switch values are shown in the second column. Test the switch by flipping it between its 3 positions. You should see the readings change between low (under 1000), medium (around 15000), and high (over 24000). Again, repeat this a few times for verification. You may stop the program now.

Once you have confirmed that these two are working correctly you may now test the motor.

### Motor test

The motor should be connected to the PCB and the water hoses connected to the motor. Plug the 6 - 12v power supply into the wall and plug the 2.1mm plug into the DC jack on the PCB. Place the "IN" hose into a cup of water and the "OUT" hose into an empty cup. Unscrew and remove the top cover from the project case and disconnect the fan for now. Using a wire with alligator clips on either end, clip one end to the Pi 5v output (where the fan was connected). Clip the other end onto the middle leg (Base) of the transistor (careful not to touch the other legs). The motor/pump should now turn on. Check to make sure the pump is working correctly and you are getting a steady mist/stream out of the spray nozzle. Once you are done - remove the alligator clips, replace the fan connector, and reinstall the top cover.

If all three components are working correctly you are ready to proceed to the full system test.

### Full system test

Now you are ready to test the complete system. Ensure that the sensor and motor are connected to the PCB, and the water hoses are connected to the motor. Plug the 6 - 12v power supply into the wall and insert the 2.1mm plug into the DC jack on the PCB. Go outside and fill a pot/cup with soil. Place the soil sensor into the soil (not past the warning line), point the sprayer nozzle toward the soil (but away from the sensor), and put the "IN" hose in a bottle of water.

Open the Pi's web browser and download the modified program from here - [readingsupdated.py](https://github.com/DBoo92/317Hardware/blob/master/software/readingsupdated.py). Make sure you save it into the downloads folder.

Open a terminal session. Then move the downloaded file to the Adafruit examples folder (for the convenience of keeping your code in the same folder) using this command:

```sh
cp ~/Downloads/readingsupdated.py ~/Adafruit_Python_ADS1x15/examples
```

Use this command again to navigate to the example code folder:

```sh
cd ~/Adafruit_Python_ADS1x15/examples
```

And use this command to run the new program:

```sh
nano readingsupdated.py
```

Remember that the sensor is in the (hopefully) moist soil, so the water should not turn on. If the water does turn on initially, it just means the soil readings are dry. If the water doesn't turn on, you may wait for the moisture levels to drop to turn the pump on (which will take a while). Or you can test the pump by simply removing the sensor from the soil. This will expose the sensor to dry air, which should then trigger the pump to turn on. See the video below as an example:

Fully functioning system:
[![ReadingsVideo](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pi%20%26%20readings/vidscreenshot.png)](https://youtu.be/7LPlyvlskEI "CENG 317 soil readings")

Also, test out the different positions on the watering level switch. The different positions should change how long the pump stays on for. This directly affects how much water the plant gets.

Test these variations out a few times to ensure everything is working. You can even leave it running for a few hours and monitor it. As long as both channels are reading fine and the water system turns on when the threshold is crossed, all is well. 

**If you've ran all these tests and everything is working as described - then congratulations! You have succesfully completed the soil moisture sensor project!**



## Production Testing

There are a couple steps to my production testing methods.

1. Bench test jig - run on every PCB

This consists of a test jig to test the PCB for resistance. The PCB gets plugged into a jig which has a built in jumper between the Vcc and Gnd on the soil sensor circuit. A soil sensor (taken from the line) and plugged into its header on the PCB. Then using a DMM on the test bench, check resistance between Gnd and A0. This value should read between a few hundred thousand ohms to a few million ohms on success.

The jig would also feature a 12v 2.1mm plug to insert into the DC jack. The jig will apply voltage to the transistor "Base" header pin to turn it on. Using the DMM, voltage would be checked across the motor header pins on the PCB. This value would read approx. 12v on success. We use a 12v power supply to see if the motor/circuit can withstand its rated voltage.

This process would end with a visual check of all components on the PCB, all solder joints, and the soil sensor. If it passes these tests, the soil sensor and the PCB are kept as a pair and returned to production for packaging. If not, we would try another soil sensor to see if the problem was the sensor or the PCB. If it still fails, then they are used to investigate where the failure occured and why.

This gives us good quality control and eliminates a lot of issues from getting out the door.

Once this bench test returns a reasonable success rate, we could cut back to testing every 5th PCB on the line.

2. Full test jig - every 20th PCB

This consists of a complete test jig - Raspberry Pi with pre-installed OS and needed programs, water lines + sprayer, and 12v power supply with 2.1mm plug. We would install the PCB onto the Pi, then we would take an ADS1115, soil sensor, and motor from the production line and connect them. Then all other peripherals would be connected (but no fastening things together). The full readingsupdated.py program would be run to see if the system functions as it should (as outlined in "Full system test" above). We use a 12v power supply to see if the motor/circuit can withstand its rated voltage. We would test the extremes of dry air vs. moisture to see the sensor's range.

This process would end with a visual check of all components on the PCB, all solder joints, the ADS1115, the soil sensor, and the motor. If it passes these tests, the soil sensor, motor, ADS1115, and the PCB are kept as a unit and returned to production for packaging. If not, we would try to narrow down the problem to the PCB, ADS1115, soil sensor, or the motor by switching them out for others. If it still fails, then they are used for futher investigation into where the failure occured and why.

This enables us to test the entire system and ensure that all features are functioning consistently. However this process is somewhat labour intense, which is why it is only done to every 20th unit.

This gives us fairly good quality control, while also balancing cost and not testing units so frequently.



## Conclusion

Thank you for taking the time to read and review my project. I hope it was informative and helpful for you. Please feel free to try it out yourself.


