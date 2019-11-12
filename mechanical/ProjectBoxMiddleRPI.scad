$fn=64;
difference(){
    //main cube
    {
        xdim2 = 103;
        ydim2 = 74;
        zdim2 = 32;
        translate([-xdim2/2, -ydim2/2, -zdim2])
        {
            cube([xdim2,ydim2,zdim2]);
        }
    }
    
    xdim1 = 87;
    ydim1 = 58;
    zdim1 = 32;
    //center cut out
    translate([-xdim1/2, -ydim1/2, -zdim1])
    {
        cube([xdim1,ydim1,zdim1]);
    }
    //long side 1 indent
    translate([-xdim1/2, -37, -zdim1])
    {
        cube([xdim1,4,zdim1]);
    }
    //long side 2 indent
    translate([-xdim1/2, 33, -zdim1])
    {
        cube([xdim1,4,zdim1]);
    }
    //short side 1 indent
    translate([-51.5, -ydim1/2, -zdim1])
    {
        cube([4,ydim1,zdim1]);
    }
    //short side 2 indent
    translate([47.5, -ydim1/2, -zdim1])
    {
        cube([4,ydim1,zdim1]);
    }
    //cutout for usb and eth
    translate([43.5, -ydim1/2, -zdim1])
    {
        cube([4,ydim1,21]);
    }
    //cutout for sd card
    translate([-47.5, -9, -zdim1])
    {
        cube([4,18,5]);
    }
    //cutout for switch
    translate([-47.5, -24, -17])
    {
        cube([4,30,14]);
    }
    //cutout for video/audio
    translate([-38, -33, -zdim1])
    {
        cube([55,4,10.5]);
    }
    
    radius = 2.6;
    //hole in Q4
    translate([-47.5,33,-zdim1])
    {
        cylinder (zdim1,radius,radius);
    }
    //hole in Q3
    translate([-47.5,-33,-zdim1])
    {
        cylinder (zdim1,radius,radius);
    }
    //hole in Q2
    translate([47.5,-33,-zdim1])
    {
        cylinder (zdim1,radius,radius);
    }
    //hole in Q1
    translate([47.5,33,-zdim1])
    {
        cylinder (zdim1,radius,radius);
    }
    
}