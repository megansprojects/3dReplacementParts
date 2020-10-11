//                    _
// |\/| _  _  _  _  _|_) __  o _  __| _
// |  |(/_(_|(_|| |_>|  | (_)|(/_(_ |_>
//         _|               _|
//       www.megansprojects.com
// 
// Replacement foot/base plinth for Ekco U245

// All measurements are in mm

plate_width     = 36.5;
plate_length    = 133.6;
plate_height    = 6.8;
plate_thickness = 1.3;

difference()
{
    // base plate
    cube ( [ plate_length, plate_width, plate_height ] ) ;
        
    
    union()
    {
        // plate mounting holes
        //translate([plate_mount_hole_distance , plate_mount_hole_distance, 0])
          //  cylinder ( plate_thickness  , plate_mount_hole_diameter/2 , plate_mount_hole_diameter/2 );
    }
}
