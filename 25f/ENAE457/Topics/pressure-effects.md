---
title: Pressure Effects
tags: [25f, ENAE457, Topics]

date: 2025.10.15
time: 15:20:02-0400
---

## Control Volume Analysis

Take a steady, 1-D control volume around the nozzle. Neglect gravity and assume axisymmetric, adiabatic, inviscid flow, with the exit plane perpendicular to the axis and negligible inlet momentum flux (chamber nearly stagnant).

**Thrust (streamwise):**

$$
\boxed{\,T=\dot{m}v_e+(p_e-p_a)A_e\,}
$$

where $v_e$ is the axial exit speed, $p_e$ the exit static pressure, $p_a$ ambient pressure, and $A_e$ exit area.

- First term $\dot{m}v_e$: **momentum thrust**.
- Second term $(p_e-p_a)A_e$: **pressure (over/under-expansion) thrust**.

> [!IMPORTANT]
> If the nozzle has finite divergence half-angle $\theta$, an idealized correction is $v_{e,\text{axial}}\approx v_e\cos\theta$ (a **divergence loss**); we assume $\theta\approx0$ unless noted.

## Characteristic Velocity

The **chamber performance** metric $c^*$ is independent of $p_a$:

$$
\boxed{\,c^* \equiv \frac{p_0A_t}{\dot{m}}
=\sqrt{\frac{R T_0}{\gamma}}\left(\frac{\gamma+1}{2}\right)^{\!\frac{\gamma+1}{2(\gamma-1)}}\,}
$$

with $p_0,T_0$ the chamber (stagnation) pressure and temperature, $A_t$ the throat area, and $\gamma,R$ the effective (equilibrium/frozen) gas constants.

- **Choked mass flow:**
    $$
    \dot{m}=p_0A_t\sqrt{\frac{\gamma}{R T_0}}\left(\frac{2}{\gamma+1}\right)^{\!\frac{\gamma+1}{2(\gamma-1)}}.
    $$

## Thrust Coefficient

Define the **nozzle performance**:

$$
\boxed{\,C_f\equiv \frac{T}{p_0A_t}
= C_{f,\mathrm{ideal}}+\frac{(p_e-p_a)A_e}{p_0A_t}\,}
$$

with the ideal isentropic piece (perfectly expanded surrogate):

$$
C_{f,\mathrm{ideal}}
=\sqrt{\frac{2\gamma^2}{\gamma-1}\left(\frac{2}{\gamma+1}\right)^{\!\frac{\gamma+1}{\gamma-1}}
\!\left[1-\left(\frac{p_e}{p_0}\right)^{\!\frac{\gamma-1}{\gamma}}\right]}.
$$

**Linking parts:** $T=(p_0A_t)\,C_f=\dot{m}\,c$ with the **effective exhaust velocity** $c=C_f\,c^*$.

## Expansion

- Let $\varepsilon \equiv A_e/A_t$. For isentropic, calorically perfect flow:

- **Area–Mach:**
    $$
    \frac{A}{A_t}=\frac{1}{M}\left[\frac{2}{\gamma+1}\left(1+\frac{\gamma-1}{2}M^2\right)\right]^{\!\frac{\gamma+1}{2(\gamma-1)}},
    \quad M_e>1.
    $$
- **Exit ratios:**
    $$
    \frac{p_e}{p_0}=\left(1+\frac{\gamma-1}{2}M_e^2\right)^{-\frac{\gamma}{\gamma-1}},\qquad
    v_e=\sqrt{\frac{2\gamma}{\gamma-1}RT_0\Bigl(1-(p_e/p_0)^{\frac{\gamma-1}{\gamma}}\Bigr)}.
    $$

### Full Expansion

"full" (a.k.a. perfectly expanded) means $\boxed{p_e=p_a}$.

- Pressure term cancels: $T=\dot{m}v_e$.
- For a **given** $p_0,T_0$ and ambient $p_a$, "full" corresponds to a unique $\varepsilon^\star$ satisfying $p_e(\varepsilon^\star)=p_a$.

### Optimal Expansion

**Design sense:** choose $\varepsilon$ so that at the _design_ ambient $p_a^\dagger$,

$$
\boxed{p_e(\varepsilon_{\mathrm{opt}})=p_a^\dagger}
$$

which **maximizes $C_f$** (and $T$) at that ambient with no separation.

### Design Considerations

> [!NOTE]
>
> - Sea-level engines: pick $\varepsilon_{\mathrm{opt,SL}}$ to avoid strong **over-expansion** $(p_e<p_a)\Rightarrow$ internal shock/separation risk.
> - Vacuum engines: large $\varepsilon$ to raise $v_e$; at sea level they’d be **under-expanded** $(p_e>p_a)$.
