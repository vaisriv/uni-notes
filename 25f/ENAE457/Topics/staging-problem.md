---
title: Staging Problem
tags: [25f, ENAE457, Topics]

date: 2025.09.08
time: 21:25:43-0400
---

## General Considerations

- Consider a staged launch vehicle:
    1. Stage 1:
        - Thrusts and expends propellant, reaching speed $V_{1}$
        - Stage 1 drops off
    2. Stage 2:
        - Thrusts and expends propellant, adding incremental speed $V_{2}$
        - We are ignoring gravity losses here (bad)
- For Stage 2:
    - $$
        \lambda_{2} = \frac{M_{L}}{M_{0, 2}-M_{L}}
      $$
    - $$
        \epsilon_{2} = \frac{M_{S, 2}}{M_{0, 2}-M_{L}}
      $$
    - $$
        MR_{2} = \frac{1 + \lambda_{2}}{\epsilon_{2} + \lambda_{2}}
      $$
- For Stage 1:
    - $$
        \lambda_{1} = \frac{M_{0, 2}}{M_{0, 1}-M_{0, 2}}
      $$
    - $$
        \epsilon_{1} = \frac{M_{S, 1}}{M_{0, 1}-M_{0, 2}}
      $$
    - $$
        MR = \frac{1 + \lambda_{1}}{\epsilon_{1} + \lambda_{1}}
      $$
- Generally, payload of $i^{\text{th}}$ stage is initial mass of the $\left(i + 1\right)^{\text{th}}$ stage

## Why the push for Single Stage to Orbit (SSO)?

- With more stages:
    - Increases complexity
    - Increases cost
    - More things can go wrong (increases risk)
- Advances in material technology made SSO _feasible_
    - SSO was still not found to be advantageous
    - Other tech advances won out

## Staging Basics

- Assume $u$ is the same for each stage (same technology throughout the rocket)
- Assume $\epsilon$ is the same also (simplifying assumption)
- $$
    \frac{\Delta V_{\text{total}}}{u} = \sum_{i}\left(\mathrm{log}\left(\frac{1+\lambda_{i}}{\epsilon+\lambda_{i}}\right)\right)
  $$
- $$
    \begin{align*}
        \Delta V_{i} &= u \mathrm{\,log}\left({\frac{M_{0}}{M_{F}}}\right)_{i} \\
        \, &= u \mathrm{\,log}\left(\frac{1+\lambda_{i}}{\epsilon+\lambda_{i}}\right)
    \end{align*}
  $$
- To maximize $\Delta V_{\text{total}}$, we must optimize $\lambda_{i}$

> [!IMPORTANT]
>
> ## Constraint Equation
>
> - $$
>       \frac{M_{L}}{M_{0, 1}} = \prod_{i=1}^{N}\left(\frac{\lambda_{i}}{1+\lambda_{i}}\right)
>   $$
> - Optimize through [[gradient-descent | gradient descent]]
