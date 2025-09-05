---
title: Rocket Mass
tags: [25f, ENAE483, Topics]

date: 2025.09.04
time: 11:12:38-0400
---

### Notation

- Initial Mass: $m_{\text{o}}$
- Payload Mass: $m_{\text{pl}}$
- Propellant Mass: $m_{\text{pr}}$
- Inert Mass: $m_{\text{in}}$

### Relationships

- Basic:
    - $$
        m_{\text{o}} = m_{\text{pl}} + m_{\text{pr}} + m_{\text{in}}
      $$
- Inert Mass Fraction:
    - $$
        \delta \equiv \frac{m_{\text{in}}}{m_{\text{o}}} = \frac{m_{\text{pr}}}{m_{\text{pl}} + m_{\text{pr}} + m_{\text{in}}}
      $$
- Payload Fraction:
    - $$
        \lambda \equiv \frac{m_{\text{pl}}}{m_{\text{o}}} = \frac{m_{\text{pl}}}{m_{\text{pl}} + m_{\text{pr}} + m_{\text{in}}}
      $$
- Parametric Mass Ratio:
    - $$
        r = \lambda + \delta
      $$
- Stage Inert Mass Fraction:
    - $$
        \epsilon \equiv \frac{m_{\text{in}}}{m_{\text{in}}+m_{\text{pr}}}
      $$
- Propellant Mass Fraction:
    - $$
        \text{PMF} \equiv 1 - \epsilon = \frac{m_{\text{pr}}}{m_{\text{in}}+m_{\text{pr}}}
      $$
- (whatever $\rho$ is called):
    - $$
        \rho \equiv \frac{m_{\text{pl}}}{m_{\text{in}}+m_{\text{pr}}}
      $$
    - $$
        \rho = \frac{r-\epsilon}{1 - r}
      $$
    - $$
        r = \frac{\rho+\epsilon}{\rho + 1}
      $$
- Given $\Delta v$ and $I_{\text{sp}}$:
    - $$
        r = e^{- \frac{\Delta v}{g I_{\text{sp}}}}
      $$
- Given $\delta$:
    - $$
        \lambda = r - \delta \implies \boxed{m_{\text{o}} = \frac{m_{\text{pl}}}{\lambda}}
      $$
- Given $\epsilon$:
    - $$
        m_{\text{stage}} = \left(\frac{1 - r}{r - \epsilon}\right) m_{\text{pl}} \implies \boxed{m_{\text{o}} = \left(\frac{1 - \epsilon}{r - \epsilon}\right)m_{\text{pl}}}
      $$
