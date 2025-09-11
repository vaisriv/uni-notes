---
title: Reference Frames
tags: [25f, ENAE441, Topics]

date: 2025.09.11
time: 10:28:53-0400
---

- We care about more than 1-D and 2-D problems
- We need tools for more complex positions & motion
- This is where reference frames come in

## Basics
- ![Sketch of an arbitrary Reference Frame](assets/arbitrary-reference-frame.png) 
- A Reference Frame is a set of basis vectors which we used to describe our problem
- Imagine an arbitrary reference frame, $\mathcal{I}$:
    - $$
        \mathcal{I} = \left\{\hat{i}_{1}, \hat{i}_{2}, \hat{i}_{3} \right\}
      $$
- For $\vec{r}$ in the $\mathcal{I}$ frame:
    - $$
        ^{\mathcal{I}}\vec{r} = 3 \hat{i}_{1} + 4 \hat{i}_{2} + 5 \hat{i}_{3}
      $$
- We can also make a new frame, $\mathcal{E}$:
    - $$
        \mathcal{E} = \left\{\hat{e}_{1}, \hat{e}_{2}, \hat{e}_{3} \right\}, \text{ where } \hat{e}_{2} \equiv \vec{r}
      $$
- $\vec{r}$ in this new frame:
    - $$
        \begin{align*}
            ^{\mathcal{E}}\vec{r} &= 0 \hat{e}_{1} + 9 \hat{e}_{2} + 0 \hat{e}_{3} \\
            \, &= 9 \hat{e}_{2}
        \end{align*}
      $$

## Polar [[two-body-problem|2BP]]
- ![Sketch of the Polar Reference Frame (from Dr. Martin's notes)](assets/polar-reference-frame.png) 

### Orbit Frame
- $$
    \mathcal{O} = \left\{\hat{i}_{r}, \hat{i}_{\theta}, \hat{i}_{h} \right\}
  $$
- $$
    ^{\mathcal{O}}\vec{r} = r \hat{i}_{r}
  $$
- Pro: Very easy to represent position
- Con: Hard to represent velocity
    - Have to do partial derivatives, as components of the position vector depend on each other
    - $$
        \deriv{t}{^{\mathcal{O}} \vec{r}} = \dot{r} \hat{i}_{r} + r \deriv{t}{\hat{i}_{r}}
      $$

### Perifocal Frame
- Alternative to Orbit Frame
- $$
    \mathcal{P} = \left\{\hat{i}_{e}, \hat{i}_{p}, \hat{i}_{h} \right\}
  $$
- Unfortunately, position vector _looks_ ugly D:
- However, velocity vector is easily calculable in this frame :D
- $$
    \begin{align*}
        ^{\mathcal{P}}\vec{r} &= r \left(\cos{\theta} \hat{i}_{e} + \sin{\theta} \hat{i}_{p}\right) \\
        \, &= \frac{p}{1 + e \cos{\theta}} \left(\cos{\theta} \hat{i}_{e} + \sin{\theta} \hat{i}_{p}\right) \\
        ^{\mathcal{P}}\vec{v} &= \deriv{t}{^{\mathcal{P}}\vec{r}} \\
        \, &= \sqrt{\frac{\mu}{p}} \left(- \sin{\theta} \hat{i}_{e} + \left(e + \cos{\theta}\right) \hat{i}_{p}\right)
    \end{align*}
  $$

## Types of Reference Frames
### Non-Inertial
- Rotating frame
- Basis vectors are constantly changing
- Example: Orbital Frame

### Inertial
- Non-Rotational Frame
- Basis vectors don't change
- Example:
    - Perifocal Frame
    - $$
        \hat{i}_{e} \bigg|_{t = 0} = \hat{i}_{e} \bigg|_{t = t_{0} + \Delta t}
      $$

## Reference Frames for Earth
- $$
    \begin{align*}
        \mathcal{E} &= \left\{\hat{e}_{1}, \hat{e}_{2}, \hat{e}_{3}\right\} \\
        \hat{e}_{3} &= \text{Rotation Axis of Earth and Pole} \\
        \hat{e}_{1} &= \text{Equator} + 0^{\circ} \, \text{Longitude} \\
        \hat{e}_{2} &= \hat{e}_{3} \times \hat{e}_{1}
    \end{align*}
  $$
- $\mathcal{E}$ is the Earth Centered, Earth Fixed (ECEF) Reference Frame
