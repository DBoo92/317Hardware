Capstone Project - Greenhouse Monitoring System
-----
-----
### October 15, 2019 - Breadboard and PCB Designed



-----

### October 14, 2019 - Breadboarding Update

Over the last week I have been testing the individual components of my project by building circuits for them.

Testing the sensor:
![Image](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/sensortest.jpg)

Readings from the sensor (using Arduino for testing):
![Image](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/sensorreadings.jpg)

>I had to use an Arduino to test the sensor because I didn't realize the Raspberry Pi has no analog input pins. I will have to add an analog to digital converter to my circuit. I have decided to use the the ADS1115 for its relatively low cost and ease of integration with the Pi. This has been ordered from Amazon for $13.79.

Testing the motor:
![Image](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/motortest.jpg)

Transistor switching the motor:
![Image](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/transistorcircuit.jpg)

Testing the water control switch:
![Image](https://raw.githubusercontent.com/DBoo92/317Hardware/master/images/switchcircuit.jpg)

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
