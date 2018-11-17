import three;
import solids;
import obj;

size(5cm);
//currentprojection=orthographic((0,1,0), up=Y);
currentprojection=perspective((0,1,0), up=Y);

draw(obj("cessna2.obj", gray));


arrowhead3 localHead;
localHead.head = DefaultHead3.head;
localHead.size = new real(pen p=currentpen) {return 4mm;};

transform3 rb = scale3(-30), re = scale3(30);
draw(rb*X--re*X, linewidth(2pt) + solid + red,   Arrow3(localHead), currentlight);
draw(rb*Y--re*Y, linewidth(2pt) + solid + green, Arrow3(localHead), currentlight);
draw(rb*Z--re*Z, linewidth(2pt) + solid + blue,  Arrow3(localHead), currentlight);

