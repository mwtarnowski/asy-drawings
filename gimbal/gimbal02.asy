import three;
import solids;

size(5cm);
currentprojection=perspective((5,2,2), up=Y);

currentlight = light(gray(0.5), specularfactor=3, viewport=false, (0.5,-0.5,-0.25), (0.5,0.5,0.25), (0.5,0.5,1), (-0.5,-0.5,-1));


path3 p1 = (0,0,-3)--(1,0,-3)--(1,0,1)--(0,0,3);
revolution g1 = revolution(p1, Z);
draw(surface(g1), lightgray);


// XY-plane circle
path3 circXY[] = arc(O, 4, 90, 90-45, 90, 90+45)^^arc(O, 4, 90, 270-45, 90, 270+45);
draw(circXY, dotted);

path3 circq = arc(O, 4, 90, 90-45, 90, 90+45);
draw(circq, linewidth(2pt) + solid + cyan, Arrows3(DefaultHead2(normal=Y)));

// ZX-plane circle
path3 circZX[] = arc(O, 4, 0-45, 0, 0+45, 0)^^arc(O, 4, 180-45, 0, 180+45, 0);
draw(circZX, dotted);

// YZ-plane circle
//path3 circYZ = arc(O, 4, 90, 90, 0, 30);
path3 circYZ = arc(O, 4, 90, 90, 340, 60);
draw(circYZ, dotted);

