---
title: Two Body Problem
tags: [25f, ENAE441, Topics]

date: 2025.09.04
time: 09:44:04-0400
---

- ![Sketch of the Two Body Problem (from Dr. Martin's notes)](assets/2BP-sketch.png)

## Kepler

1. Planet orbits follow an [[geometry#ellipse|Ellipse]]
2. Motion of planets carve out equal area in ellipses per unit time
    - $A_{1} = A_{2}$ for fixed $\Delta t$
3. Period of motion is related to semi-major axis (SMA)
    - $p^2 \approx a^3$
4. Geometric Solution to 2BP
    - $r \cos{\theta} = \frac{p}{1 + e \cos{\theta}}$

## Newton

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

- Using the triangle [[geometry#small-angle-approximation|small angle approximation]]:
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
            \deriv{t}{\dot{\vec{r}} \times \vec{h}} &= \mu \deriv{t}{\frac{\vec{r}}{r}} \\
            \frac{\mathrm{d}}{\mathrm{d}t}\left(\dot{\vec{r}} \times \vec{h} - \mu \frac{\vec{r}}{r}\right) &= \vec{0}
        \end{align*}
      $$

> [!NOTE] Quick sidebar for some questions
>
> - What do we know about $\vec{B}$?
>     - Constant of motion
>     - In the plane of motion
> - What don't we know about $\vec{B}$?
>
>     - Where is it pointing?
>     - Is there a meaningful geometric analog?
>
> - Where is $\vec{B}$ wrt. $\vec{r}$?
>     - $$
>         \begin{align*}
>             \vec{r} \cdot \vec{B} &= \vec{r} \cdot \left( \vec{v} \times \vec{h} - \mu \frac{\vec{r}}{r} \right)
>         \end{align*}
>       $$
>     - $$
>         \begin{align*}
>             r |\vec{B}| \cos{\theta} &= \vec{r} \cdot \vec{v} \times \vec{h} - \mu \frac{\vec{r} \cdot \vec{r}}{r} \\
>             \, &= \ldots \\
>             r |\vec{B}| \cos{\theta} &= h^{2} + \mu r
>         \end{align*}
>       $$
> - This gives:
>     - $$
>         r = \frac{\frac{h^{2}}{\mu}}{1 + \frac{|\vec{B}|}{\mu} \cos{\theta}}
>       $$
>     - Newton's "Calculus" thing might actually work!

4. Compare physical quantities with geometric:

    - $$
        p = \frac{h^{2}}{\mu} \checkmark
      $$
    - $$
        e = \frac{|\vec{B}|}{\mu} \checkmark
      $$

5. Tie up loose ends by defining _eccentricity vector_:
    - $$
        \vec{e} = \frac{\vec{B}}{\mu} = \frac{\vec{v} \times \vec{h}}{\mu} - \frac{\vec{r}}{r} = e \hat{i}_{e}
      $$
    - Upon inspection of the [[geometry#ellipse|ellipse image]], $\vec{e}$ lies on the semi-major axis and points to periapsis
    - Like with $\vec{h}$, we want to know about $\vec{e}$
        - $$
            \begin{align*}
                E &= KE + U \\
                \, &= \frac{1}{2} m v^{2} - \frac{GMm}{r} \\
                \epsilon &= \frac{E}{m} = \frac{v^{2}}{2} - \frac{\mu}{r} \\
                \, &= \ldots \\
                \epsilon &= -\frac{\mu}{2a}
            \end{align*}
          $$

### Using this information

> [!IMPORTANT] Vis-Viva Equation
>
> - $$
>     \begin{align*}
>         \frac{v^{2}}{2} - \frac{\mu}{r} =& -\frac{\mu}{2a} \\
>         \, \implies& \boxed{v^{2} = \mu \left(\frac{2}{r} - \frac{1}{a}\right)}
>     \end{align*}
>   $$
> - Means that if we know position on the elliptical orbit, we immediately know the velocity (and vice-versa)
> - We can simplify beyond to only need $\theta$
> - $$
>     \begin{align*}
>         v^{2} =& \mu \left(\frac{2}{\left(\frac{p}{1 + e \cos{\theta}}\right)} - \frac{1}{a}\right) \\
>         \, =& \ldots \\
>         \, \implies& \boxed{v = \frac{\mu}{h} \sqrt{1 + 2 e \cos{\theta} + e^{2}}}
>     \end{align*}
>   $$

## Prediction

### Motivation

- Newton wasn't happy with being able to describe the motion, he wanted to predict the motion
- Want: $\fn{r}{\theta}, \fn{v}{\theta} \to \fn{r}{t}, \fn{v}{t}$
- This way, we can know where the planets **_will be_** at some $\Delta t$ in the future

### Creating the prediction model

- $$
    \begin{align*}
        h &= r \theta \\
        \, &= \ldots \\
        \intd{t_{0}}{t_{1}}{h}{t} &= \intd{\theta_{0}}{\theta_{1}}{\frac{p^{2}}{\left(1 + e \cos{\theta}\right)^{2}}}{\theta} \\
        \intd{t_{0}}{t_{1}}{\sqrt{\frac{\mu}{p^{3}}}}{t} &= \intd{\theta_{0}}{\theta_{1}}{\frac{1}{\left(1 + e \cos{\theta}\right)^{2}}}{\theta}
    \end{align*}
  $$
- Oh my! That doesn't look fun to integrate (especially if you just _invented calculus_ and are the only one on the planet who knows integration)
- Let's think:
    - Question: Is there a more integration-friendly way to represent/model this motion?
    - Answer: Yes! Let's use the [[geometry#eccentric-anomaly|eccentric anomaly]] of the ellipse
- Let's rederive $\vec{h}$ using Eccentric Anomaly
    - $$
        \begin{align*}
            \vec{r} &= x \hat{i}_{e} + y \hat{i}_{p} \\
            \dot{\vec{r}} &= \dot{x} \hat{i}_{e} + \dot{y} \hat{i}_{p} \\
            \vec{h} &= \vec{r} \times \dot{\vec{r}} \\
            \, &= \ldots \\
            \vec{h} &= \left(x \dot{y} - \dot{x} y\right) \hat{i}_{h}
        \end{align*}
      $$
    - $$
        \begin{align*}
            \fn{x}{E} &= a \left(\cos{E} - e\right) \\
            \fn{y}{E} &= a \sqrt{1 - e^{2}} \sin{E} \\
            \fn{\dot{x}}{E} &= -a \sin{E} \drv{E}{t} \\
            \fn{\dot{y}}{E} &= a \sqrt{1 - e^{2}} \cos{E} \drv{E}{t}
        \end{align*}
      $$
- Plug into $|\vec{h}|$
- This leads directly into [[keplers-equation|Kepler's Equation]]

### Validating K3

- $$
    \begin{align*}
        P &= 2 \pi \sqrt{\frac{a^{3}}{\mu}} \\
        P^{2} &= 4 \pi^{2} \frac{a^{3}}{\mu} \\
        P^{2} &= \frac{4 \pi^{2}}{\mu} a^{3} \\
        \implies P^{2} &\propto a^{3} \text{ q.e.d}
    \end{align*}
  $$
