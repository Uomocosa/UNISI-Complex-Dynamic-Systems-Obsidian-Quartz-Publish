### What is a Bifurcation?

Let's consider a **non-linear system** $f$ that also depends on some **parameter** $k$, so:$$\dot x = f(x, k)$$We have that the system equations depends on the parameter $k$, so:
- The [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|steady states]], their existance, the **Jacobian matrix** of the [[CDS - Linearization|linearized system]], as well as the **stability of the steady states**, can all depend on this parameter $k$.

----
If the system $f$ has a [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]] that does not change with the parameter $k$, then we say that the system is [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|structurally stabile]], in more details we say that:

A system is **structurally stable** if the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]] in the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] does not vary when the system's **parameters** change.
- The structural stabilty is related to the **stability of the steady states**: if all **steady states** are [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|hyperbolic]], then the system is **structurally stable**.
- A change in the geometry of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] may occur only when a **steady state** is **non-hyperbolic**:
	- *~Ex.:* steady states that disappear when changing the parameter.
	- ==To have **structural instability** we need that chagning the parameter we change the sing of the eigenvalues==, so for a certain value of the parameter, we have a change of sing, so for $k^* : \lambda_1 \text{ or } \lambda_2 = 0$, we say that we have a "***bifurcation***" ($k$ is the parameter)

----
A steady state $x^*$ such that $J(x^*)$ (the **Jacobian Matrix**) has no null nor purely imaginary [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] is said *hyperbolic*.

And if we have an **hyperbolic steady state** from the [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|Hartman-Grobman Theorem]], we can say that:
If $x^*$ is **hyperbolic**, then there is a ==*homeomorphism*== defined in some neighborhood of $x^*$ in $\mathbb{R}^{n}$ locally taking orbits of the nonlinear flow to those of the linear flow.
The *homeomorphism* preserves the sense of orbits and parametrization by time.

Also near an **hyperbolic steady state** the geometry of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] is preseved by the [[CDS - Linearization|linearization]].

----
(***My Notes / My Take / My Thoughts***, **TAKE THEM WITH A GRAIN OF SALT!**)
(*Under this section you'll find the professor's notes*.)

Let $x^*$ a steady state of the **non-linear**, **monodimensional** system $\dot x = f(x)$, then $f(x^*) = 0$.
1. If we perform the Taylor Series around $x^*$ we will obtain:$$\dot x = f(x^*) + f'(x^*)(x-x^*) + O(x^2)$$Where:
	- $f(x^*) = 0$
	- $f'(x^*) \in \mathbb{R}$, we can also call it $a$.
	- $O(x^2) = 0$, (we ignore it)
2. We define a new system (transposed) near the steady state, so: $y(t) = x(t) - x^*$, such that $\dot y = \dot x$, and we can define the **linearized system** by substituting to the **Taylor series** as:$$\dot y = f'(x^*) \kern2px y \kern15px \text{or} \kern15px y = a y$$
3. So we can find the solution of the linearized system $(\dot y = a y)$ preatty easly:$$y(t) = y(0)\kern2px e^{at}$$
4. Notice how:
	- If $a \gt 0$, so if we have $f'(x) \gt 0$, then this linearized system will **diverge**.
	- While if $a \lt 0$ (meaning $f'(x) \lt 0$) it will **converge**.
5. For higher-dimensions systems, we will see that $f'(x^*)$ becomes a matrix, more specifically the **Jacobian Matrix**, and we will analyze like we did for [[CDS - Theory Behind Eigenvalues and Eigenvectors|linear systems]] its [[CDS - Eigenvalues and Eigenvectors|eigenvalues]].

(***Professor's Notes***)

The **linearization** is a method for characterizing locally the geometry of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] ([[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]]), locally meaning in the neighborhood of $x^*$.

Let $x^*$ a steady state of the non-linear system $\dot x = f(x)$, then $f(x^*) = 0$.
Let $\eta$ be a **perturbation** of the steady state $x^*$.
We want to study the "**perturbated solution**" $x(t) = x^* + \eta$.
1. From: $x(t) = x^* + \eta$ we can say that $\eta = x(t) - x^*$.
2. And if we derive both part in time, we have that: $\dot \eta = \dot x = f(x)$
3. If we expand the $f(x)$ with **Taylor**, near $x^*$, we have:$$\dot x = f(x^*) + f'(x^*)(x-x^*) + O(x^2)$$Where:
	- $f(x^*) = 0$.
	- $\eta = x(t) - x^*$
4. Finally we have that $\dot \eta = f'(x^*)\eta$, then if we study this "**linearized system**", and we see that $\eta$ grows, meaning for $f'(x^*) \gt 0$, then we have that the original system will diverge from the **steady state** $x^*$, meaning that $x^*$ is an **unstable steady state**.<br>While if we have that $f'(x^*) \lt 0$ then this $\eta$ will go toward zero, meaning that the perturbated system will converge to the **steady state**, $x^*$ is a **stable steady state**.<br>However if $f'(x^*) = 0$ we cannot say anything about the original system $f(x)$.

Given a system:$$\dot x = f(x)$$And a **steady steate** $x^*$ of this system, if this steady state is [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|hyperbolic]] then we can study the stability of the linearized system: $$f'(x) = {d \over dx} f(x)$$And its stability or instabilty will be the same as the original $f(x)$ system.
==However if $f'(x)$ is [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|marginally stable]], then we cannot say anything on the stability of $f(x)$==.

----
So given a **structurally unstable** system $f(x, k)$, we can define:
- ***Definition 'Bifurcation'***:<br>A **bifurcation** is a drastic change of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]] of a **dynamic system**, occurring when some **parameters** $(k)$ change.
- ***Definition 'Bifurcation Value'***:<br>A value $k_0$ such that the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]] of the system is **not structurally stable** is a **bifurcation value** if the system.
- ***Definition 'Bifurcation Diagram'***:<br>The **bifurcation diagram** reports the values visited or approached asymptotically by the system (such as **steady states** and **limit cycles**), as a function of the bifurcation parameter $(k)$, thus it is drawn in the plane $(k,\ x)$.

----
If we analyze the **stability** of all **steady states** of a sytem, by changing one of its **parameters** we will obtain a **bifurcation diagram**, as we have seen in the [[CDS - Supercritical Hopf Bifurcation|supercritical hopf bifurcation]] and [[CDS - Subcritical Hopf Bifurcation|subcritical hopf bifurcation]], as we changed the parameter $\beta$.

I recall that the [[CDS - Hopf Bifurcation|hopf bifurcation]] is defined as:$$\left\{\begin{array}{l}  \dot x = \beta x - y + \sigma x(x^2 + y^2) \\ \dot y =  x + \beta y + \sigma x(x^2 + y^2)    \end{array}\right.$$Where $\beta$ and $\sigma$ are [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|parameters]] and we have that:
- $\sigma = -1$, we will have the [[CDS - Supercritical Hopf Bifurcation|SUPERcritical hopf bifurcation]].
-  $\sigma = +1$, we will have the [[CDS - Subcritical Hopf Bifurcation|SUBcritical hopf bifurcation]].

Now let's try to visualize better the meaning behind the **bifurcation diagram**:<br>![[Pasted image 20240625175618.png|333]]<br>![[Pasted image 20240625175636.png|333]]

Each point of the **bifurcation diagram** represents a **phase plane**/**phase space** (with infinite inital conditions), and the lines (dotted and continue) represents the stabilities/**attracting set** of the phase plane:<br>![[Pasted image 20240625175905.png|333]]

----
Also we have seen the following types of [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|bifurcations]]:
- [[CDS - Saddle-Node Bifurcation|Saddle-Node bifurcation]]:<br>![[Pasted image 20240624163932 - Copia.png|222]]
- [[CDS - Transcritical Bifurcation|Transcritical bifurcation]]:<br>![[Pasted image 20240624164933 - Copia.png|222]]
- [[CDS - Supercritical Pitchfork Bifurcation|Supercritical pitchfork bifurcation]]:<br>![[Pasted image 20240624170308 - Copia.png|222]]
- [[CDS - Subcritical Pitchfork Bifurcation|Subcritical pitchfork bifurcation]]:<br>![[Pasted image 20240624170417 - Copia.png|222]]
- [[CDS - Supercritical Hopf Bifurcation|Supercritical Hopf bifurcation]] (only in continuos time systems):<br>![[Pasted image 20240625173706 - Copia.png|222]]
- [[CDS - Subcritical Hopf Bifurcation|Subcritical Hopf bifurcation]] (only in continuos time systems):<br>![[Pasted image 20240625174203 - Copia.png|222]]
- [[CDS - Logistic Equation • Stability Analysis for Discrete Time Systems|Flip bifurcation]] (only in discrete time systems, specifically we have seen it in the [[CDS - Logistic Equation • Stability Analysis for Discrete Time Systems|logistic equation]]):<br>![[Pasted image 20240702171931 - Copia.png|222]]
----
Let's see how we can classify them:
A [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|bifurcation]] occurs when there is a drastic change in the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|flow]], in mathematical it means when ==at least one eigenvalue becomes $0$==.

So starting from a point $x_0$ close to a steady state $x^*$ we can have that:
- The trajectory converges to $x_0$.
- The trajectory converges to a limit cycle.
- The trajectory converges to another point $x^*_2$.
- The trajectory diverges.

As I will demonstrate with [[CDR - Topic of Choice 'Bifurcations' ~ MATLAB script 'bifurcations'|this MATLAB script]], and as we have seen thanks to the [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|Hartman-Grobman theorem]] we can easily find how the stability of the steady states changes after a bifurcation, however we cannot easily find the presence of **limit cycles** and **strange attractors** (or any [[CDS - Pattern Formation|emerging pattern]]) for those our best bet is to analyze them grafically.

----
#### Video Lecture References
- ***Linearization***:![[Linearization.mp4]]
- ***Hyperbolic Steady States***:![[Hyperbolic_Steady_States.mp4]]
- ***Hartman-Grobman Theorem***:![[Hartman-Grobman_Theorem.mp4]]
- ***Manifolds***:![[Manifolds.mp4]]