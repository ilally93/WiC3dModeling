# WiC3dModeling
Tutorial for 3d modeling: Computer Keychain
**Warning - Prototype has not been printed**

- Install [OpenSCAD](https://www.openscad.org/downloads.html)  

New File

Components of keychain to create:  
- 8 cubes (base, top, keyboard, key, minikey, touchpad inner, touchpad outer, screen)  
    cube();  
- 3 cylinders (joint, keyring inner, keyring outer)  
    cylinder();  
- 2 texts  
    text();  

1. Create each component  
2. Cylinders look weird!  Solution:  
    $fn=25;
3. Change size of base [24,36,6]
4. Change size of top [6,36,24]
5. Move top rectangle (up the z 3, back x 3)  
    translate([-3,0,3])  
    rotate([0,-15])
    rectangle([6,36,24]);  
6. Create joint:  
    size: h=36, r=3  
    rotate: 90 degrees back x axis  
    move: up 3  
7. Create keyring:  
    (Outer):  
    size: h=2, r=4  
    (Inner):  
    size: h=2, r=2.5  
8. Subtract outer from inner
9. Move keyring:  
    up 2, over 6  
10. Keyboard Cutout!
    [15, 28, 0.5]  
    Move to top of base: [4,4,5.5]  
    Subtract from base  
11. Touchpad  
    (Cutout):  
    [3,8,0.5]  
    Move: [20,13,5.5]  
    (Extrude):  
    [2,7,0.5]  
    Move: [20.5,13.5,5.5]  
    Subtract from each other, then from base
12. Screen!  
    [0.5, 32, 20]  
    Rotate([0,-15])  
    Move: [2,2,7]  
    Subtract from top
13. Keys:  
    [2,2,6]  
    Let's make 5 by 11  
    Starting move: [6.5,4.5]  
    iterative move: [i\*2.5, j\*2.5]
14. Minikeys:  
    [1.25,2,6]  
    Starting move: [4.5,4.5]  
    iterative move: [0,j*2.5]
15. Front Text  
    ["WiC"]  
    translate([-3,5,10])  
    rotate([75,0,90])  
    linear_extrude(6)
16. Back Text  
    ["CofC", size=5]  
    translate([-4,26,10.5])  
    rotate([-75,180,90])  
    linear_extrude(1)  
    Subtract from top  
