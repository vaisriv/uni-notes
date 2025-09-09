---
title: System Analysis and Design
tags: [25f, ENAE457, Topics]

date: 2025.09.08
time: 20:14:02-0400
---

How does [[energy-conservation#jet-power | jet power]] scale?

## Analysis of an existing system

- Assume system consists of:
    1. Structural mass
    2. Propelland mass
    3. Tank mass
    - These 3 are arbitrary metrics, and in actuality depend on our goal design
- Assume propellant is used for 2 sequential maneuvers:
    - $$
        \begin{align*}
            M_{0, 1} &= M_{S} + M_{T} + M_{P, 1} + M_{P, 2} + M_{P, \text{remaining}} \\
            M_{0, 2} &= M_{0, 1} - M_{P, 1} \\
            M_{0, 3} &= M_{0, 2} - M_{P, 2}
        \end{align*}
      $$
    - Note that here we assume that the same thruster is used for both maneuvers (i.e. $u_{1} = u_{2} = u$)
- $$
    \begin{align*}
        \Delta V_{1} &= u \log{\frac{M_{0, 1}}{M_{0, 2}}} \\
        \Delta V_{2} &= u \log{\frac{M_{0, 2}}{M_{0, 3}}} \\
        \Delta V_{\text{total}} &= \Delta V_{1} + \Delta V_{2} \\
        \, &= \ldots \\
        \, &= u \log{\frac{M_{0, 1}}{M_{0, 3}}}
    \end{align*}
  $$

## Optimizing a system

- Construct $\Delta V$ as the function of known parameters:
    - $$
        \begin{align*}
            \Delta V &= u \log{\frac{M_{S} + M_{T} + M_{P}}{M_{S} + M_{T}}} \\
            \Delta V &= \fn{f}{u, M_{S}, M_{T}, M_{P}}
        \end{align*}
      $$
    - $M_{P}$ is the total propellant mass
    - $\Delta V$ is a function of 4 parameters
- Assume $u$ is specified and not being optimized at this point
- Non-dimensionalize:
    - $$
        \frac{\Delta V}{u} = \mathrm{\,log} \left( \frac{\frac{M_{S}}{M_{P}} + \frac{M_{T}}{M_{P}} + 1}{\frac{M_{S}}{M_{P}} + \frac{M_{T}}{M_{P}}} \right)
      $$
- Now we only have 2 parameters
- $\frac{M_{T}}{M_{P}}$ likely directly related
- $\frac{M_{S}}{M_{P}}$ might be related:
    - More tank and propellant
    - Assume **not related** for now
    - As modeled, other items (payload) would be a part of $M_{S}$
- For the tank:
    - Assume a _thin-walled_ spherical pressure vessel
    - Factor of Safety: $F_{S} = 1$ (for now)
    - $$
        \begin{align*}
            \text{Pressure} \times \text{Projected Area} &= \text{Stress} \times \text{Material Area} \\
            P (\pi R^{2}) &= \sigma_{y} (2 \pi R) t F_{S} \\
            \implies t &= \frac{PR}{2 \sigma_{y}}
        \end{align*}
      $$
    - Volume:
        - Tank: $V_{T} = \frac{4}{3} \pi R^{3}$ ($t \ll R$)
        - Material: $V_{M} = 4 \pi R^{2} t = \ldots = V_{T} \left(\frac{3 P}{2 \sigma_{y}}\right)$
    - Mass:
        - [[propellant#density | Propellant Density]]: $\rho_{P}$
        - Material Density: $\rho_{M}$
    - $$
        \begin{align*}
            M_{P} &= V_{T} \rho_{P} \\
            M_{T} &= V_{M} \rho_{M} \\
            \frac{M_{T}}{M_{P}} &= \frac{3 \rho_{M} P}{2 \rho_{P} \sigma_{y}}
        \end{align*}
      $$
    - Generally, would like:
        - $M_{T}$ small
        - $\frac{\rho_{M}}{\sigma}$ as small as possible (material selection)
        - For ideal gas: lower storage temperature
        - For two-phase: lower storage temperature & low quality (i.e. mostly liquid)

## Let's do it again

- Mass ratio: $MR$
    - **Often defined in different ways**
    - Sometimes as $> 1$
        - $MR = \frac{M_{f}}{M_{0}}$
    - Sometimes as $< 1$
        - $MR = \frac{M_{o}}{M_{0}}$
        - _We use this one_
- $\Delta V = u \log{MR}$
    - We know that $MR > 0$, because $\Delta V > 0$
- Now assume our system:
    1. Structure $M_{S}$: Fixed and we don't care about it
    2. Payload $M_{L}$: What we want to deliver
    3. Propellant $M_{P}$: Consumable, changes with each maneuver
- Note that this is different from the previous example, so we have a different analysis goal
- Total Initial Mass:
    - $$
        M_{0} = M_{S} + M_{P} + M_{L}
      $$
- Final Mass:
    - $$
        M_{f} = M_{S} + M_{P} + M_{L} = M_{0} - M_{P}
      $$
    - All propellant consumed
- Thus:
    - $$
        MR = \frac{M_{0}}{M_{S} + M_{L}} = \frac{M_{0}}{M_{0} - M_{P}}
      $$
- Payload Ratio:
    - $$
        \lambda = \frac{M_{L}}{M_{0} - M_{L}} = \frac{M_{L}}{M_{P}+M_{S}}
      $$
- Structure Ratio:
    - $$
        \epsilon = \frac{M_{S}}{M_{0} - M_{L}} = \frac{M_{S}}{M_{P}+M_{S}}
      $$
- Inert Mass Fraction:
    - $$
        \delta = \frac{M_{\text{in}}}{M_{0}}
      $$
- Payload Mass Fraction:
    - $$
        \lambda = \frac{M_{L}}{M_{0}}
      $$
- Mass Ratio:
    - $$
        r = \lambda + \delta = \frac{M_{f}}{M_{0}}
      $$
- Thus:
    - $$
        MR = \frac{1+\lambda}{\epsilon + \lambda} = \frac{M_{0}}{M_{f}}
      $$
