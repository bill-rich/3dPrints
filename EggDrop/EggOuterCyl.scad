r = 30;
h = 200;
thickness = 10;

cubeLength = 3*r;
cubeWidth = .75*r;
cubeHeight = .25*r;

difference(){
    union(){
        cylinder(h, r,r);
        translate([-.5*cubeLength, -.5*cubeWidth, 0]){
            cube([cubeLength,cubeWidth,cubeHeight]);
        };
    };
    cylinder(h, r-thickness, r-thickness);
    translate([-r,-.5*cubeWidth, cubeWidth]){
        cube([2*r,cubeWidth,h]);
    };
};
    