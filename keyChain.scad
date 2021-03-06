$fn=25;

//base
difference(){
    cube([24,36,6]);
    //keyboard cutout
    translate([4,4,5.5])
    cube([15,28,0.5]);
    difference(){
        //touchpad outer
        translate([20,13,5.5])
        cube([3,8,0.5]);
        //touchpad inner
        translate([20.5,13.5,5.5])
        cube([2,7,0.5]);
    }
}
//top
difference(){
    translate([-3,0,3])
    rotate([0,-15])
    cube([6,36,24]);
    //screen cutout
    translate([2,2,7])
    rotate([0,-15])
    cube([0.5,32,20]);
    //CofC text
    translate([-4,26,10.5])
    rotate([-75,180,90])
    linear_extrude(1)
    text("CofC", size=5);
}
//keycap
translate([6.5,4.5])
for(j = [0:10]){
    for(i=[0:4]){
        translate([i*2.5, j*2.5])
        cube([2,2,6]);
    }
}
//mini keys
translate([4.5,4.5])
for(i=[0:10]){
    translate([0,i*2.5])
    cube([1.25,2,6]);
}
//joint
rotate([-90])
translate([0,-3,0])
cylinder(h=36,r=3);
//keyring
difference(){
    //keyring outer
    translate([6,0,2])
    cylinder(h=2,r=4);
    //keyring inner
    translate([6,0,2])
    cylinder(h=2,r=2.4);
}
//WiC text
translate([-3,5,10])
rotate([75,0,90])
linear_extrude(6)
text("WiC");


