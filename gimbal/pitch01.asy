//settings.outformat="pdf";
//settings.render=16;

size(8cm);

import three;
import solids;
import obj;


currentprojection=orthographic((0,0,2), up=Y);
currentlight=Viewport;
//currentlight = light(gray(0.5), specularfactor=3, viewport=false, (0.5,-0.5,-0.25), (0.5,0.5,0.25), (0.5,0.5,1), (-0.5,-0.5,-1));


arrowhead3 localHead;
localHead.head = DefaultHead3.head;
localHead.size = new real(pen p=currentpen) {return 3mm;};

// Axis
draw(scale3(1.0)*((-X)--(X)), linewidth(1pt) + solid + red,   Arrows3(localHead), currentlight);
draw(scale3(0.5)*((-Y)--(Y)), linewidth(1pt) + solid + green, Arrows3(localHead), currentlight);
//draw(scale3(1.0)*((-Z)--(Z)), linewidth(1pt) + solid + blue,  Arrows3(localHead), currentlight);


material surfacepen = material(diffusepen=gray, emissivepen=gray(.1), specularpen=black);
obj cessna = scale3(0.03)*obj("cessna2.obj", gray);
//draw(cessna);


// PITCH
//draw(rotate( 15, X)*cessna.s, gray, currentlight);
//draw(rotate(-15, X)*cessna.s, lightgray+opacity(.25), currentlight);

// YZ-plane circle (PITCH)
//path3 rotxa = rotate(90, Z)*arc(O, 0.75, 0-30, 0, 0+30, 0);
//draw(rotxa, linewidth(1pt) + solid + red, Arrows3(localHead), currentlight);
//path3 rotxb = rotate(90, Z)*arc(O, 0.75, 180-30, 0, 180+30, 0);
//draw(rotxb, linewidth(1pt) + solid + red, Arrows3(localHead), currentlight);


// YAW
//draw(rotate( 15, Y)*cessna.s, gray, currentlight);
//draw(rotate(-15, Y)*cessna.s, lightgray+opacity(.25), currentlight);

// ZX-plane circle (YAW)
//path3 rotya = arc(O, 0.75, 0-30, 0, 0+30, 0);
//draw(rotya, linewidth(1pt) + solid + green, Arrows3(localHead), currentlight);
//path3 rotyb = arc(O, 0.75, 180-30, 0, 180+30, 0);
//draw(rotyb, linewidth(1pt) + solid + green, Arrows3(localHead), currentlight);


// ROLL
draw(rotate( 15, Z)*cessna.s, surfacepen, currentlight);
draw(rotate(-15, Z)*cessna.s, lightgray+opacity(.25), currentlight);

// XY-plane circle (ROLL)
path3 rotza = arc(O, 0.75, 90, 0-30, 90, 0+30);
draw(rotza, linewidth(1pt) + solid + blue, Arrows3(localHead), currentlight);
path3 rotzb = arc(O, 0.75, 270, 0-30, 270, 0+30);
draw(rotzb, linewidth(1pt) + solid + blue, Arrows3(localHead), currentlight);





