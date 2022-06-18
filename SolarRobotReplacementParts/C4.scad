$fn=100;


r=5.25/2;

// Hexagon
n = 1.02; // Side length
hexWidth = 1.8;


difference(){
    union(){
        cylinder(10, r, r);
        translate([0, 0, 6]){
            cylinder(1 , 3.5, 3.5);
        };
    }

    union(){
        rotate([0,0,0]){
            translate([-hexWidth/2, -n/2, 0]){
                cube([hexWidth, n, 14]);
            };
        };
        rotate([0,0,60]){
            translate([-hexWidth/2, -n/2, 0]){
                cube([hexWidth, n, 14]);
            };
        };
        rotate([0,0,120]){
            translate([-hexWidth/2, -n/2, 0]){
                cube([hexWidth, n, 14]);
            };
        };
    };
    translate([0, 0, 7]){
        cylinder(3,2,2);
    };
};