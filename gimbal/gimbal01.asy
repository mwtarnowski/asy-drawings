import three;
import solids;

size(5cm);
currentprojection=perspective((3,1,1), up=Y);

currentlight = light(gray(0.5), specularfactor=3, viewport=false, (0.5,-0.5,-0.25), (0.5,0.5,0.25), (0.5,0.5,1), (-0.5,-0.5,-1));


arrowhead3 localHead;
localHead.head = DefaultHead3.head;
localHead.size = new real(pen p=currentpen) {return 4mm;};


transform3 b = scale3(-1), e = scale3(1);
transform3 rb = scale3(-1.5), re = scale3(1.5);

// Axis
draw(rb*X--re*X, linewidth(2pt) + solid + red,   Arrow3(localHead), currentlight);
draw(rb*Y--re*Y, linewidth(2pt) + solid + green, Arrow3(localHead), currentlight);
draw(rb*Z--re*Z, linewidth(2pt) + solid + blue,  Arrow3(localHead), currentlight);

// XY-plane circle (ROLL)
path3 circXY = arc(O, b*X, e*X, -Z);
draw(circXY, linewidth(2pt) + solid + yellow, Arrows3(localHead), currentlight);

// ZX-plane circle (YAW)
path3 circZX = arc(O, b*X, e*X, Y);
draw(circZX, linewidth(2pt) + solid + magenta, Arrows3(localHead), currentlight);

// YZ-plane circle (PITCH)
path3 circYZb = arc(O, b*Y, e*Y, -X);
draw(circYZb, linewidth(2pt) + solid + cyan, Arrows3(DefaultHead2(normal=Z)), currentlight);

