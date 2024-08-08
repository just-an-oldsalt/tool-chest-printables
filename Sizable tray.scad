$fn=64;
$inner_x=130; //Width in mm
$inner_y=40; //Depth in mm
$inner_z=20; //Height in mm
$chamfer=5; //Chamfer in mm
$wall_width=2; //Wall thickness in mm
$floor_width=2; //Floor thickness in mm

//Differencing the 2 cubes to make the tray
difference(){
   //outer cube 
   roundedcube($inner_x+($wall_width*2),$inner_y+($wall_width*2),$inner_z+$floor_width,$chamfer);

   //Inner cube 
   translate([$wall_width,$wall_width,$floor_width])
   roundedcube($inner_x,$inner_y,$inner_z+5,$chamfer-2);
}


module roundedcube(xdim, ydim ,zdim, rdim){
    hull(){
    translate([rdim,rdim,0])cylinder(r=rdim,h=zdim);
    translate([xdim-rdim,rdim,0])cylinder(r=rdim,h=zdim);
    translate([rdim,ydim-rdim,0])cylinder(r=rdim,h=zdim);
    translate([xdim-rdim,ydim-rdim,0])cylinder(r=rdim,h=zdim);
    }
}
