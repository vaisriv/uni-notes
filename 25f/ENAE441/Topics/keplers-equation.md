---
title: Kepler's Equation
tags: [25f, ENAE441, Topics]

date: 2025.09.11
time: 09:34:04-0400
---

> [!IMPORTANT] Kepler's Equation
>
> - $$
>     \begin{align*}
>         \vec{h} =& \left(x \dot{y} - \dot{x} y\right) \hat{i}_{h} \\
>         \, =& \ldots \\
>         \sqrt{\frac{\mu}{a^{3}}} =& \left(1 - e \cos{E}\right) \drv{E}{t} \\
>         \, =& \ldots \\
>         \implies& \boxed{\sqrt{\frac{\mu}{a^{3}}}\left(t_{1}-t_{0}\right) = E - e \sin{E} \bigg|_{E_{0}}^{E_{1}}}
>     \end{align*}
>   $$

- What follows from Kepler's Equation?

## Period, Mean Angular Motion, Mean Anomaly

- One full rotation, $E_{0} = 0 \to E_{f} = 2 \pi$, will take one period: $P$
    - $$
          \begin{align*}
              \sqrt{\frac{\mu}{a^{3}}} \Delta t &= E - e \sin{E} \bigg|_{E_{0}}^{E_{f}} \\
              \sqrt{\frac{\mu}{a^{3}}} P &= E - e \sin{E} \bigg|_{E_{0} = 0}^{E_{f} = 2 \pi} \\
              \sqrt{\frac{\mu}{a^{3}}} P &= 2 \pi
          \end{align*}
      $$
- This can be used to [[two-body-problem#validating-k3|validate K3]]
- Mean Angular Motion:
    - $$
        \begin{align*}
            n &\equiv \sqrt{\frac{\mu}{a^{3}}} \\
            \, &= \frac{2 \pi}{P}
        \end{align*}
      $$
- Putting period and mean angular motion together:
    - $$
        n \left(t_{1}-t_{0}\right) = E - e \sin{E} \bigg|_{E_{0}}^{E_{f}}
      $$
- Mean Anomaly:
    - Evolves linearly with time
    - $$
        M = n \Delta t + M_{0}
      $$

## Reducing Kepler's Equation

- $$
    \begin{align*}
        n \underbrace{\Delta t}_{\text{input}} &= \left(E_{1} - e \sin{E_{1}}\right) - \underbrace{\left(E_{0} - e \sin{E_{0}}\right)}_{\text{const. based on $\theta_{0}$}} \\
        n \Delta t + \left(E_{0} - e \sin{E_{0}}\right) &= E_{1} - e \sin{E_{1}} \\
        n \Delta t + M_{0} &= E_{1} - e \sin{E_{1}} \\
        \implies& \boxed{M = E - e \sin{E}}
    \end{align*}
  $$
- This is the reduced form of Kepler's Equation
- The reduced form is non-linear $\implies$ no analytic solution

### Solving the reduced form

- Newton invents new math again (Numerical Methods)

1. Create an error function:
    - $$
        \fn{f}{E} = M - \left(E - e \sin{E}\right)
      $$
    - If we guess $E$ correctly, $\fn{f}{E} = 0$
        - $E^{*} \forall \fn{f}{E^{*}} = 0$
        - Basically, we want the roots of $\fn{f}{E}$
2. Take a random value: $0 \leq E \leq 2 \pi$
3. Evaluate $\fn{f}{E}$ & $\deriv{E}{\fn{f}{E}}$
4. Fit a line down to the x-crossing (when $y = 0$)
    - Want $\fn{f}{E} + \fn{f^{\prime}}{E} \Delta E = 0$
5. Solve for $\Delta E$:
    - $\Delta E = -\frac{\fn{f}{E}}{\fn{f^{\prime}}{E}}$
6. Repeat $\boxed{3}, \boxed{4}, \boxed{5}$ until $\Delta E <$ user-defined tolerance
