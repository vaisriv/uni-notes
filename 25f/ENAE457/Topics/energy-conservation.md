---
title: Energy Conservation
tags: [25f, ENAE457, Topics]

date: 2025.09.03
time: 16:07:57-0400
---

- Approach #1

    - Start at $v = 0$
    - $$
        \begin{align*}
            \Delta KE & = \frac{1}{2} (M - \Delta m)(-\Delta v)^2 + \frac{1}{2} \Delta m u_e^2 - 0 \\
            \Delta KE & = \frac{1}{2} M \Delta v^2 - \frac{1}{2} \Delta m \Delta v^2 + \frac{1}{2} \Delta m u_e^2 \\
            \to \frac{\Delta KE}{\Delta t} & = \frac{1}{2} M (\frac{\Delta  v}{\Delta t}) \Delta v + \frac{1}{2} \frac{\Delta m}{\Delta t} u_e^2 \\
            \lim_{\Delta t \to 0} \implies P & = \frac{1}{2} \dot{m} u_e^2
        \end{align*}
      $$

- Approach #2
    - Start at $v \neq 0$
    - $$
        \begin{align*}
            \Delta KE & = \frac{1}{2} (M - \Delta m)(v-\Delta v)^2 + \frac{1}{2} \Delta m u_e^2 - \frac{1}{2} M v^2 \\
            \to \frac{\Delta KE}{\Delta t} & = M v (\frac{\Delta  v}{\Delta t}) + \frac{1}{2} \frac{\Delta m}{\Delta t} u_e^2 - \frac{\Delta m}{\Delta t} u_e v \\
            \lim_{\Delta t \to 0} \implies P & = M v \frac{dv}{dt} + \frac{1}{2} \dot{m} u_e (u_e - 2 v)
        \end{align*}
      $$
    - Power to Vehicle: $M v \frac{dv}{dt}$
    - Power to Propellant: $\frac{1}{2} \dot{m} u_e (u_e - 2 v)$

> [!IMPORTANT]
>
> ## Jet Power Equation
>
> - $P_{jet} = \frac{1}{2} \dot{m} u_e^2$
> - Arises from both approaches
> - Rate at which energy goes into creating the exhaust stream
> - Minimum power that must be supplied
