---
title: "Chapter 2 Homework"
date: 2025-01-19T18:41:46-07:00
draft: false
math: true
---

{{< details-html title="Assignment PDF" closed="true" >}}
{{< tallpdf path="/pdfs/Chapter 2 - Forces.pdf" height="80" >}}
{{< /details-html >}}

### 1. Definitions and Vocabulary
#### a)
| Term Pair | Difference | Example |
|-----------|------------|---------|
| **Vector vs Scalar** | A vector has both magnitude and direction, while a scalar only has magnitude. | *Vector*: Force (10 N to the right).<br> *Scalar*: Temperature (25°C). |
| **Coefficient of Static Friction vs Coefficient of Dynamic Friction** | Static friction occurs when surfaces are not sliding, while dynamic friction occurs when surfaces slide. | *Static*: A book at rest on a table.<br> *Dynamic*: A book being pushed accross a table. |
| **Internal Force vs External Force** | Internal forces act within a system, while external forces act on the system from outside. | *Internal*: Force between molecules in a stretched rubber band.<br> *External*: Gravity acting on a falling object. |
| **Tensile Force vs Compressive Force** | Tensile force pulls objects apart, while compressive force pushes objects together. | *Tensile*: A rope being pulled from both ends.<br> *Compressive*: A column supporting a building’s weight. |
| **Resultant Force vs Net Force** | The resultant force is the single force that has the same effect as the combination of some other forces. Net force is the sum of all forces acting on an object. Depending on the system being described, these are usually interchangable. | *Resultant*: Two forces of 5 N and 3 N acting at a 90° angle result in a 5.83 N diagonal force.<br> *Net Force*: A 10 N force pushing east and a 5 N force pushing west gives a net force of 5 N east. |
| **Weight vs Mass** | Weight is the force exerted by gravity on an object, while mass is the amount of matter in the object. | *Weight*: An object weighing 20 N on Earth.<br> *Mass*: An object with a mass of 2 kg. |

#### b)

**Force**  
A force is an interaction that causes a change in acceleration. It can be represented as a vector quantity, and is typically measured in newtons (N).

**Gravitational Force**  
In newtonian physics, the gravitational force is an attractive force that pulls bodies of mass towards each other. It is proportional to the mass of the objects and the distance between their centers. The force of gravity on Earth is commonly referred to as weight and is given by the formula $F = mg$, where $m$ is the mass of the object and $g$ is the acceleration due to gravity (approximately 9.8 m/s² on Earth).

**Normal Force**  
The normal force is the force exerted by a surface that supports the weight of or presses into an object. It acts perpendicular (normal) to the surface. For an object resting on a horizontal surface, the normal force opposes the gravitational force on the object, preventing it from accelerating downward.

**Frictional Force**  
Frictional force is the resistive force that opposes sliding between two surfaces in contact. It acts parallel to the surface.

### 2. Friction

#### a)
Friction is categorized into three types:
- **Static friction**: When the surfaces are not sliding, $\mu_s$ is used.
- **Kinetic friction**: When the surfaces are sliding, $\mu_k$ is used.

*Note:* The third type --- rolling friction --- will not be discussed here.

#### b)
Frictional force can be modeled as $F_f = \mu N$, where $\mu$ is some coefficient specific to the surfaces, and $N$ is the normal force between the surfaces. When the surfaces are sliding, $\mu_k$ is used. When they are not, $\mu_s$ is used. Under normal conditions, $\mu_s > \mu_k$.

#### c)

<div class="w-48">
  <img src="https://uncivilizedsneaker.com/cdn/shop/files/allwhite-i.jpg?v=1716499668&width=1100" alt="Sneaker" class="w-full mb-0">
  <p class="text-xs text-center mt-0"><a href="https://uncivilizedsneaker.com/products/uncivilized-sneaker-2-0-triple-white" target="_blank" class="text-blue-500">(UNCIVILIZED SNEAKER 2.0 TRIPLE WHITE, n.d.)</a></p>
</div>

| **Feature** | **Friction Characteristics** |
|---|---|
| ***Material*** | Common materials include rubber compounds, leather, or synthetic materials like EVA or polyurethane ([hesperian, 2024](https://en.hesperian.org/hhg/Workers%27_Guide_to_Health_and_Safety:Making_the_soles)). Different materials have varying friction coefficients as well as deformation, affecting grip depending on ground surface. |
| ***Tread Pattern*** | *Depth & Spacing of Grooves:* Deeper, closer grooves displace fluids (like water) and provide better grip on loose surfaces.<br><br> *Shape of Lugs:* Round lugs may grip hard surfaces better, while angular lugs excel on softer surfaces. This is because on soft ground, lugs deform the surface and interlock with it. More angular lugs will generally deform the ground more effectively, but may also be less durable.<br><br> *Surface Area:* Larger contact area also generally increases friction, especially on soft surfaces. This is because the $F_f = \mu N$ model does not account for deformation. |
| ***Flexibility*** | *Flexible Soles:* Flexible soles conform better to uneven surfaces, improving grip.<br><br> *Rigid Soles:* Rigid soles provide more stability, but may be less adaptable. |

### 3. Analyzing Forces Acting on Bodies

#### a)
A free body diagram is a visual representation of the forces acting on an object. The object is isolated and shown as a point mass or simplified shape. All external forces are illustraded as arrows originating from the point or shape. These arrows show the magnitude and direction of each force, such as gravity, normal force, friction, tension, etc....

### 4. Draw free body diagrams

I made the diagrams below using [asymptote vector graphics language](https://asymptote.sourceforge.io/):
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

This code can be pasted directly into the [asymptote web app](http://asymptote.ualberta.ca/):
{{< /md >}}
<br>
<div class="hextra-pdf">
  <button class="fullscreenBtn mx-auto px-2 m-1 bg-blue-400 hover:bg-blue-500 rounded-full flex items-center justify-center">
    <i class="fas fa-expand"></i>
    <span class="ml-2">Full Screen</span>
  </button>
  <iframe src="http://asymptote.ualberta.ca/" width="100%" height="750px"></iframe>
</div>

<script src="/js/full-screen.js"></script>

{{< /details-html >}}

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

Making the soles. (2024, July 6). Hesperian Health Guides. https://en.hesperian.org/hhg/Workers%27_Guide_to_Health_and_Safety:Making_the_soles

UNCIVILIZED SNEAKER 2.0 TRIPLE WHITE. (n.d.). Uncivilizedsneaker. Retrieved January 20, 2025, from https://uncivilizedsneaker.com/products/uncivilized-sneaker-2-0-triple-white