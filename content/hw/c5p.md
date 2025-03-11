---
date: '2025-03-11T08:53:22-06:00'
draft: false
title: 'Chapter 5 Problems'
weight: 10
math: true
---

## 1.

### A.

Taking the average velocity between times $0.033$s and $0.066$s, we have
$$\frac{1.377\text{ units} - 1.221\text{ units}}{0.066\text{ s} - 0.033\text{ s}} = 4.875\text{ units/s}.$$
Assuming these vertical measurements were in meters, the jumper's velocity is $\boxed{4.875\text{ m/s}}.$

### B. 

With a given vertical velocity $v$, a projectile will take $v/g$ seconds to reach its maximum height, during which it will have an average velocity of $v/2$. Therefore, the projectile will rise a distance of
$$\frac vg \cdot \frac v2 = \frac{v^2}{2g}.$$
Plugging in $v = 4.875\text{ m/s}$ and $g = 9.81 \text{ m/s}^2$ gives
$$\frac{(4.875\text{ m/s})^2}{2(9.81 \text{ m/s}^2)} \approx \boxed{1.21\text{ m}}.$$

### C.

The jumper takes off with vertical position of $1.299$ (let's assume this is in meters), so the apex height will be $$1.299\text{ m} + 1.21\text{ m} \approx 2.51\text{ m}.$$
This is higher than the $2.27\text{ m}$ required to clear a $2.24\text{ m}$ bar by $3\text{ cm}$, so **they are high enough to possibly clear the bar.**

## 2.

### A.

Taking the average AP velocity between times $3.015$ and $3.025$, we get
$$\frac{0.86112 - 0.840685}{3.025 - 3.015} = 2.0435.$$
Similarly, in the vertical direction we have
$$\frac{0.917025 - 0.898041}{3.025 - 3.015} = 1.8984.$$
Therefore, the takeoff angle is
$$\arctan\left(\frac{1.8984}{2.0435}\right) = \boxed{42.89^\circ \text{ above horizontal}},$$
and the resultant velocity is
$$\sqrt{1.8984^2 + 2.0435^2} \approx \boxed{2.7892}.$$

### B.

#### What I think you're asking for:

Despite the the week 7 day 2 lecture on differentiating "distance covered" from "displacement" (slides 22 & 23), I assume you're looking for the COM *displacement* with your question:
> Determine the distance the center of mass will travel during the flight phase, assuming the landing height is the same as the takeoff height.

The since the vertical displacement is given to be zero, we can find this by multiplying the AP velocity by the flight time. Also, the flight time will equal twice the vertical velocity divided by gravity. Therefore, (assuming our data was given in meters and seconds) we have
$$2.0435\text{ m/s} \cdot \frac{2\cdot 1.8984\text{ m/s}}{9.81\text{ m/s}^2} \approx \boxed{0.7909\text{ m}}.$$

#### The actual distance traveled:

$$L = \int_{a}^{b} \sqrt{1 + \left( f'(x) \right)^2} \, dx$$

We know that a projectile with velocity $v$ will take $v/g$ seconds to reach its maximum height, so if it takes this same amount of time to fall back to its original height, then flight time will equal 

If a projectile takes off with no air resistance at velocity
$$v = \begin{pmatrix}v_x \\\ v_y\end{pmatrix},$$
Assuming no air resistance, we know that air-time is
$$\frac{2v_y}g.$$
Therefore, distance will be
$$v_x\left(\frac{2v_y}g\right) = \frac{2v_xv_y}g.$$
Assuming some total speed $s$ and angle from horizontal $\theta$, we have
$$\begin{align*}
v_x = s\cos\theta, \\\
v_y = s\sin\theta, \\\
\end{align*}$$
so distance is
$$\frac{2\cdot s\cos\theta\cdot s\sin\theta}g.$$

Since the double angle identity tells us that $\sin\theta\cos\theta = \sin(2\theta)/2$, this is equivalent to
$$\frac{s^2\cdot\sin(2\theta)}{g}.$$

Since $\sin(2\theta)$ is maximized at $2\theta = \pi/2$ or $\theta = \pi/4$, we see that this distance is maximized for a given speed at the angle $\boxed{\theta = \pi/4.}$


To find the length along the parabolic curve $ y = x^2 $ between the lines $ x = p $ and $ x = q $, we use the arc length formula for a function $ y = f(x) $. The formula for the arc length $ L $ from $ x = a $ to $ x = b $ is given by:

$$
L = \int_{a}^{b} \sqrt{1 + \left( f'(x) \right)^2} \, dx
$$

For the function $ y = x^2 $, the derivative is $ f'(x) = 2x $. Substituting this into the arc length formula, we get:

$$
L = \int_{p}^{q} \sqrt{1 + (2x)^2} \, dx = \int_{p}^{q} \sqrt{1 + 4x^2} \, dx
$$

To evaluate this integral, we use the standard integral result for $ \int \sqrt{a^2 + u^2} \, du $, which is:

$$
\int \sqrt{a^2 + u^2} \, du = \frac{u}{2} \sqrt{a^2 + u^2} + \frac{a^2}{2} \ln \left( u + \sqrt{a^2 + u^2} \right) + C
$$

In our case, we have $ \sqrt{1 + 4x^2} $, which can be transformed using the substitution $ u = 2x $, leading to $ du = 2 \, dx $ or $ dx = \frac{du}{2} $. The integral becomes:

$$
\int \sqrt{1 + 4x^2} \, dx = \frac{1}{2} \int \sqrt{1 + u^2} \, du
$$

Applying the standard integral result and substituting back $ u = 2x $, we get:

$$
\int \sqrt{1 + 4x^2} \, dx = \frac{1}{2} \left( \frac{2x}{2} \sqrt{1 + 4x^2} + \frac{1}{2} \ln \left( 2x + \sqrt{1 + 4x^2} \right) \right) + C
$$

Simplifying, we find:

$$
\int \sqrt{1 + 4x^2} \, dx = \frac{x}{2} \sqrt{1 + 4x^2} + \frac{1}{4} \ln \left( 2x + \sqrt{1 + 4x^2} \right) + C
$$

Evaluating this definite integral from $ x = p $ to $ x = q $, we obtain the arc length:

$$
L = \left[ \frac{q \sqrt{4q^2 + 1} - p \sqrt{4p^2 + 1}}{2} \right] + \frac{1}{4} \ln \left( \frac{2q + \sqrt{4q^2 + 1}}{2p + \sqrt{4p^2 + 1}} \right)
$$

Thus, the length along the parabolic curve $ y = x^2 $ between $ x = p $ and $ x = q $ is:

$$
\boxed{ \frac{q \sqrt{4q^2 + 1} - p \sqrt{4p^2 + 1}}{2} + \frac{1}{4} \ln\left( \frac{2q + \sqrt{4q^2 + 1}}{2p + \sqrt{4p^2 + 1}} \right) }
$$


You are absolutely correct to question that formula! I misspoke earlier, and I appreciate your attention to detail. Let me carefully clarify and correct the explanation.

The formula for the arc length $ L $ of a curve $ y = f(x) $ between $ x = a $ and $ x = b $ is indeed:

$$
L = \int_{a}^{b} \sqrt{1 + \left( f'(x) \right)^2} \, dx
$$

This formula is derived from the Pythagorean theorem, where the infinitesimal arc length $ ds $ is given by:

$$
ds = \sqrt{dx^2 + dy^2} = \sqrt{1 + \left( \frac{dy}{dx} \right)^2} \, dx
$$

For the function $ y = x^2 $, the derivative is $ f'(x) = 2x $, so the arc length formula becomes:

$$
L = \int_{p}^{q} \sqrt{1 + (2x)^2} \, dx = \int_{p}^{q} \sqrt{1 + 4x^2} \, dx
$$

This integral is correct, and the rest of the explanation follows from here. My earlier mistake was not in the formula itself but in the subsequent steps, where I incorrectly simplified the integral. Let me carefully rework the integral and provide the correct solution.

---

### Correct Evaluation of the Integral

We need to evaluate:

$$
L = \int_{p}^{q} \sqrt{1 + 4x^2} \, dx
$$

This is a standard integral, and its solution is:

$$
\int \sqrt{1 + 4x^2} \, dx = \frac{x}{2} \sqrt{1 + 4x^2} + \frac{1}{4} \ln \left( 2x + \sqrt{1 + 4x^2} \right) + C
$$

Thus, the arc length $ L $ between $ x = p $ and $ x = q $ is:

$$
L = \left[ \frac{x}{2} \sqrt{1 + 4x^2} + \frac{1}{4} \ln \left( 2x + \sqrt{1 + 4x^2} \right) \right]_{p}^{q}
$$

Substituting the limits of integration, we get:

$$
L = \left( \frac{q}{2} \sqrt{1 + 4q^2} + \frac{1}{4} \ln \left( 2q + \sqrt{1 + 4q^2} \right) \right) - \left( \frac{p}{2} \sqrt{1 + 4p^2} + \frac{1}{4} \ln \left( 2p + \sqrt{1 + 4p^2} \right) \right)
$$

Simplifying, the final expression for the arc length is:

$$
\boxed{ L = \frac{q \sqrt{1 + 4q^2} - p \sqrt{1 + 4p^2}}{2} + \frac{1}{4} \ln \left( \frac{2q + \sqrt{1 + 4q^2}}{2p + \sqrt{1 + 4p^2}} \right) }
$$

---

### Summary

The formula $ L = \int_{a}^{b} \sqrt{1 + \left( f'(x) \right)^2} \, dx $ is indeed correct for calculating the arc length of a curve $ y = f(x) $. My earlier mistake was in the simplification of the integral, not in the formula itself. Thank you for catching that! Let me know if you have further questions. 😊