---
date: '2025-01-23T11:19:12-07:00'
draft: false
title: 'Chapter 2 Homework (b)'
math: true
weight: 4
---

{{< details-html title="Assignment PDF" closed="true" >}}
{{< tallpdf path="/pdfs/Chapter 2 - Forces.pdf" height="80" >}}
{{< /details-html >}}

I built the diagrams below with [asymptote vector graphics language](https://asymptote.sourceforge.io/) --- a descriptive vector graphics programming language for mathematical and technical diagrams.

If you are viewing the site version of this page, you can try my code yourself by clicking the "My Source Code" drop-downs, copying to clipboard with the
<svg xmlns="http://www.w3.org/2000/svg" class="inline-block h-6 w-6" fill="none" viewBox="0 0 30 30" stroke="currentColor">
    <path stroke-linecap="round" stroke-linejoin="round" d="M8 16H6a2 2 0 01-2-2V6a2 2 0 012-2h8a2 2 0 012 2v2m-6 12h8a2 2 0 002-2v-8a2 2 0 00-2-2h-8a2 2 0 00-2 2v8a2 2 0 002 2z"></path>
</svg>
icon, and pasting into the [asymptote web app](http://asymptote.ualberta.ca/).

### 4. Draw free body diagrams

#### a)
<div class="bg-white rounded-lg float-left mr-4">
    <img src="/images/hw2-4-a.svg" alt="FBD - Backpack">
</div>
The force through the strap could also be described as $F_N$, since it is a normal force.

<div class="clear-both"></div>

#### b)
<div class="bg-white rounded-lg float-left mr-4">
    <img src="/images/hw2-4-b.svg" alt="FBD - Runner">
</div>

<div class="clear-both"></div>

#### c)
What is the ankle joint reaction force?

#### d)
Is this meant to be a diagram of the dumbell-forearm system? is the biceps exerting an external force?

{{< details-html title="My Source Code" closed="true" >}}
{{< md >}}
{{< tabs items="a),b),c),d)" >}}

{{< tab-html >}}

```c
import graph;

size(300);
pen forcePen = blue + 1.5bp;
draw(box((0, 0), (1, 1)), black+0.5bp);

// Forces (magnitude, direction in deg, label)
real[] magnitudes = {9.8, 9.8};
real[] directions = {-90, 90};
string[] labels = {"F_g", "\mathrm{Force\ Through\ Strap}"};

void drawForce(real magnitude, real angle, string label) {
  pair start = (0.5, 0.5);
  pair end = start + magnitude * dir(angle);
  draw(start--end, forcePen, Arrow(DefaultHead));
  label("$" + label + "$", end, dir(angle+90));
}

for (int i = 0; i < magnitudes.length; ++i) {
  drawForce(magnitudes[i], directions[i], labels[i]);
}
```
{{< /tab-html >}}

{{< tab-html >}}

```c
import graph;

size(300);
pen forcePen = blue + 1.5bp;
draw(box((0, 0), (1, 1)), black+0.5bp);

// Forces (magnitude, direction in deg, label)
real[] magnitudes = {9.8, 11, 1};
real[] directions = {-90, 90, 180};
string[] labels = {"F_g", "\mathrm{Ground\ Reaction\ Force}", "\mathrm{Air\ Resistance}"};

void drawForce(real magnitude, real angle, string label) {
  pair start = (0.5, 0.5);
  pair end = start + magnitude * dir(angle);
  draw(start--end, forcePen, Arrow(DefaultHead));
  label("$" + label + "$", end, dir(angle+90));
}

for (int i = 0; i < magnitudes.length; ++i) {
  drawForce(magnitudes[i], directions[i], labels[i]);
}
```
{{< /tab-html >}}

{{< tab-html >}}

```c
import graph;

size(300);
pen forcePen = blue + 1.5bp;
draw((-1,-0.5)--(2,-0.5)--(-0.5,0.75)--cycle, black+0.5bp);

// Forces (magnitude, direction in deg, label)
real[] magnitudes = {3, 15, 12};
real[] directions = {-90, 90, -100};
string[] labels = {"F_g", "\mathrm{Ground\ Reaction\ Force}", "\mathrm{Joint\ Reaction\ Force}"};

void drawForce(real magnitude, real angle, string label) {
  pair start = (0.0, 0.0);
  pair end = start + magnitude * dir(angle);
  draw(start--end, forcePen, Arrow(DefaultHead));
  label("$" + label + "$", end, dir(angle+90));
}

for (int i = 0; i < magnitudes.length; ++i) {
  drawForce(magnitudes[i], directions[i], labels[i]);
}
```
{{< /tab-html >}}

{{< tab-html >}}

```c
import graph;

size(300);
pen forcePen = blue + 1.5bp;
draw(box((0, 0), (1, 1)), black+0.5bp);

// Forces (magnitude, direction in deg, label)
real[] magnitudes = {9.8, 9.8};
real[] directions = {-90, 90};
string[] labels = {"F_g", "\mathrm{Force\ Through\ Strap}"};

void drawForce(real magnitude, real angle, string label) {
  pair start = (0.5, 0.5);
  pair end = start + magnitude * dir(angle);
  draw(start--end, forcePen, Arrow(DefaultHead));
  label("$" + label + "$", end, dir(angle+90));
}

for (int i = 0; i < magnitudes.length; ++i) {
  drawForce(magnitudes[i], directions[i], labels[i]);
}
```
{{< /tab-html >}}

{{< /tabs >}}

To make your own version of this diagram, copy & paste it into the [asymptote web app](http://asymptote.ualberta.ca/).
{{< /md >}}

{{< /details-html >}}

### 5. Resolution of Forces

#### a)
The "tip to tail" method is a graphical method for vector addition. By placing tail of vector 2 at the tip of vector 1 and drawing the vector from the tail of 1 to the tip of 2, we have the vector which is the sum of vectors 1 and 2. 

{{< details title="Example Code" closed="true" >}}

```c
import graph;

size(300);
pen forcePen = blue + 1.5bp;
pen resultPen = red + 1.5bp;

// Forces (magnitude, direction in deg, label)
real[] magnitudes = {400, 200};
real[] directions = {100, 25};
string[] labels = {"F_{\mathrm{Deltoid}}", "F_{\mathrm{Supraspinatus}}"};

pair currentStart = (0.0, 0.0); // Global variable to track the start position
pair initStart = (0.0, 0.0);

void drawForce(real magnitude, real angle, string label) {
  pair end = currentStart + magnitude * dir(angle);
  draw(currentStart--end, forcePen, Arrow(DefaultHead));
  label("$" + label + "$", end, dir(angle+90));
  currentStart = end; // Update the global start for the next call
}

for (int i = 0; i < magnitudes.length; ++i) {
  drawForce(magnitudes[i], directions[i], labels[i]);
}

draw(initStart--currentStart, resultPen, Arrow(DefaultHead));
```
{{< /details-html >}}

#### b)

{{< details-html title="My Source Code" closed="true" >}}
{{< md >}}
```
// Define pens and settings
pen forcePen = black + 1.5bp;
pen resultPen = blue + 1.5bp;
real scale = 15; // Scale factor for vector lengths

// Function to draw a single vector with magnitude and angle
void drawVector(pair start, real magnitude, real angle, string label, pen p=forcePen) {
    pair end = start + scale*magnitude*dir(angle);
    draw(start--end, p, Arrow(DefaultHead));
    write(scale*magnitude*dir(angle));
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
real[] magnitudes = {3, 12};
real[] directions = {-90, -100};
string[] labels = {"\mathrm{vector\ 1}", "\mathrm{vector\ 2}"};
string resultLabel = "\mathrm{result}";

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
drawVector((xpos + spacing, 100), length(result)/scale, degrees(angle(result)), resultLabel, resultPen);
```
This code can be pasted directly into the [asymptote web app](http://asymptote.ualberta.ca/).
{{< /md >}}
{{< /details-html >}}

##### A.

##### B.

##### C.

##### D.

##### E.

### References

Asymptote vector graphics. (n.d.). Retrieved January 20, 2025, from http://asymptote.ualberta.ca/

ChatGPT - Free body diagram in Asymptote. (n.d.). ChatGPT. Retrieved January 20, 2025, from https://chatgpt.com/share/678e81b4-9038-8009-9ec9-7324bb071514
