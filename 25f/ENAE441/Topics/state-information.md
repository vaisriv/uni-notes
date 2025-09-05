---
title: State Information
tags: [25f, ENAE441, Topics]

date: 2025.09.02
time: 10:03:21-0400
---

> [!IMPORTANT] State Information is the processs through which we determine a system's sate $x$ using indirect measurements $y$

## State Systems

> [!Example]
> Let's try to find a dog's breed
> $x(t) = \text{fixed}$ > $X = \text{Dog Breed}$ > $Y = [\text{Yellow Fur}, \text{Short Hair}]$
> Our data is in two categories: deterministic and stochastic
>
> - Deterministic:
>     - No randomness/noise
>     - All dynamics are known
>     - Measurements are perfect
> - Stochastic:
>     - Randomness/noise in system
>     - Some dynamics that are unknown
>     - Measurements have error

- Filters
    - The algoriths used to sift out information from measurements
    - $Y \to \fbox{Filter} \to X$
- Orbit Determination:
    - Using state estimation to determine position & velocity (orbit) of an object in space

> [!NOTE]
>
> ## State Estimation
>
> - $\text{range} = e$
> - $\text{range rate} = \dot{e}$
> - $\vec{Y} = \begin{bmatrix} e \\ \dot{e} \end{bmatrix} \quad \underrightarrow{\text{filters}} \quad \vec{X} = \begin{bmatrix} \vec{r} \\ \vec{v} \end{bmatrix} \quad \underrightarrow{\text{transform}} \quad \text{O.E.s} = \begin{bmatrix} \alpha \\ e \\ i \\ \omega \\ \Omega \\ \nu \end{bmatrix}$
> - $\vec{Y} = \begin{bmatrix} y_1 \\ y_2 \\ y_3 \end{bmatrix} \quad \underrightarrow{\text{Filters}} \quad \vec{X} = \begin{bmatrix} \vec{r} \\ \vec{v} \end{bmatrix} + \text{State Uncertainty}$
