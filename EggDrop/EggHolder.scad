r = 30;
h = 200;
thickness = 10;

cubeLength = 3*r;
cubeWidth = .75*r;
cubeHeight = .25*r;

eggR = 30;
eggH = 95;

difference(){
    cylinder(eggH+2*thickness, eggR+thickness, eggR+thickness);
    translate([0, 0, thickness]){
        cylinder(eggH, eggR, eggR);
    };
    translate([-eggR, 0, thickness]){
        cube([2*eggR, 2*eggR, eggH]);
    };
    translate([0,0,-h+thickness*.75]){
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
    };
    translate([0,0,thickness+eggH]){
        cylinder(thickness, 2.5, 2.5);
    };
}