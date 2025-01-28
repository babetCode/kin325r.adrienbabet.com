pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;

real scale = 10;
real spacing = 20;  // Space between vectors/operators
real xpos = 100;

real drawVec(real xleft, real magnitude, real angle, string label, pen p=forcePen) {
    real startx;
    if (magnitude * cos(radians(angle)) < 0) {
        real startx = xleft - magnitude * cos(radians(angle));
    }
    else {
        real startx = xleft;
    }
    real starty = magnitude * sin(radians(angle)) / -2;
    pair start = (startx, starty);
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    write("start: (" + string(startx) + "," + string(starty)+ ")");
    label("$" + label + "$", (start+end)/2, dir(angle+90));
    real width = abs(magnitude * cos(radians(angle)));
    return width;
}

// Forces (magnitude, direction in deg, label)
real[] magnitudes = {4, 2, 1};
real[] directions = {100, 25, -45};
string[] labels = {"F_1", "F_2", "F_3"};

for (int i = 0; i < magnitudes.length; ++i) {
    real width = drawVec(xpos, magnitudes[i] * scale, directions[i], labels[i]);
    xpos += width;
    write("xpos: " + string(xpos));
}

label("$+$", (0,0));