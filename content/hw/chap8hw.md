---
date: '2025-04-15T12:04:24-06:00'
draft: false
title: 'Chap8hw'
weight: 12
math: true
---

## 1. Vocabulary

### A.

- **Inertia (Linear Term)**  
Inertia is the property of an object to resist changes in its state of motion (either at rest or moving at a constant velocity). It is directly related to mass—the greater the mass, the greater the inertia.

- **Moment of Inertia (Rotational Inertia)**  
The moment of inertia ($I$) is a measure of an object's resistance to changes in its rotational motion. It depends on both the mass of the object and the distribution of that mass relative to the axis of rotation:  
$$ I = \sum m_i r_i^2 $$  
where $m_i$ is a mass element and $r_i$ is its distance from the axis.

- **Radius of Gyration**  
The radius of gyration ($k$) is a simplified representation of an object's mass distribution about an axis. It is the distance from the axis at which the total mass could be concentrated to produce the same moment of inertia:  
$$ I = M k^2 $$  
where $M$ is the total mass.

- **Parallel Axis Theorem**  
This theorem relates the moment of inertia about any axis to the moment of inertia about a parallel axis passing through the object's center of mass:  
$$ I = I_{cm} + M d^2 $$  
where $I_{cm}$ is the moment of inertia about the center of mass, $M$ is the total mass, and $d$ is the perpendicular distance between the two axes . 

- **Angular Momentum**  
Angular momentum ($L$) is the rotational equivalent of linear momentum, representing the quantity of rotation of an object. It is given by:  
$$ L = I \omega $$  
where: $I$ is the moment of inertia and $\omega$ is the angular velocity.

- **Conservation of Momentum (Angular Version)**  
Just as linear momentum is conserved in a closed system with no external forces, angular momentum is conserved in a system with no external torques:  
$$ L_{initial} = L_{final} $$  
This principle explains phenomena like spinning ice skaters pulling their arms in to spin faster.

- **Force Equilibrium (Review from Linear Motion)**  
An object is in force equilibrium when the net force acting on it is zero, meaning no linear acceleration occurs:  
$$ \sum \vec{F} = 0 $$  
This implies the object is either at rest or moving at constant velocity (Newton’s First Law).

- **Torque Equilibrium**  
An object is in torque equilibrium when the net torque acting on it is zero, meaning no angular acceleration occurs:  
$$ \sum \vec{\tau} = 0 $$  
For complete static equilibrium, both force equilibrium and torque equilibrium must hold.

### B.

| **Linear Motion**               | **Angular Motion**                     | **Formula/Explanation**                          |
|----------------------------------|----------------------------------------|------------------------------------------------|
| **Force (F)**                | **Torque (τ)**                        | $ \tau = r \times F $ (r = lever arm)       |
| **Newton’s 1st Law (Inertia)** | **Rotational Inertia**               | Objects resist changes in rotational motion ($ \omega = \text{constant} $ if $ \sum \tau = 0 $). |
| **Momentum (p = mv)**         | **Angular Momentum (L = Iω)**         | $ L = I \omega $ (I = moment of inertia)     |
| **Conservation of Momentum**  | **Conservation of Angular Momentum**  | If $ \sum \tau_{ext} = 0 $, $ L_{initial} = L_{final} $. |
| **Newton’s 2nd Law (F = ma)** | **Rotational $ \tau = I \alpha $**  | $ \alpha $ = angular acceleration ($ \tau = I \frac{d\omega}{dt} $) |
| **Newton’s 3rd Law (Action-Reaction)** | **Rotational Action-Reaction** | For every torque applied by Object A on Object B, B applies an equal and opposite torque on A. |

## 2. The Moment of Inertia