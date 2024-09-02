$fn=64;
$inner_x=120; //Width in mm
$inner_y=120; //Depth in mm
$inner_z=120; //Height in mm
$chamfer=3; //Chamfer in mm
$wall_width=2; //Wall thickness in mm
$floor_width=2; //Floor thickness in mm

$opening_width=25; //Width in mm for the front opening
$opening_lift=5; //Lift of the opening from the inner bottem of the tray


difference(){
//Differencing the 2 cubes to make the tray
difference(){
   //outer cube 
   roundedcube(
       $inner_x+($wall_width*2),
       $inner_y+($wall_width*2),
       $inner_z+$floor_width,
       $chamfer
    );

   //Inner cube 
   translate([$wall_width,$wall_width,$floor_width])
   roundedcube($inner_x,$inner_y,$inner_z+5,$chamfer-2);
}

rotate([0,-90,0])
translate([
  $floor_width+$opening_lift,
  ($inner_y/2)-($opening_width/2)+$wall_width,
  -20
])
roundedcube(
  $inner_z+10,
  $opening_width,
  30,
  $chamfer);

}

module roundedcube(xdim, ydim ,zdim, rdim){
    hull(){
    translate([rdim,rdim,0])cylinder(r=rdim,h=zdim);
    translate([xdim-rdim,rdim,0])cylinder(r=rdim,h=zdim);
    translate([rdim,ydim-rdim,0])cylinder(r=rdim,h=zdim);
    translate([xdim-rdim,ydim-rdim,0])cylinder(r=rdim,h=zdim);
    }
}
