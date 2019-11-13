Capstone Project - Greenhouse Monitoring System
-----
-----
### November 12, 2019 - PCB Power Up

Today during the lab I installed my completed PCB onto the Pi and demonstrated reading sensor values to the professor.

Later that day I designed the top and bottom covers for my case. These designs were created in Corel Draw and will be laser cut out of acrylic.

Top:  
Includes intake slots for the fan.  
![coreltop](https://github.com/DBoo92/317Hardware/blob/master/mechanical/CaseBottom.pdf)

Bottom:   
Motor will be mounted to this beside the Pi.
![corelbottom](https://github.com/DBoo92/317Hardware/blob/master/mechanical/CaseTop.pdf)

-----

### November 11, 2019 - Enclosure Design

I designed the middle section of my case which will enclosed by acrylic plates on the top and bottom. This piece has been sent out for 3D printing.

View 1:  
Front cutout - Pi USB and ethernet, Side cutout  - Pi USB-C power, HDMI, and audio  
![scadfront](https://raw.githubusercontent.com/DBoo92/317Hardware/master/mechanical/ProjectBoxMiddleRPI(1).png)

View 2:   
Bottom cutout - Pi SD card access, Top cutout - access to switch and DC jack on PCB
![scadback](https://raw.githubusercontent.com/DBoo92/317Hardware/master/mechanical/ProjectBoxMiddleRPI(2).png)

-----

### November 8, 2019 - Progress Update

Over the weekend I powered up my PCB and got readings from it. I also did some finish wiring/soldering on some components.

PCB power up readings (first 2 columns):   
![pcbread](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pcbreadings.jpg)

Extend sensor wires:  
![sensextend](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/sensorextend.jpg)

Crimp/solder pins for molex connector:    
![senspins](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/sensorpins.jpg)

Soldered a pigtail onto the motor:
![motorwire](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/motorpigtail.jpg)

-----

### November 5, 2019 - PCB Soldered

Over the weekend I finished soldering my PCB, here is the result:

Top:   
![pcbtop](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pcb_top.jpg)

Bottom:  
![pcbbottom](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pcb_bottom.jpg)

I ran continuity tests on the traces, vias, and between adjacent header pins. Everything passed.
  
![pcbcont](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pcb_cont.jpg)

I tested the fit of the completed PCB onto the Pi using some small risers/washers I had on hand.

![pcbsetup](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pcb_risers.jpg)

I am currently on time with my project schedule.  
My PCB is fully soldered.  
My budget is in the same state as previous weeks (approx. $45 over due to adding ADC and Pi 4 upgrade).  
The system is coming together as planned in my project proposal (with the addition of the watering control switch).

 Next steps:  
 I will be testing the PCB with the Pi/sensor during this week to prepare for the next milestone.  
 Begin the progress report due next week.  
 We are attending the 3D printing seminar on Tuesday as a class.   
 I will begin designing the enclosure following the seminar.

-----

### October 29, 2019 - Breadboarded Milestone

As you can see from my October 14th blog entry, I previously breadboarded all the individual components (unit testing). I will reassemble the full setup (including the ADC and Pi this time) to demonstarte during Tuesday's lab.

Complete Breadboard:  
![Breadboard](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/BreadboardingComplete.jpg)

I used libraries/sample code from Adafruit to get the analog readings from the ADS1115 and display them, which can be found [here](https://github.com/DBoo92/317Hardware/blob/master/software/simpletest.py).

Initial Readings (soil sensor in far left column):  
![Readins1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/Readings.jpg)

Change in readings:  
![Readings2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/ReadingsChanged.jpg)

I am currently ahead of my project schedule.  
My breadboarding is complete and I have started soldering. My PCB should be fully soldered in the next few days.  
I am still slightly over budget due to adding the ADC and the Pi 4 upgrade. No extra costs/obstacles since the ADC though.

-----

### October 27, 2019 - Begin Soldering

I picked up my PCB at the beginning of reading week (forgot to take pictures). Here is my current progress on soldering.

ADS1115:  
![ADC](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/adcsolder.jpg)

Vias, Switch, and DC Jack:  
![PCBtop](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pcbsolder1.jpg)

![PCBbottom](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pcbsolder2.jpg)

-----

### October 22, 2019 - OS Loaded

During reading week I loaded the Raspbian Buster OS and completed the system configuration.

Powering up:  
![PiImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pipower.jpg)

OS loaded:  
![PiOS](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/pios.jpg)

-----

### October 17, 2019 - PCB Update

I moved a few components around and managed to reduce the board width to 33mm (original was 39mm). I also turned the ADS1115 around 180 degrees so I could add mounting holes for it.

I've sent this design in to the prototype lab to be made.

Updated PCB:  
![NewPCBImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/SoilMoisturePCBupdate.png)

-----

### October 15, 2019 - Breadboard and PCB Designed

This weekend I completed my designs using Fritzing. See below...

An SP3T switch is displayed as a 5 pin header (Fritzing didn't have the proper part/none to import).

Kelly recommended using an external power source for the motor (to protect the Pi). I incorporated this by adding a barrel jack for the motor which will connect to a 12v supply.

Breadboard view:
![BreadboardImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/SoilMoistureBreadboard.png)

Circuit schematic:
![SchematicImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/SoilMoistureSchematic.png)

PCB view:  
![PCBImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/SoilMoisturePCB.png)

>I had to create a separate sketch to design the PCB properly (different sketch than breadboard or schematic). Fritzing wouldn't allow me to resize the GPIO header or splice the ADC header (for wire routing). I ended up creating my own headers to make this work.

I am currently ahead of my project schedule.  
My breadboarding is almost complete and my PCB is designed.  
Adding the ADC was a small unforseen obstacle, but I was able to resolve it in a timely and cost effective manner.  
I am currently slightly over budget, approx $8 for the ADC and $35 for the Pi 4 (I considered this a necessary upgrade).  

-----

### October 14, 2019 - Breadboarding Update

Over the last few days I have been testing the individual components of my project by building circuits for them.

Testing the sensor:
![SensorTestImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/sensortest.jpg)

Readings from the sensor (using Arduino for testing):
![SensorReadingsImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/sensorreadings.jpg)

>I had to use an Arduino to test the sensor because I didn't realize the Raspberry Pi has no analog input pins. I will have to add an analog to digital converter to my circuit. I have decided to use the the ADS1115 for its low cost and ease of integration with the Pi. This has been ordered from Amazon (Universal Solder) for $5 + shipping/tax.

Testing the motor:
![MotorTestImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/motortest.jpg)

Transistor switching the motor:
![MotorCircuitImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/transistorcircuit.jpg)

Testing the water control switch:
![WaterSwitchImage](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/switchcircuit.jpg)

I decided to add in this water control switch. It will provide users with selection of 3 different watering levels depending on their plant. This was one of the features Valeria said would be nice to have.

-----

### October 8, 2019 - Show Acquisitions

![Image of parts1](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/amazon_parts.jpg)

![Image of parts2](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/sayal_parts.jpg)

>I realized it will be difficult to use these fan connectors on the PCB as they will require through hole plating. Need to exchange these for breakaway header pins.

![Image of parts3](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/princessauto_parts.jpg)

-----

### October 4, 2019 - Parts Pickup

Picked up a GPIO header, and 3 pin fan connectors (male/female) from Sayal Electronics. Picked up a spray nozzle and small fan from Princess Auto today.

My Amazon order also came in the mail today (Pi, sensor, and pump).

-----

### October 1, 2019 - Parts Ordered

The Raspberry Pi 4, capacitive soil sensor, and diaphragm pump have been ordered from Amazon:

![Image of order](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/partsorder.png)

I will be picking up some of the other components (headers, jumper connectors, spray nozzle, fittings, etc) later this week.

I have decided to choose the Raspberry Pi 4 instead of the 3 B+. Over the last week I have done some research/comparison of the two models. The Pi 4 has a noticeable edge over its predecessor in processing power, memory, GPU performance, microSD card read/write speeds, and networking speed. All of this for a modest price increase. The 4 made more sense for future proofing and long term reusability.

-----

### September 24, 2019 - Budget Due

Click to see the projected [budget](https://github.com/DBoo92/317Hardware/blob/master/documentation/budget/GreenhouseBudget.pdf)

Need to discuss with the professor today whether to use a relay, transistor, or code to turn the effector on/off.

>Kristian has suggested speaking to Kelly or Vlad regarding this.

Decided on the capacitive moisture sensor instead of resistive, due to more accurate readings and corrosion resistance. I have sourced the Gikfun EK1940 from [Amazon](https://www.amazon.ca/gp/product/B07H3P1NRM/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1).

I will also be incorporating a pump/nozzle system to spray water on the soil when moisture readings are low. I will be using the Gikgun EK1856C from [Amazon](https://www.amazon.ca/gp/product/B0744DL1S9/ref=ppx_yo_dt_b_asin_title_o00_s00?ie=UTF8&psc=1).

-----

### September 17, 2019 - Schedule Due

Here you can view the proposed [project schedule pdf](https://github.com/DBoo92/317Hardware/blob/master/documentation/schedule/Project1.pdf).

>Repository edit: Proposal and schedule files moved into nested folders inside Documentation folder.

Met with our project sponsor (Valeria) and received great feedback regarding different features we can implement/how to implement. Meeting report to follow soon.

-----

### September 10, 2019 - Proposal Due

Here you can view the submitted [project proposal pdf](https://github.com/DBoo92/317Hardware/blob/master/documentation/proposal/ProposalContentStudentNameRev03.pdf).

-----

### September 3rd, 2019 - Project Selection

Repository created at 2:42 PM.

Group has been selected. Ryan, Aiden, and Daniel for 317 Hardware and 319 Software.
Selected project is Greenhouse.
