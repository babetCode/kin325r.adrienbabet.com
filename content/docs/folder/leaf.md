---
title: Random Questions
type: docs
prev: docs/folder/
---

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
{{< /md >}}
{{< /details-html >}}