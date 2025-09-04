---
title: Two Body Problem
tags: [25s/ENAE432, Topics]

date: 2025.09.04
time: 09:44:04-0400
---

<!-- - TODO: image of two body problem -->

## Kepler

1. Planet orbits follow an [[geometry#ellipse | Ellipse]]
2. Motion of planets carve out equal area in ellipses per unit time
    - $A_{1} = A_{2}$ for fixed $\Delta t$
3. Period of motion is related to semi-major axis (SMA)
    - $p^2 \approx a^3$
4. Geometric Solution to 2BP
    - $r \cos{\theta} = \frac{p}{1 + e \cos{\theta}}$

## Newton

<!-- - TODO: image of two body problem with forces -->

### Creates Calculus

- Builds derivatives off of ratios: $\frac{\Delta r}{\Delta t} \to \vec{r} \to \frac{\mathrm{d}\vec{r}}{\mathrm{d}\vec{t}} \to \frac{\mathrm{d}^2\vec{r}}{\mathrm{d}t^2}$

1. Computes forces:
    - $\vec{F_E} = \frac{GMm}{r^{2}} \hat{r}$
    - $\vec{F_S} = \frac{GMm}{r^{2}} \left(-\hat{r}\right)$
2. Compute acceleration:
    - $\vec{F} = m \vec{a} = m \ddot{\vec{r}} \to \ddot{\vec{r}} = \frac{\vec{F}}{m}$
    - $\ddot{\vec{r_E}} = \frac{G m}{r^2} \hat{r}$
    - $\ddot{\vec{r_S}} = - \frac{G M}{r^2} \hat{r}$
3. Subtract accelerations to find relative motion:
    - $\ddot{\vec{r_E}} - \ddot{\vec{r_S}} = - \frac{G (M + m)}{r^2} \hat{r}$
4. Assume $m \ll M$:
    - $G (M + m) \approx G M = \mu$

### Validating K2

- Zoom in and geometrically compute area of small triangle
    <!-- - TODO: image of forces with triangle small area -->
    - Area of triangle: $\frac{L W}{2}$
    - $L \approxeq |r|$
    - $W \approxeq |v|\sin{\theta} \, \mathrm{d}t$
    - $\mathrm{d}A = \frac{|r| |v| \sin \theta \, \mathrm{d}t}{2}$
    - $\frac{\mathrm{d}A}{\mathrm{d}t} = \frac{\vec{r} \times \vec{v} \sin \theta}{2} = \frac{|\vec{h}|}{2}$
- If Kepler's second law holds, then $\frac{\mathrm{d}A}{\mathrm{d}t}$ will be $0$
    - $\left(A_{1} = A_{2} \iff \frac{\mathrm{d}A}{\mathrm{d}t} = 0\right)$
    - $\frac{\mathrm{d}}{\mathrm{d}t}\left(\frac{\mathrm{d}A}{\mathrm{d}t}\right) \stackrel{?}{=} 0 \implies \frac{\mathrm{d}}{\mathrm{d}t}\left(\frac{\vec{r} \times \vec{v}}{2}\right) = \frac{\mathrm{d}}{\mathrm{d}t}\left(\frac{\vec{r} \times \dot{\vec{r}}}{2}\right)$
    - $\to -\frac{1}{2} \frac{M}{r^2} \vec{r} \times \hat{r} = 0$
    - $\implies \dot{\vec{h}} = 0$, and thus angular momentum does not change

### Move from 2D to 3D

- Define Polar Bases using Cartesian Basis Vectors
    - $\hat{r} = \cos \theta \hat{x} + \sin \theta \hat{y}$
    - $\hat{\theta} = - \sin \theta \hat{x} + \cos \theta \hat{y}$
- Define position, $\vec{r}$, and velocity, $\dot{\vec{r}}$, in polar coordinates
    - $\vec{r} = r \hat{r}$
    - $\dot{\vec{r}} = r \hat{r} + r \dot{\theta} \hat{\theta}$
- Compute magnitude of $|\vec{h}|$
    - $|\vec{h}| = |\vec{r} \times \dot{\vec{r}}| = \ldots = r^2 \dot{\theta}$

### Validating K1

1. $$
        \begin{align*}
            \ddot{\vec{r}} \times \vec{h} &= \left(-\frac{M}{r^2}\hat{r}\right) \times \left( r^2 \dot{\theta} \hat{h} \right) \\
            \, &= -M \dot{\theta} \vec{\hat{r}} \times \vec{\hat{h}} \\
            \, &= +M \dot{\theta} \hat{\theta} \\
            \, &= M \deriv{t}{\frac{\vec{r}}{r}}
        \end{align*}
   $$
2. $$
        \begin{align*}
            \ddot{\vec{r}} \times \vec{h} &\questeq \deriv{t}{\dot{\vec{r}} \times \vec{h}} \\
            \, &= \ddot{\vec{r}} \times \vec{h} + \vec{r} \times \dot{\vec{h}} \\
            \dot{\vec{h}} &= 0 \\
            \implies \ddot{\vec{r}} \times \vec{h} &= \deriv{t}{\dot{\vec{r}} \times \vec{h}}
        \end{align*}
   $$
3. Put $\fbox{1}$ and $\fbox{2}$ together
    - $$
        \begin{align*}
            \frac{\mathrm{d}}{\mathrm{d}t}\left(??\right) &= ?? \\
            \frac{\mathrm{d}}{\mathrm{d}t}\left(\dot{\vec{r}} \times \vec{h} - \mu \frac{\vec{r}}{r}\right) &= \vec{0}
        \end{align*}
      $$

- What do we know about $\vec{B}$?
    - Constant of motion
    - In the plane of motion
- What don't we know about $\vec{B}$?

    - Where is it pointing?
    - Is there a meaningful geometric analog?

- Where is $\vec{B}$ wrt. $\vec{r}$?
    - $$
        \begin{align*}
            \vec{r} \cdot \vec{B} &= \vec{r} \cdot \left( \vec{v} \times \vec{h} - \mu \frac{\vec{r}}{r} \right)
        \end{align*}
      $$
    - $$
        \begin{align*}
            r B \cos{\theta} &= \vec{r} \cdot \vec{v} \times \vec{h} - \mu \frac{\vec{r} \cdot \vec{r}}{r} \\
            \, &= \ldots \\
            r B \cos{\theta} &= h^{2} + \mu r
        \end{align*}
      $$
