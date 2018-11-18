import three;
import solids;
import obj;

size(8cm);
currentprojection=orthographic((2,0,0), up=Y);
currentlight = light(gray(0.5), specularfactor=3, viewport=false, (0.5,-0.5,-0.25), (0.5,0.5,0.25), (0.5,0.5,1), (-0.5,-0.5,-1));

arrowhead3 localHead;
localHead.head = DefaultHead3.head;
localHead.size = new real(pen p=currentpen) {return 3mm;};

obj cessna = scale3(0.03)*obj("cessna2.obj", gray);
//draw(cessna);
draw(rotate( 20, X)*cessna.s, lightgray+opacity(0.5), currentlight);
draw(rotate(-20, X)*cessna.s, lightgray+opacity(0.5), currentlight);

// Axis
//draw((-X)--(X), linewidth(1pt) + solid + red,   Arrows3(localHead), currentlight);
draw((-Y)--(Y), linewidth(1pt) + solid + green, Arrows3(localHead), currentlight);
draw((-Z)--(Z), linewidth(1pt) + solid + blue,  Arrows3(localHead), currentlight);

// YZ-plane circle (PITCH)
path3 rotxa = rotate(90, Z)*arc(O, 0.75, 0-30, 0, 0+30, 0);
draw(rotxa, linewidth(1pt) + solid + red, Arrows3(localHead), currentlight);
path3 rotxb = rotate(90, Z)*arc(O, 0.75, 180-30, 0, 180+30, 0);
draw(rotxb, linewidth(1pt) + solid + red, Arrows3(localHead), currentlight);

