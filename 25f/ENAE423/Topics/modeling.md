---
title: Modeling
tags: [25f, ENAE423, Topics]

date: 2025.09.03
time: 11:06:54-0400
---

## Vibration Basics

- Free Vibration: $F = 0$
- Undamped: $c = 0$
- EoM: $m \ddot{y} + k y = 0$

## Viscous Damping

- $m \ddot{y} = F - k y - c \dot{y}$
- $F_s = k y$
- $F_d = c \dot{y}$
- EoM: $m \ddot{y} + c \dot{y} + k y = F$

## Bending loading

- $m \ddot{y} + c \dot{y} + k y = F + m g$
- $k y_s = m g$
- EoM: $m \ddot{\hat{y}} + c \dot{\hat{y}} + k \hat{y} = F$

## Applied Force with Damping

- $m \ddot{y} = - k y - c \dot{y} + k d + c \dot{d}$
- $m \ddot{y} = -c (\dot{y} - \dot{d}) - k (y - d)$
- $m \ddot{y_R} + c \dot{y_R} + k \dot{y_R} = -m \ddot{d}$
- EoM: $F_{\text{applied}} = -m \ddot{d}$

> [!NOTE] > **Initial Conditions at $t = 0$**
>
> - Can treat as given for all problems (unless otherwise specified)
> - $y(0) = y_0$
> - $\dot{y}(0) = \dot{y_0}$
