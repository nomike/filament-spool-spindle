ssmall_diameter = 19.5;
large_diameter = 38.5;
large_length = 15.5;
slope_length = 10;
spool_width = 125;

cylinder(h=large_length, r=large_diameter);
translate([0, 0, large_length]) cylinder(h=large_length, r1=large_diameter, r2=small_diameter);
translate([0, 0, large_length + slope_length]) cylinder(h=spool_width, r=small_diameter);
translate([0, 0, large_length + slope_length + spool_width]) cylinder(h=large_length, r1=small_diameter, r2=large_diameter);
translate([0, 0, large_length + slope_length + spool_width + slope_length]) cylinder(h=large_length, r=large_diameter);
