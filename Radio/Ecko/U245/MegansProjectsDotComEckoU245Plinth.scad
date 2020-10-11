//                    _
// |\/| _  _  _  _  _|_) __  o _  __| _
// |  |(/_(_|(_|| |_>|  | (_)|(/_(_ |_>
//         _|               _|
//       www.megansprojects.com
// 
// Replacement foot/base plinth for Ekco U245

// All measurements are in mm

$fn = 64;

plate_width      = 36.5;
plate_length     = 133.6;
plate_height     = 6.8;
plate_thickness  = 1.3;

top_width        = 22;
top_length       = 131;
top_width_offset = 11;
top_length_offset = ( plate_length - top_length ) /2;

large_hole_rad = 7.6 / 2;
small_hole_rad = 4.3 / 2;
half_hole_dist = 97.5 / 2;

module roundrec(size=[plate_width, plate_length], radius=0.5, center=true)
{
    offset(radius) offset(-radius) square(size, center);
}

difference()
{
    hull()
    {
        translate([top_width_offset/2, 0,  0]) linear_extrude(height=0.001) roundrec();
        translate([0, 0,   plate_height]) linear_extrude(height=0.001) roundrec([top_width, top_length]);
    }
    union()
    {
        translate ( [0,half_hole_dist, plate_thickness ]) cylinder ( h=plate_height, r=large_hole_rad );
        translate ( [0,half_hole_dist, -0.01 ]) cylinder ( h=plate_height, r=small_hole_rad );
        translate ( [0,-half_hole_dist, plate_thickness ]) cylinder ( h=plate_height, r=large_hole_rad );
        translate ( [0,-half_hole_dist, -0.01 ]) cylinder ( h=plate_height, r=small_hole_rad );
    }
}