r = 30;
h = 200;
thickness = 10;

cubeLength = 2*r;
cubeWidth = .75*r;
cubeHeight = .25*r;


difference(){
    cylinder(h, r-thickness-.1, r-thickness-.1);
 
    translate([0, r, .75*h]){
        rotate([90, 0, 0]){
            cylinder(2*r, .25*r, .25*r);
        };
    };

    translate([0,-.85*r, 0]){
        cylinder(h, r/2, r/2);
    };
    
    translate([0,.85*r, 0]){
    cylinder(h, r/2, r/2);
    };
};

translate([-.5*cubeWidth, -.5*cubeLength, h-cubeHeight]){    
    cube([cubeWidth,cubeLength,cubeHeight]);    
};
