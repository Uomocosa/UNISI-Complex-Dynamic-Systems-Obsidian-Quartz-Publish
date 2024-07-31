---
aliases:
  - hyperbolic
  - hyperbolic steady state
  - Hartman-Grobman
  - Hartman-Grobman theorem
  - hyperbolic steady states
---
###### *Remember*:

> ***Definition 'Hyperbolic Steady State'***: 
> A steady state $x^*$ such that $J(x^*)$ (the **Jacobian Matrix**) has no null nor purely imaginary [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] is said *hyperbolic*.

> ***Jabobian Matrix***:
> Given $f'(x^*)$ the **Jacobian matrix** composed by the partial derivatives of $f$ with respect to $x$, evaluated at $x = x^*$ (the **steady state**), so:$$f'(x^*) = J(x^*) = \left.{\partial f_i(x) \over \partial x_j}\right|_{x=x^*}$$In matrix form:$$J = \left[\begin{array}{l} {\partial f_1(x) \over \partial x_1}  & {\partial f_2(x) \over \partial x_1} & \cdots  & {\partial f_n(x) \over \partial x_1} \\ {\partial f_1(x) \over \partial x_2}      & \cdots & & {\partial f_n(x) \over \partial x_2} \\ & \ddots & & \kern20px \vdots \\ & & & {\partial f_n(x) \over \partial x_n} \end{array}\right]_{n\times n}$$

> ***Theorem 'Hartman-Grobman'***:
> If $x^*$ is **hyperbolic**, then there is a *homeomorphism* defined in some neighborhood of $x^*$ in $\mathbb{R}^{n}$ locally taking orbits of the nonlinear flow to those of the linear flow.
> The *homeomorphism* preserves the sense of orbits and parametrization by time.
> 
> Also near an **hyperbolic steady state** the geometry of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] is preseved by the [[CDS - Linearization|linearization]].

> From the **Hartman-Grobman Theorem** we can say:
> - If the [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] are **hyperbolic**, then the [[CDS - Linearization|linearization]] is "succeful", mening that both [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|stability]] and [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]] are qualitativly the same.
> - *Non-hyperbolic steady states may produce dynamics that are not predicted by the linearized system*, ==so we cannot analyze them via linearization==.
> - If all eigenvalues are different from $0$, just looking at the eigenvalues is sufficient to conclude about the stability of the steady states, and also about the geometry of the phase space near the steady state<br>But, ==if there is at least one $0$-eigenvale, then we cannot predict the geometry of the phase space near the steady state by analyzing the linearized system, we need to use other tools==.
> - ==The presence of $0$-eigenvalues may produce a very complicated dynamic, including [[CDS - Non-Linear Systems • Limit Cycles • omega-limit set • Poincaré-Bendixon Theorem|limit cycles]], and also the **strange actractors**==, so we need to study really well the system if this is the case.

----

![[Pasted image 20240623173313.png]]


![[Pasted image 20240623173428.png]]
- If the eigenvalues are hyperbolic, then the linearization is "succeful", mening that both stability and flow are qualitativly the same.
- *Non-hyperbolic ss may produce dynamics that are not predicted by the linearized system*, so we cannot analyze them via linearization.
- If all eigenvalues are different from $0$, just looking at the eigenvalues is sufficient to conclude about the stability of the steady states, and also about the geometry of the phase space near the ss<br>But if there is at least one $0$-eigenvale, then we cannot predict the geometry of the phase space, near the ss by analyzing the linearized system, we need to use other tools.
- The presence of $0$-eigenvalues may produce a very complicated dynamic, including **limit cycles**, and also the **strange actractors**, so we need to study really well the system if this is the case.
