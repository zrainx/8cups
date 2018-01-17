R1=50;
R2=R1*(2/3);
E1=2.7;
H1=10;

color("Orange",0.8) translate([R2,0,-10]) cylinder(0.25,5,5);
color("black",0.5) translate([R2,0,-15]) cylinder(2,5,5);

color("DeepPink") translate([-0.5*R2-20,-0.866*R2+5,29]) cylinder(0.25,5,5);
color("DeepPink") translate([-0.5*R2-20,0.866*R2-5,29]) cylinder(0.25,5,5);

color("DodgerBlue") 
translate([R2,0,0.5])

difference(){
    difference(){
        cylinder(1.5,6,6);
        translate([0,0,-1]) cylinder(10,5,5);
    }
    translate([-2,0,0]) cube([10,4,4],true);
}

color("DodgerBlue") translate([-0.5*R2,-0.866*R2,0]) cylinder(2,5,5);
color("DodgerBlue") translate([-0.5*R2,0.866*R2,0]) cylinder(2,5,5);

color("DodgerBlue")
translate([0,0,2]) 
difference(){
    difference(){
        difference(){
            difference(){
                cylinder(H1,R1,R1);
                translate([0,0,H1-E1])cylinder(H1,R1-E1,R1-E1);
            }
            translate([0,0,E1]) cylinder(H1,R1-2*E1,R1-2*E1);
        }
        translate([R1/2,0,0]) cube([4,4,10],true);
    }
    rotate([0,0,-30])  translate([0,50,H1/2-0.15]) cube([8,50,2.5],true);
}

color("Black",0.5) translate([0,0,H1+20])cylinder(E1,R1-E1,R1-E1);

color("DarkBlue",0.8) translate([-32,0,2+E1+2]) cube([12,38,2],true);

rotate([0,0,-30]) color("ForestGreen",0.5) translate([0,20,2+E1+2]) cube([20,50,6],true);
