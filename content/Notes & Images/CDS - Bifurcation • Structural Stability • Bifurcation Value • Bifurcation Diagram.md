---
aliases:
  - bifurcation
  - structural stability
  - bifurcation value
---
###### *Remember*:

> Let's consider a **non-linear system** $f$ that also depends on some **parameter** $k$, so:$$\dot x = f(x, k)$$We have that the system equations depends on the parameter $k$, so:
> - The **steady states**, their existance, the **Jacobian matrix** of the [[CDS - Linearization|linearized system]] as well as the **stability of the steady states**, can all depend on this parameter $k$.

> ***Definition 'Structural Stability'***:
> A system is **structurally stable** if the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]] in the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] does not vary when the system's **parameters** change.
> - The structural stabilty is related to the **stability of the steady states**: if all **steady states** are [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|hyperbolic]], then the system is **structurally stable**.
> - A change in the geometry of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] may occur only when a **steady state** is **non-hyperbolic**:
> - ~Ex.: steady states that disappear when changing the parameters.
> - ==To have **structural instability** we need that chagning the parameter we change the sing of the eigenvalues==, so for a certain value of the parameter, we have a change of sing, so for $k^* : \lambda_1 \text{ or } \lambda_2 = 0$, we say that we have a "***bifurcation***" ($k$ is the parameter)

> Consider a dynamic system:$$\dot x = f(x,\  \mu) $$Where: $x \in \mathbb{R}^{n}$ and $\mu \in \mathbb{R}^{m}$, $\mu$ are the **parameters**.
> - ***Definition 'Bifurcation'***:<br>Then we define the **bifurcation** as a drastic change of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]] of a **dynamic system**, occurring when some **parameters** $(\mu)$ change.
> - ***Definition 'Bifurcation Value'***:<br>A value $\mu_0$ such that the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]] of the system is **not structurally stable** is a **bifurcation value** if the system.
> - ***Definition 'Bifurcation Diagram'***:<br>The **bifurcation diagram** reporst the values visited or approached asymptotically, such as **steady states**, by the system as a function of a bifurcation parameter in the system, thus it is drawn in the plane $(\mu,\ x)$.

----
![[Pasted image 20240624161147.png]]

![[Pasted image 20240624161235.png]]

![[Pasted image 20240624161404.png]]
- ~Ex.: steady states that disappear when changing the parameters.
- If in a system all ss are hyperbolic ⇒ the system is structurally stable.
- To have structural instability we need that chagning the parameter we change the sing of the eigenvalues, at the value of the parameter, for which we have the change of sing, so for $\mu^* : \lambda_1 \text{ or } \lambda_2 = 0$, we have a "***bifurcation***" ($\mu$ is the parameter)

![[Pasted image 20240624161749.png]]
- $f$ is a non-linear function.