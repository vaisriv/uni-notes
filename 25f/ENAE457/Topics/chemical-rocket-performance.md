---
title: Chemical Rocket Performance
tags: [25f, ENAE457, Topics]

date: 2025.10.15
time: 15:21:08-0400
---

## Stoichiometric Equations

Let a generic hydrocarbon-like fuel be $\mathrm{C_{a}H_{b}O_{d}N_{c}}$ and oxidizer be $\mathrm{O_2}$ (or $\mathrm{N_2O_4}$, $\mathrm{LOX}$, etc.). The **stoichiometric** reaction with $\mathrm{O_2}$ is

$$
\mathrm{C_aH_bO_d}\ +\ \nu_O\,\mathrm{O_2}\ \rightarrow\ a\,\mathrm{CO_2}\ +\ \frac{b}{2}\,\mathrm{H_2O}
\quad(\text{plus species for }d\neq0,\ c\neq0).
$$

Balance O atoms to get the **stoichiometric oxidizer moles** $\nu_O$, then compute:

- **Stoichiometric O/F (by mass):**

    $$
    \left(\frac{O}{F}\right)_{\!\mathrm{sto}}=\frac{\nu_O\,W_{O_2}}{1\cdot W_F}.
    $$

- **Equivalence ratio $\phi$** (fuel-rich if $\phi>1$):

    $$
    \phi \equiv \frac{(F/O)_\text{actual}}{(F/O)_{\mathrm{sto}}}
    = \frac{(O/F)_{\mathrm{sto}}}{(O/F)_\text{actual}}.
    $$

- **Mixture molecular weight** (frozen composition assumption as a first cut):
    $$
    \bar{W}=\sum_i Y_i\,W_i,\qquad R=\frac{R_u}{\bar{W}}.
    $$

> [!NOTE]
>
> - **Performance linkage:** $c^*\propto \sqrt{\frac{R\,T_0}{\gamma}}$
>   — thus $T_0(\phi,p_0)$, $R(\phi)$, and $\gamma(\phi,T)$
>     - from chemistry feed directly into $c^*$ (chamber)
>     - and then: $I_{sp}=C_f\,c^*/g_0$ (system).

## Chemical Equilibrium

In reality, hot products **re-equilibrate** in the chamber/nozzle. For a given $p_0$ and overall mixture ($\phi$), the **adiabatic flame temperature** $T_0$ and composition $\{n_i\}$ satisfy:

- **Element balances:** $\func{\mathbf{A}}\vecb{n}=\vecb{b}$ (atoms conserved).
- **Equilibrium at $(T,p)$:** minimize total Gibbs free energy,
    $$
    \min_{\{n_i\ge0\}}\ \fn{G}{T,p,\{n_i\}}=\sum_i n_i\,\mu_i(T,p),\quad \text{s.t. element balances}.
    $$
- **Energy closure (adiabatic):**
    $$
    \sum_j n_{j,\text{react}}\,h_j(T_\text{ref})\;=\;\sum_i n_{i,\text{prod}}\,h_i(T_0).
    $$

Outputs: $\{n_i\}\Rightarrow \bar{W}(T_0,\phi,p_0),\ \gamma(T_0,\phi),\ R(T_0,\phi),$ then $c^*$ and (via nozzle isentropic relations) $C_f$ and $I_{sp}$.

## Design Considerations

> [!NOTE]
>
> - **Fuel-rich** mixtures (e.g., LOX/LH$_2$ slightly rich) often yield **higher $I_{sp}$** due to lower $\bar{W}$ and favorable $\gamma$, despite lower $T_0$ than exact stoichiometric.
> - **Chamber pressure $p_0$** strongly influences $c^*$ via $\dot{m}$ and level of dissociation; higher $p_0$ generally improves performance (and raises optimal area ratio).
> - **CEA-style analysis** (NASA CEA): compute equilibrium/frozen properties at chamber, throat, and exit to get $c^*,C_f,I_{sp}$ vs. $\phi,p_0,\varepsilon,p_a$.
