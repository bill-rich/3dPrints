// Load the involute_gears library if available
use <involute_gears/involute_gears.scad>

$fn=100;

// Define parameters for gear ratio
teeth_gear1 = 20;  // Input gear
teeth_gear2 = floor(teeth_gear1 * 1.3); // Output gear for a 1.3:1 speed increase

module create_gear(teeth, thickness = 5) {
    // Creates an involute gear using specified teeth and thickness
    gear(
        number_of_teeth = teeth,
        circular_pitch = 5,       // Adjust for the desired size
        pressure_angle = 20,      // Standard pressure angle
        clearance = 0.1,    // Standard clearance for better 
        hub_diameter=10,
        hub_thickness=20
    );
}

// Position and render gears
translate([-15, 0, 0]) create_gear(teeth_gear1);     // Input gear
translate([30, 0, 0]) create_gear(teeth_gear2);      // Output gear (meshed)

// Visual indicator for rotation
translate([-15, 0, 6]) color("red") sphere(1);      // Input gear center
translate([30, 0, 6]) color("blue") sphere(1);      // Output gear center