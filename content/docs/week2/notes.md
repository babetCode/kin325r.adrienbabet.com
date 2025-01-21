---
title: "Lecture Notes"
date: 2025-01-19T23:15:41-07:00
draft: false
---

## Announcements
- Office hours Mondays 10am - Noon  
    **& Wed. 12-4?**

- Lab due fri. 31st 5pm

- "By zombies" test for passive voice --- if you can add "by zombies" at the end of a sentence, it's probable in the passive voice.

## Plan for day

- Forces
- Adding vectors

leg extension gets bad rep for patella-femoral forces --- what are patella femoral-forces?

- what is a joint reaction force?
- what is a joint contact force?

## What is a force?
> a push or pull on an object

My attempt to add vectors in [asymptote](http://asymptote.ualberta.ca/)
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {30, 150, -90};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 40;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        label("$+$", (xpos + scale*magnitudes[i] + spacing/2, 100));
        xpos += scale*magnitudes[i] + spacing;
    }
}

// Add equals sign
xpos += scale*magnitudes[magnitudes.length-1] + spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

error produced:
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {30, 150, -90};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 40;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        label("$+$", (xpos + scale*magnitudes[i] + spacing/2, 100));
        xpos += spacing;
      	// Add space for vector
		if(magnitudes[i] * cos(directions[i]) > 1) {
        	xpos += scale * magnitudes[i] * cos(directions[i]);
        }
      	// Add space for next vector
		if(magnitudes[i + 1] * cos(directions[i + 1]) < 1) {
        	xpos += scale * magnitudes[i + 1] * abs(cos(directions[i + 1]));
        }
    }
}

// Add equals sign
xpos += scale*magnitudes[magnitudes.length-1] + spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

this works
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {30, 150, -90};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 40;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        label("$+$", (xpos + spacing/2, 100));
        xpos += spacing;
        if(magnitudes[i] * cos(directions[i]) > 1) {
        	xpos += scale * magnitudes[i] * cos(directions[i]);
        }
      	// Add space for next vector
		if(magnitudes[i + 1] * cos(directions[i + 1]) < 1) {
        	xpos += scale * magnitudes[i + 1] * abs(cos(directions[i + 1]));
        }
    }
}

// Add equals sign
xpos += scale*magnitudes[magnitudes.length-1] + spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 3
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {30, 150, -90};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 40;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        xpos += spacing;
        if(magnitudes[i] * cos(directions[i]) > 0) {
        	xpos += scale * magnitudes[i] * cos(directions[i]);
        }
        label("$+$", (xpos, 100));
        xpos += spacing;
      	// Add space for next vector
		if(magnitudes[i + 1] * cos(directions[i + 1]) < 0) {
        	xpos += scale * magnitudes[i + 1] * abs(cos(directions[i + 1]));
        }
    }
}

// Add equals sign
xpos += scale*magnitudes[magnitudes.length-1] + spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 4
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {45, 45, -135};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 20;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        xpos += spacing;
        if(magnitudes[i] * cos(degrees(directions[i])) > 0) {
            xpos += scale * magnitudes[i] * cos(degrees(directions[i]));
        }
        label("$+$", (xpos, 100));
        xpos += spacing;
        // Add space for next vector
        if(magnitudes[i + 1] * cos(degrees(directions[i + 1])) < 0) {
            xpos += scale * magnitudes[i + 1] * abs(cos(degrees(directions[i + 1])));
        }
    }
}

// Add equals sign
xpos += spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 5 test with labels
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {45, 45, -135};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 20;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        xpos += spacing;
        label(rotate(90) * (string(xpos)+" 1st"), (xpos, 20), fontsize(1));
        if(magnitudes[i] * cos(degrees(directions[i])) > 0) {
            xpos += scale * magnitudes[i] * cos(degrees(directions[i]));
            label(rotate(90) * (string(xpos)+" 2nd"), (xpos, 20), fontsize(1));
        }
        label("$+$", (xpos, 100));
        xpos += spacing;
        label(rotate(90) * string(xpos), (xpos, 20), fontsize(1));
        // Add space for next vector
        if(magnitudes[i + 1] * cos(degrees(directions[i + 1])) < 0) {
            xpos += scale * magnitudes[i + 1] * abs(cos(degrees(directions[i + 1])));
            label(rotate(90) * string(xpos), (xpos, 20), fontsize(1));
        }
    }
    label(rotate(90) * string(xpos), (xpos, 20), fontsize(1));
}

// Add equals sign
xpos += spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 6 Better test
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {45, 45, -135};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 20;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        xpos += spacing;
        label(rotate(90) * (string(xpos)+" - spacing"), (xpos, 20), fontsize(1));
        if(magnitudes[i] * cos(degrees(directions[i])) > 0) {
            xpos += scale * magnitudes[i] * cos(degrees(directions[i]));
            label(rotate(90) * (string(xpos)+" - this vector"), (xpos, 20), fontsize(1));
        }
        label("$+$", (xpos, 100));
        xpos += spacing;
        label(rotate(90) * (string(xpos)+" - spacing again"), (xpos, 20), fontsize(1));
        // Add space for next vector
        if(magnitudes[i + 1] * cos(degrees(directions[i + 1])) < 0) {
            xpos += scale * magnitudes[i + 1] * abs(cos(degrees(directions[i + 1])));
            label(rotate(90) * (string(xpos)+" - next vector"), (xpos, 20), fontsize(1));
        }
    }
    //label(rotate(90) * (string(xpos)+" AHHAHAHAHAHA"), (xpos, 20), fontsize(1));
}

// Add equals sign
xpos += spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 7 better check
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {45, 45, -135};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 20;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        xpos += spacing;
        label(rotate(90) * (string(round(xpos))+" - spacing -"+string(i)), (xpos, 20), fontsize(1));
        if(magnitudes[i] * cos(degrees(directions[i])) > 0) {
            xpos += scale * magnitudes[i] * cos(degrees(directions[i]));
            label(rotate(90) * (string(round(xpos))+" - this vector -"+string(i)), (xpos, 20), fontsize(1));
        }
        label("$+$", (xpos, 100));
        xpos += spacing;
        label(rotate(90) * (string(round(xpos))+" - spacing again -"+string(i)), (xpos, 20), fontsize(1));
        // Add space for next vector
        if(magnitudes[i + 1] * cos(degrees(directions[i + 1])) < 0) {
            xpos += scale * magnitudes[i + 1] * abs(cos(degrees(directions[i + 1])));
            label(rotate(90) * (string(round(xpos))+" - next vector -"+string(i)), (xpos, 20), fontsize(1));
        }
    }
    //label(rotate(90) * (string(xpos)+" AHHAHAHAHAHA"), (xpos, 20), fontsize(1));
}

// Add equals sign
xpos += spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 8 another check
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {45, 45, -135};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 20;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        label(rotate(90) * (string(round(xpos))+" - initial -"+string(i)), (xpos, 20), fontsize(1));
      
        xpos += spacing;
      
        label(rotate(90) * (string(round(xpos))+" - spacing -"+string(i)), (xpos, 20), fontsize(1));
      
        if(magnitudes[i] * cos(degrees(directions[i])) > 0) {
            xpos += scale * magnitudes[i] * cos(degrees(directions[i]));
          
            label(rotate(90) * (string(round(xpos))+" - this vector -"+string(i)), (xpos, 20), fontsize(1));
        }
      
        label("$+$", (xpos, 100));
      
        xpos += spacing;
      
        label(rotate(90) * (string(round(xpos))+" - spacing again -"+string(i)), (xpos, 20), fontsize(1));
      
        // Add space for next vector
        if(magnitudes[i + 1] * cos(degrees(directions[i + 1])) < 0) {
            xpos += scale * magnitudes[i + 1] * abs(cos(degrees(directions[i + 1])));
          
            label(rotate(90) * (string(round(xpos))+" - next vector -"+string(i)), (xpos, 20), fontsize(1));
        }
    }
    //label(rotate(90) * (string(xpos)+" AHHAHAHAHAHA"), (xpos, 20), fontsize(1));
}

// Add equals sign
xpos += spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 9 rad deg fix

```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {45, 45, -135};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 20;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
        label(rotate(90) * (string(round(xpos))+" - initial -"+string(i)), (xpos, 20), fontsize(1));
      
        xpos += spacing;
      
        label(rotate(90) * (string(round(xpos))+" - spacing -"+string(i)), (xpos, 20), fontsize(1));
      
        if(magnitudes[i] * cos(radians(directions[i])) > 0) {
            xpos += scale * magnitudes[i] * cos(radians(directions[i]));
          
            label(rotate(90) * (string(round(xpos))+" - this vector -"+string(i)), (xpos, 20), fontsize(1));
        }
      
        label("$+$", (xpos, 100));
      
        xpos += spacing;
      
        label(rotate(90) * (string(round(xpos))+" - spacing again -"+string(i)), (xpos, 20), fontsize(1));
      
        // Add space for next vector
        if(magnitudes[i + 1] * cos(radians(directions[i + 1])) < 0) {
            xpos += scale * magnitudes[i + 1] * abs(cos(radians(directions[i + 1])));
          
            label(rotate(90) * (string(round(xpos))+" - next vector -"+string(i)), (xpos, 20), fontsize(1));
        }
    }
    //label(rotate(90) * (string(xpos)+" AHHAHAHAHAHA"), (xpos, 20), fontsize(1));
}

// Add equals sign
xpos += spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 10 final 
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {2, 1.5, 1.8};
real[] directions = {45, 45, -135};
string[] labels = {"F_1", "F_2", "F_3"};
string resultLabel = "R";

// Fixed spacing values
real spacing = 20;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
         
        xpos += spacing;
             
        if(magnitudes[i] * cos(radians(directions[i])) > 0) {
            xpos += scale * magnitudes[i] * cos(radians(directions[i]));
        }
      
        label("$+$", (xpos, 100));
      
        xpos += spacing;
 
        // Add space for next vector
        if(magnitudes[i + 1] * cos(radians(directions[i + 1])) < 0) {
            xpos += scale * magnitudes[i + 1] * abs(cos(radians(directions[i + 1]))); 
        }
    }
}

// Add equals sign
xpos += spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```

## 11 final fix for equals sign
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 20; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    label("$" + label + "$", end, dir(angle+90));
}

// Function to calculate resultant vector
pair getResultant(real[] magnitudes, real[] directions) {
    pair result = (0,0);
    for(int i = 0; i < magnitudes.length; ++i) {
        result += scale*magnitudes[i]*dir(directions[i]);
    }
    return result;
}

// Example forces with resultant label
real[] magnitudes = {5, 5};
real[] directions = {0, 0};
string[] labels = {"\mathrm{5\ N\ to\ the\ right}", "\mathrm{5\ N\ to\ the\ right}"};
string resultLabel = "\mathrm{10\ N\ to\ the\ right}";

// Fixed spacing values
real spacing = 20;  // Space between vectors/operators
real xpos = 50;     // Starting x position for first vector

// Draw individual vectors with plus signs
for(int i = 0; i < magnitudes.length; ++i) {
    // Draw current vector
    drawVector((xpos, 100), magnitudes[i], directions[i], labels[i]);
    
    // Add plus sign if not last vector
    if(i < magnitudes.length - 1) {
         
        xpos += spacing;
             
        if(magnitudes[i] * cos(radians(directions[i])) > 0) {
            xpos += scale * magnitudes[i] * cos(radians(directions[i]));
        }
      
        label("$+$", (xpos, 100));
      
        xpos += spacing;
 
        // Add space for next vector
        if(magnitudes[i + 1] * cos(radians(directions[i + 1])) < 0) {
            xpos += scale * magnitudes[i + 1] * abs(cos(radians(directions[i + 1]))); 
        }
    }
    else if(magnitudes[i] * cos(radians(directions[i])) > 0) {
    	xpos += scale * magnitudes[i] * cos(radians(directions[i]));
    }
}

// Add equals sign
xpos += spacing;
label("$=$", (xpos, 100));

// Calculate and draw the resultant vector
pair result = getResultant(magnitudes, directions);
drawVector((xpos + spacing, 100), length(result)/scale, angle(result), resultLabel, resultPen);
```