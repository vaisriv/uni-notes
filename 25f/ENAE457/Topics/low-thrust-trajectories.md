---
title: Low Thrust Trajectories
tags: [25f, ENAE457, Topics]

date: 2025.10.06
time: 19:37:38-0400
---

## setup & notation

State: $\vecb{r}\in \, \mathfrak{Re}^{3}$, $\vecb{v}=\drv{\vecb{r}}{t}$, $\mu$ (primary’s GM)
Thrust: magnitude $T$, mass $m$, specific acceleration $\alpha \equiv T/m$.
Unit triad along the orbit: $\{\hat{\vecb{r}},\,\hat{\vecb{t}},\,\hat{\vecb{n}}\}$ (radial, along-track/circumferential, out-of-plane).  
Decompose thrust acceleration:
$$
\vecb{a}_T=\alpha_R\,\hat{\vecb{r}}+\alpha_T\,\hat{\vecb{t}}+\alpha_N\,\hat{\vecb{n}},\quad
\alpha=\sqrt{\,\alpha_R^2+\alpha_T^2+\alpha_N^2\,}.
$$

Equations of motion:
$$
\ddrv{\vecb{r}}{t}=-\frac{\mu}{r^3}\vecb{r}+\vecb{a}_T.
$$

Conserved quantities without thrust: specific energy $\epsilon=\frac{\vecb{v}\!\cdot\!\vecb{v}}{2}-\frac{\mu}{r}$, specific angular momentum $\vecb{h}=\vecb{r}\times\vecb{v}$. With thrust:
$$
\drv{\epsilon}{t}=\vecb{v}\cdot\vecb{a}_T,\qquad
\drv{\vecb{h}}{t}=\vecb{r}\times\vecb{a}_T.
$$

---

## trajectories (LTT)

The “trajectory shaping” intuition:

- **Energy change** comes from the component of thrust **along velocity** (circumferential/tangential):
  $$
  \drv{\epsilon}{t}=v\,\alpha_T+v_r\,\alpha_R.
  $$
  For near-circular motion, $v_r\approx0\Rightarrow \drv{\epsilon}{t}\approx v\,\alpha_T$.

- **Plane/orientation change** comes from **out-of-plane** thrust:
  $$
  \drv{\vecb{h}}{t}=\vecb{r}\times(\alpha_N\hat{\vecb{n}})=r\,\alpha_N\,\hat{\vecb{t}}\quad\Rightarrow\quad
  \text{tilt of the orbit plane (}\drv{i}{t},\,\drv{\Omega}{t}\text{)}.
  $$

- **Eccentricity** is excited by **radial** thrust (most strongly near peri/apoapsis). A purely tangential control law can keep $e\approx0$ to produce smooth spirals.

> **Rule of thumb:** to **raise $a$** efficiently, point thrust along $\hat{\vecb{t}}$; to **shape $e$**, inject a radial component timed with true anomaly; to **tilt the plane**, use $\alpha_N$.

---

## spirals (LTS)

Assume a planar, near-circular orbit ($e\approx0$) with thrust held **tangential** ($\alpha=\alpha_T$).

### semimajor-axis growth
Specific energy $\epsilon=-\frac{\mu}{2a}\Rightarrow \drv{\epsilon}{t}=\frac{\mu}{2a^2}\drv{a}{t}$.
For circular motion $v=\sqrt{\mu/a}$ and $\drv{\epsilon}{t}\approx v\,\alpha$. Hence
$$
\boxed{\,\drv{a}{t}=\frac{2 a^{3/2}}{\sqrt{\mu}}\;\alpha\,}
$$
(valid while $e\approx0$).

### time to spiral from $a_0$ to $a_1$
$$
t=\int_{a_0}^{a_1}\frac{\mathrm{d}a}{\drv{a}{t}}
=\frac{\sqrt{\mu}}{\alpha}\Bigl(\frac{1}{\sqrt{a_0}}-\frac{1}{\sqrt{a_1}}\Bigr).
$$

### accumulated $\Delta v$
For constant $\alpha$, $\Delta v=\inti{\alpha}{t} = \alpha\,t\Rightarrow$
$$
\boxed{\,\Delta v_{\text{LTS}}=\sqrt{\mu}\Bigl(\frac{1}{\sqrt{a_0}}-\frac{1}{\sqrt{a_1}}\Bigr).\,}
$$
As $a_1\to\infty$ (escape), $\Delta v_{\text{LTS}}\to\sqrt{\mu/a_0}=v_{\text{circ},0}$.

### spiral in $r(\theta)$ form (useful for geometry/coverage)
With $n=\sqrt{\mu/a^3}$ and $a\approx r$ for circular paths,
$$
\drv{r}{\theta}=\frac{\drv{r}{t}}{\drv{\theta}{t}}
=\frac{\drv{a}{t}}{n}
=\frac{2\,a^{3/2}\alpha}{\sqrt{\mu}}\cdot\frac{a^{3/2}}{\sqrt{\mu}}
=\boxed{\,\frac{2\alpha}{\mu}\,r^3\,}.
$$
Integrating: $-\frac{1}{2 r^2}=\frac{2\alpha}{\mu}\,\theta+C\Rightarrow r(\theta)$ increases monotonically under prograde thrust.

---

## impulsive escape (from circular orbit)

From a circular orbit of radius $r_0$, $v_{\text{circ},0}=\sqrt{\mu/r_0}$.
Parabolic (escape) speed at $r_0$: $v_{\text{esc},0}=\sqrt{2\mu/r_0}$.
A single **impulsive** burn to escape requires
$$
\boxed{\,\Delta v_{\text{imp,esc}}=(\sqrt{2}-1)\,v_{\text{circ},0}\approx0.4142\,v_{\text{circ},0}\,}.
$$

Compare with continuous tangential thrust to escape (letting $a_1\to\infty$):
$$
\Delta v_{\text{LTS,esc}}=v_{\text{circ},0}\quad\text{(larger due to gravity/finite-burn losses)}.
$$

---

## trajectory equations for LTS (workhorse forms)

For low-thrust design, two robust, implementable differential relations are:

### energy & angular momentum
$$
\boxed{\,\drv{\epsilon}{t}=\vecb{v}\cdot\vecb{a}_T\,},\qquad
\boxed{\,\drv{\vecb{h}}{t}=\vecb{r}\times\vecb{a}_T\,}.
$$
- For **tangential thrust** in near-circular orbits:
  $$
  \drv{a}{t}=\frac{2 a^{3/2}}{\sqrt{\mu}}\alpha_T,\qquad
  \drv{e}{t}\approx 0,\qquad
  \drv{i}{t}\approx 0.
  $$
- If a small **radial** component $\alpha_R$ is introduced, it excites $e$ roughly proportionally to $\alpha_R$ with strongest effect near $f\in\{0,\pi\}$.

### planar spiral in anomaly
Using $r=a(1-e^2)/(1+e\cos{f})$ and keeping $e\approx0$, the ODE
$$
\drv{r}{\theta}=\frac{2\alpha}{\mu}\,r^3
$$
gives an analytic spiral useful for coarse trajectory sketches and coverage calculations.

> **Note:** For full generality (time-optimal or constrained pointing laws), use the Gauss variational equations in $(a,e,i,\Omega,\omega,f)$ with $(\alpha_R,\alpha_T,\alpha_N)$. In these notes we emphasize the circular/tangential specializations actually used for spiral design; see also the Week 6 Part 2 notes for the full element-rate set.

---

## efficiency comparison
We compare **ideal impulsive** maneuvers to **continuous tangential (circumferential)** thrust at the **same $I_{\!sp}$** (so $\Delta v$ is a proxy for propellant).

### circular $a_0\to a_1$
- **Impulsive (Hohmann)**:
  $$
  \Delta v_H
  =\sqrt{\frac{\mu}{a_0}}\Bigl(\sqrt{\frac{2a_1}{a_0+a_1}}-1\Bigr)
  +\sqrt{\frac{\mu}{a_1}}\Bigl(1-\sqrt{\frac{2a_0}{a_0+a_1}}\Bigr).
  $$
- **Continuous tangential (LTS)** (near-circular throughout):
  $$
  \Delta v_{\text{LTS}}=\sqrt{\mu}\Bigl(\frac{1}{\sqrt{a_0}}-\frac{1}{\sqrt{a_1}}\Bigr).
  $$

**Observation:** $\Delta v_{\text{LTS}}>\Delta v_H$ for raises of practical interest. The gap is the well-known **gravity/steering loss** of finite-thrust spirals. (High $I_{\!sp}$ can still reduce **mass** vs. chemical impulsive, despite larger $\Delta v$.)

### escape from circular
$$
\Delta v_{\text{imp,esc}}=(\sqrt{2}-1)\,v_{\text{circ},0}\quad\text{vs.}\quad
\Delta v_{\text{LTS,esc}}=v_{\text{circ},0}.
$$
Impulsive escape is most $\Delta v$–efficient; LTS trades $\Delta v$ for feasibility with low thrust and high $I_{\!sp}$.

---

## design notes & controls
- To **hold $e\approx0$** during a raise, keep thrust nearly tangential and modulate a small $\alpha_R$ in anti-phase with $v_r$.  
- For **time-optimal** spirals under thrust/pointing constraints, use optimal-control (Pontryagin) with the above dynamics; bang-bang in-plane pointing between near-tangential and slightly inward-radial can reduce time at the cost of modest $e$ excursions.
- Out-of-plane targets (inclination change) are cheapest near **high $r$** where $v$ is low; combine with raises to “pay” for tilts at apoapsis.

---

### quick reference (circular, tangential thrust)
$$
    \begin{align*}
        \drv{a}{t}&=\frac{2 a^{3/2}}{\sqrt{\mu}}\alpha\\
        t(a_0\!\to\!a_1)&=\frac{\sqrt{\mu}}{\alpha}\Bigl(\frac{1}{\sqrt{a_0}}-\frac{1}{\sqrt{a_1}}\Bigr) \\
        \Delta v(a_0\!\to\!a_1)&=\sqrt{\mu}\Bigl(\frac{1}{\sqrt{a_0}}-\frac{1}{\sqrt{a_1}}\Bigr)\\
        \Delta v_{\text{esc}}^{\text{LTS}}&=v_{\text{circ},0}.
    \end{align*}
$$
