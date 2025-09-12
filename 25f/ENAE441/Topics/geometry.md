---
title: Geometry
tags: [25f, ENAE441, Topics]

date: 2025.09.04
time: 09:54:25-0400
---

## Ellipses

- ![ellipse drawing (from WikiMedia)](assets/ellipse.svg)

### Directrix Property

- ![directrix diagram on an ellipse (from WikiMedia)](assets/ellipse-directrix.svg)

- Directrix: $d$
- Each of the two lines parallel to the minor axis, and the following distance from it:
    - $$
        d = \frac{a^{2}}{c} = \frac{a}{e}
      $$
- Relationships:
    - For an arbitrary point $P$ on the ellipse, the quotient of the distance between a focus and its directrix is equal to the eccentricity:
        - $$
            e = \frac{|PF_{1}|}{|Pl_{1}|} = \frac{|PF_{2}|}{|Pl_{2}|}
          $$
    - $$
        \frac{p}{e} = x + \frac{r}{e}
      $$

### Eccentric Anomaly

- ![eccentric anomaly of an ellipse drawing (from WikiMedia)](assets/eccentric-anomaly.svg)
- Eccentric Anomaly: $E$
- Angle at the center of the ellipse between the periapsis and the s/c's current position
- $$
    \tan{\frac{\theta}{2}} = \sqrt{\frac{1 + e}{1 - e}} \tan{\frac{E}{2}}
  $$

## Triangles

### Small Angle Approximation

- ![small angle approximation (from Dr. Martin's notes)](assets/small-angle-approximation.png)
- Angle must be measured in radians
- $$
    \sin{\theta} \approx \tan{\theta} \approx \theta
  $$
- $$
    \cos{\theta} \approx 1 - \frac{1}{2} \theta^{2} \approx 1
  $$
