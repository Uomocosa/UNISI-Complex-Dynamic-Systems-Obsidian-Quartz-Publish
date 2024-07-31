---
aliases:
  - linearization
  - linearized system
---
###### How I think the Linearization/Linearize System should be defined:
(***My Notes / My Take / My Thoughts***, **TAKE THEM WITH A GRAIN OF SALT!**)
(*Under this section you'll find the professor's notes*.)

> Let $x^*$ a steady state of the **non-linear**, **monodimensional** system $\dot x = f(x)$, then $f(x^*) = 0$.
> 1. If we perform the Taylor Series around $x^*$ we will obtain:$$\dot x = f(x^*) + f'(x^*)(x-x^*) + O(x^2)$$Where:
> 	- $f(x^*) = 0$
> 	- $f'(x^*) \in \mathbb{C}$, we can also call it $a$. (it can be an imaginary number)
> 	- $O(x^2) = 0$, (we ignore it)
> 2. We define a new system (transposed) near the steady state, so: $y(t) = x(t) - x^*$, such that $\dot y = \dot x$, and we can define the **linearized system** by substituting to the **Taylor series** as:$$\dot y = f'(x^*) \kern2px y \kern15px \text{or} \kern15px y = a y$$
> 3. So we can find the solution of the linearized system $(\dot y = a y)$ preatty easly:$$y(t) = y(0)\kern2px e^{at}$$
> 4. Notice how:
> 	- If $a \gt 0$, so if we have $f'(x) \gt 0$, then this linearized system will **diverge**.
> 	- While if $a \lt 0$ (meaning $f'(x) \lt 0$) it will **converge**.
> 5. For higher-dimensions systems, we will see that $f'(x^*)$ becomes a matrix, more specifically the **Jacobian Matrix**, and we will analyze like we did for [[CDS - Theory Behind Eigenvalues and Eigenvectors|linear systems]] its [[CDS - Eigenvalues and Eigenvectors|eigenvalues]].

-----
###### *Remember*:
(***Professor's Notes***)

> The **linearization** is a method for characterizing locally the geometry of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] ([[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]]), locally meaning in the neighborhood of $x^*$.

> Let $x^*$ a steady state of the non-linear system $\dot x = f(x)$, then $f(x^*) = 0$.
> Let $\eta$ be a **perturbation** of the steady state $x^*$.
> We want to study the "**perturbated solution**" $x(t) = x^* + \eta$.
> 1. From: $x(t) = x^* + \eta$ we can say that $\eta = x(t) - x^*$.
> 2. And if we derive both part in time, we have that: $\dot \eta = \dot x = f(x)$
> 3. If we expand the $f(x)$ with **Taylor**, near $x^*$, we have:$$\dot x = f(x^*) + f'(x^*)(x-x^*) + O(x^2)$$Where:
> 	- $f(x^*) = 0$.
> 	- $\eta = x(t) - x^*$
> 4. Finally we have that $\dot \eta = f'(x^*)\eta$, then if we study this "**linearized system**", and we see that $\eta$ grows, meaning for $f'(x^*) \gt 0$, then we have that the original system will diverge from the **steady state** $x^*$, meaning that $x^*$ is an **unstable steady state**.<br>While if we have that $f'(x^*) \lt 0$ then this $\eta$ will go toward zero, meaning that the perturbated system will converge to the **steady state**, $x^*$ is a **stable steady state**.<br>However if $f'(x^*) = 0$ we cannot say anything about the original system $f(x)$.

> Given a system:$$\dot x = f(x)$$And a **steady steate** $x^*$ of this system, if this steady state is [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|hyperbolic]] then we can study the stability of the linearized system: $$f'(x) = {d \over dx} f(x)$$And its stability or instabilty will be the same as the original $f(x)$ system.
> ==However if $f'(x)$ is [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|marginally stable]], then we cannot say anything on the stability of $f(x)$==.

----

![[Pasted image 20240623172717.png]]

![[Pasted image 20240623172832.png]]
- Mathematical proof and explanation on how we can linarize numerically.
