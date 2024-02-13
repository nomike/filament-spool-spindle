/*
Filament spool spindle
(C) 2024 - nomike[at]nomike[dot]com

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
*/

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
