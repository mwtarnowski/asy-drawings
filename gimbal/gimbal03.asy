import three;
import solids;
import obj;

size(5cm);
currentprojection=perspective((5,2,2), up=Y);
currentlight = light(gray(0.5), specularfactor=3, viewport=false, (0.5,-0.5,-0.25), (0.5,0.5,0.25), (0.5,0.5,1), (-0.5,-0.5,-1));

defaultpen(fontsize(5pt));

arrowhead3 localHead;
localHead.head = DefaultHead3.head;
localHead.size = new real(pen p=currentpen) {return 3mm;};


draw(scale3(0.12)*obj("cessna2.obj", gray));


transform3 b = scale3(-3), e = scale3(3);
transform3 rb = scale3(-4), re = scale3(4);
transform3 rrb = scale3(-4.5), rre = scale3(4.5);

// Axis
draw(rb*X--re*X, linewidth(1pt) + solid + red,   Arrows3(localHead), currentlight);
draw(rb*Y--re*Y, linewidth(1pt) + solid + green, Arrows3(localHead), currentlight);
draw(rb*Z--re*Z, linewidth(1pt) + solid + blue,  Arrows3(localHead), currentlight);


// XY-plane circle
path3 rotz = arc(O, 3, 90, 90-80, 90, 90+80);
draw(rotz, linewidth(1pt) + solid + blue, Arrows3(localHead), currentlight);
//path3 rot_za = arc(O, 3, 90, 0-30, 90, 0+30);
//draw(rot_za, linewidth(2pt) + solid + blue, Arrows3(localHead), currentlight);
//path3 rot_zb = arc(O, 3, 90, 90-30, 90, 90+30);
//draw(rot_zb, linewidth(2pt) + solid + blue, Arrows3(localHead), currentlight);
//path3 rot_zc = arc(O, 3, 90, 180-30, 90, 180+30);
//draw(rot_zc, linewidth(2pt) + solid + blue, Arrows3(localHead), currentlight);
//path3 rot_zd = arc(O, 3, 90, 270-30, 90, 270+30);
//draw(rot_zd, linewidth(2pt) + solid + blue, Arrows3(localHead), currentlight);


// ZX-plane circle
path3 roty = rotate(90, Y)*rotate(90, X)*rotz;
//path3 roty = arc(O, 3, 90-80, 0, 90+80, 0);
draw(roty, linewidth(1pt) + solid + green, Arrows3(localHead), currentlight);
//path3 rot_ya = arc(O, 3, 0-30, 0, 0+30, 0);
//draw(rot_ya, linewidth(2pt) + solid + green, Arrows3(localHead), currentlight);
//path3 rot_yb = arc(O, 3, 90-30, 0, 90+30, 0);
//draw(rot_yb, linewidth(2pt) + solid + green, Arrows3(localHead), currentlight);
//path3 rot_yc = arc(O, 3, 180-30, 0, 180+30, 0);
//draw(rot_yc, linewidth(2pt) + solid + green, Arrows3(localHead), currentlight);
//path3 rot_yd = arc(O, 3, 270-30, 0, 270+30, 0);
//draw(rot_yd, linewidth(2pt) + solid + green, Arrows3(localHead), currentlight);


// YZ-plane circle
path3 rotx = rotate(-90, Z)*roty;
//path3 rotx = arc(O, 3, 90-90, 0-10, 90+90, 0-10, normal=X);
draw(rotx, linewidth(1pt) + solid + red, Arrows3(localHead), currentlight);
//path3 rot_xa = arc(O, 3, 90, 90, 90, 180);
//draw(rot_xa, linewidth(2pt) + solid + red, Arrows3(localHead), currentlight);
//path3 rot_xb = arc(O, 3, 90-30, 0, 90+30, 0);
//draw(rot_xb, linewidth(2pt) + solid + red, Arrows3(localHead), currentlight);
//path3 rot_xc = arc(O, 3, 180-30, 0, 180+30, 0);
//draw(rot_xc, linewidth(2pt) + solid + red, Arrows3(localHead), currentlight);
//path3 rot_xd = arc(O, 3, 270-30, 0, 270+30, 0);
//draw(rot_yd, linewidth(2pt) + solid + red, Arrows3(localHead), currentlight);


// Axis labels
label("right", rrb*X, red);
label("left",  rre*X, red);
label("down",  rrb*Y, green);
label("up",    rre*Y, green);
label("back",  rrb*Z, blue);
label("forth", rre*Z, blue);

