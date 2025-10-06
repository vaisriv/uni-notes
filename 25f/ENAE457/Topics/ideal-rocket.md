---
title: Ideal Rocket
tags: [25f, ENAE457, Topics]

date: 2025.10.06
time: 19:51:50-0400
---

## assumptions
We adopt the classical **ideal** model for analytic clarity:
- steady, 1-D, adiabatic, inviscid flow through chamber–throat–nozzle;
- calorically perfect gas (constant $\gamma, R$), no boundary layers or shocks inside the nozzle;
- **frozen chemistry** (composition fixed through nozzle), no multiphase;
- nozzle axis aligned with thrust (no divergence loss) and **perfect expansion** when $p_e=p_a$.

Symbols: chamber/stagnation $(\,\cdot\,)_0$; exit $(\,\cdot\,)_e$; throat area $A_t$; exit area $A_e$; expansion ratio $\varepsilon \equiv A_e/A_t$; ambient pressure $p_a$.

## rocket engine analysis (thrust, $I_{sp}$, $c^*$, $C_f$)
**Thrust** (control-volume momentum + pressure):
$$
\boxed{\,T=\dot{m}v_e+(p_e-p_a)A_e\,}.
$$

**Specific impulse** (effective exhaust velocity $c$):
$$
I_{sp}=\frac{T}{\dot{m}g_0},\qquad c\equiv I_{sp}g_0=\frac{T}{\dot{m}}.
$$

**Characteristic velocity** (chamber performance):
$$
\boxed{\,c^*\;\equiv\;\frac{p_0 A_t}{\dot{m}}
=\sqrt{\frac{R T_0}{\gamma}}\left(\frac{\gamma+1}{2}\right)^{\!\frac{\gamma+1}{2(\gamma-1)}}\,}.
$$

**Thrust coefficient** (nozzle performance):
$$
\boxed{\,C_f\;\equiv\;\frac{T}{p_0 A_t}
=C_{f,\mathrm{ideal}}+\frac{(p_e-p_a)A_e}{p_0 A_t}\,},
$$
with the ideal (perfectly expanded) piece
$$
C_{f,\mathrm{ideal}}
=\sqrt{\frac{2\gamma^2}{\gamma-1}\left(\frac{2}{\gamma+1}\right)^{\!\frac{\gamma+1}{\gamma-1}}
\!\left[1-\left(\frac{p_e}{p_0}\right)^{\!\frac{\gamma-1}{\gamma}}\right]}.
$$

**Linking the pieces:** $c=C_f\,c^*$ and (for $p_e=p_a$) $T=\dot{m}c$.

## nozzle / exit-flow analysis (isentropic)
For isentropic steady flow of a calorically perfect gas:
$$
\frac{T}{T_0}=\left(1+\frac{\gamma-1}{2}M^2\right)^{-1},\quad
\frac{p}{p_0}=\left(1+\frac{\gamma-1}{2}M^2\right)^{-\frac{\gamma}{\gamma-1}},
$$
$$
\frac{\rho}{\rho_0}=\left(1+\frac{\gamma-1}{2}M^2\right)^{-\frac{1}{\gamma-1}},\quad
v = M\sqrt{\gamma R T}.
$$

**Area–Mach relation:**
$$
\boxed{\,\frac{A}{A_t}=\frac{1}{M}\left[\frac{2}{\gamma+1}\left(1+\frac{\gamma-1}{2}M^2\right)\right]^{\!\frac{\gamma+1}{2(\gamma-1)}}\,}.
$$
Given $\varepsilon=A_e/A_t$, solve for $M_e>1$, then obtain
$$
\frac{p_e}{p_0}=\left(1+\frac{\gamma-1}{2}M_e^2\right)^{-\frac{\gamma}{\gamma-1}},\qquad
v_e=\sqrt{\frac{2\gamma}{\gamma-1}RT_0\left(1-\left(\frac{p_e}{p_0}\right)^{\!\frac{\gamma-1}{\gamma}}\right)}.
$$

**Choked mass flow** ( $M_t=1$ ):
$$
\boxed{\,\dot{m}=p_0 A_t\sqrt{\frac{\gamma}{R T_0}}\left(\frac{2}{\gamma+1}\right)^{\!\frac{\gamma+1}{2(\gamma-1)}}\,}.
$$

## matching the exit to ambient (perfect/under/over expansion)

### perfectly expanded
$$
\boxed{\,p_e=p_a\,}\quad\Rightarrow\quad T=\dot{m}v_e,\;\; \text{maximum ideal nozzle efficiency for given }p_0,T_0,\varepsilon.
$$

### underexpanded flow
$$
p_e>p_a.
$$
The jet **continues expanding outside** the nozzle: Prandtl–Meyer fans originate at the lip; shock-cell (Mach diamond) structure forms downstream as the plume adjusts toward ambient. More expansion potential remains → a larger $\varepsilon$ (or lower $p_a$) would raise $v_e$ and $C_f$.

### overexpanded flow
$$
p_e<p_a.
$$
The external environment **compresses** the jet; an internal **compression shock** can form near/inside the nozzle. If sufficiently overexpanded, **separation** may occur (adverse side-load risk, loss of performance). Designers avoid severe overexpansion at expected $p_a$ or adopt altitude-compensating contours (e.g., aerospike, expansion–deflection).

> Practical note: ascent engines at sea-level often accept mild off-design operation; upper-stage nozzles (large $\varepsilon$) target near-vacuum $p_a$ and operate greatly underexpanded at low altitude (but are fired in vacuum).

## quick recipes

### quick sizing (ideal, given $p_0, T_0, \gamma, R, \varepsilon, p_a$)
1) Solve $M_e$ from $A_e/A_t=\varepsilon$ using the area–Mach relation.
2) Compute $p_e/p_0, T_e/T_0$.
3) Get $v_e$ from isentropic energy.
4) If $p_e\ne p_a$, include pressure term $ (p_e-p_a)A_e $ in $T$.
5) Use $\dot{m}(p_0,T_0,A_t)$ and $c^*, C_f$ to report $I_{sp}$.

### design heuristics
- **Sea-level engines:** choose $\varepsilon$ so $p_e\approx p_a$ near peak static thrust; limit overexpansion to avoid separation.
- **Vacuum engines:** maximize $\varepsilon$ (geometrically feasible) for higher $v_e$; accept strong underexpansion at sea level (usually irrelevant operationally).
- **Altitude compensating nozzles:** mitigate off-design losses across $p_a$ sweep.

