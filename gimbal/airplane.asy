import three;
import solids;
import obj;


size(5cm);
currentprojection=orthographic((5,2,1), up=Y);


//pen[] surfacepen = {darkred, brown, darkred+orange, heavyred, heavyred, darkred+orange, palegreen+blue+lightgrey, darkred, darkred, yellow, darkred, white, white, white, white, white, white};
//surfacepen.cyclic = true;
//draw(obj("galleon.obj", verbose=false, surfacepen));


transform3 rot = rotate(90, Y);
transform3 shf = shift(3*Y);
draw(shf*rot*obj("cessna.obj", gray));
//draw(obj("cessna_ex.obj", gray));


arrowhead3 localHead;
localHead.head = DefaultHead3.head;
localHead.size = new real(pen p=currentpen) {return 4mm;};

transform3 rb = scale3(-30), re = scale3(30);
draw(rb*X--re*X, linewidth(2pt) + solid + red,   Arrow3(localHead), currentlight);
draw(rb*Y--re*Y, linewidth(2pt) + solid + green, Arrow3(localHead), currentlight);
draw(rb*Z--re*Z, linewidth(2pt) + solid + blue,  Arrow3(localHead), currentlight);

