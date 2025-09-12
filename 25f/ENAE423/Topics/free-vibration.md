---
title: Free Vibration
tags: [25f, ENAE423, Topics]

date: 2025.09.11
time: 18:29:05-0400
---

## Damped, Single DoF Motion
- ![Free Vibration Sketch](assets/free-vib-1dof-sketch.png)
- $$
    \begin{align*}
        y &= e^{- \zeta \omega_{n} t} \left(c_{1} \cos{\omega_{d}t} + c_{2} \sin{\omega_{d}t}\right) \\
        \, &= e^{- \zeta \omega_{n} t} C \left(\sin{\omega_{d}t}\right) \\
    \end{align*}
  $$
- $$
    \begin{align*}
        Y_{0} &= e^{- \zeta \omega_{n} t} C \\
        \log{Y_{0}} &= - \zeta \omega_{n} t + \log{C}
    \end{align*}
  $$
- ![Chart of Vibrations, y vs. t](assets/free-vib-1dof-chart.png)
- $$
    \begin{align}
        \log{Y_{1}} &= - \zeta \omega_{n} t_{1} + \log{C} \\
        \log{Y_{2}} &= - \zeta \omega_{n} t_{2} + \log{C} \\
    \end{align}
  $$
- $\boxed{1} - \boxed{2}$:
    - $$
        \begin{align*}
            \log{Y_{1}} - \log{Y_{2}} &= - \zeta \omega_{n} \left(t_{1}-t_{2}\right) \\
            \log{\frac{Y_{1}}{Y_{2}}} &= \zeta \omega_{n} \left(t_{2}-t_{1}\right) \\
            \, &= \zeta \frac{\omega_{d}}{\sqrt{1 - \zeta^{2}}} \left(n T\right)
        \end{align*}
      $$
    - $$
        \begin{align*}
            \delta &= \log{\frac{Y_{1}}{Y_{2}}} \\
            \omega_{d} T &= 2 \pi \\
            \implies& \boxed{\zeta = \frac{\delta}{\sqrt{\left(2 \pi n\right)^{2} + \delta^{2}}}}
        \end{align*}
      $$

> [!EXAMPLE]
> - ![Free Vibration Beam Example Sketch](assets/free-vib-1dof-beam-sketch.png)
> - Knowns:
>     - $$
>         \begin{align*}
>             y_{\text{static}} &= 5.08 \times 10^{-3} \mathrm{\left[m\right]} \\
>             mg &= 267 \mathrm{\left[N\right]}
>         \end{align*}
>       $$
> - Static:
>     - $$
>         \begin{align*}
>             mg &= k y_{\text{static}} \\
>             \implies k &= \frac{mg}{y_{\text{static}}} \\
>             \, &= 5.256 \times 10^{4} \mathrm{\left[\frac{N}{m}\right]}
>         \end{align*}
>       $$
> - Cut the line:
>     - Beam begins oscillating
>     - ![Beam Example Chart of Vibration, y vs. t](assets/free-vib-1dof-beam-chart.png)
> - Knowns:
>     - $$
>         \begin{align*}
>             t_{1} &= 0 \mathrm{\left[s\right]} \\
>             t_{2} &= 1.5 \mathrm{\left[s\right]} \\
>             \Delta t &= 3T \\
>             \fn{y}{t_{2}} &= 2.54 \times 10^{-3} \mathrm{\left[m\right]} \\
>         \end{align*}
>       $$
> - Oscillation:
>     - $$
>         \begin{align*}
>             \delta &= \log{\frac{Y_{1}}{Y_{2}}} \\
>             \, &= \log{2} \\
>             \zeta &= \frac{\delta}{\sqrt{6 \pi^{2} + \delta^{2}}} \\
>             \, &= 0.0367 \\
>             \Delta t &= 3T \\
>             \implies T &= \frac{\Delta t}{3} \\
>             \, &= 0.5 \mathrm{\left[s\right]} \\
>             \omega_{d} &= \frac{2\pi}{T} \\
>             \omega_{n} &= \sqrt{\frac{k}{m}} \\
>             \implies m &= \frac{k}{\omega_{n}^{2}} \\
>             \, &= 332.8 \mathrm{\left[kg\right]} \\
>             2 \zeta \omega_{n} &= \frac{c}{m} \\
>             \implies c &= 2 \zeta \omega_{n} m \\
>             \, &= 307 \mathrm{\left[\frac{N-s}{m}\right]}
>         \end{align*}
>       $$
> - Energy:
>     - $$
>         \begin{align*}
>             E &= \frac{1}{2} k y^{2} \\
>             E_{1} &= \frac{1}{2} k Y_{1}^{2} \\
>             E_{2} &= \frac{1}{2} k Y_{2}^{2} \\
>             \implies \frac{E_{1}-E_{2}}{E_{1}} &= 1 - \frac{E_{2}}{E_{1}} \\
>             \, &= 1 - \left(\frac{Y_{2}}{Y_{1}}\right)^{2} \\
>             \, &= 0.75 \implies \text{75\% Energy Lost}
>         \end{align*}
>       $$
