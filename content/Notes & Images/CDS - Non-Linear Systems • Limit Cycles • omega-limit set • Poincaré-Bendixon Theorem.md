---
aliases:
  - limit cycle
  - limit cycles
---
###### *Remember*:

> Given a **non-linear** system:$$\dot x = f(x)$$We need to introduce the $\omega$-limit set, to better define the [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|attracting steady state]] and [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|lyapunov stability]], so the $\omega$-limit set of a point $x_0$ of a **dynamic system** is defined as:$$\omega(x_0) = \left\{x : \forall \kern2px T \ \text{and} \ \forall \kern1px \varepsilon ,\ \exists \kern3px t \gt T \ \text{such that} \ \left|f(t, x_0) - x \right| \lt \varepsilon \right\}$$An example are closed (*periodic*) orbits, a periodic solution is one for witch there exists $T \in \mathbb{R}^+$ such that: $x(t) = x(t+T),\ \forall \kern1px T$.
> Non-linear systems possess limit sets other than **steady state** (for example **limit cycles**), in the non-linear case they have **stable and unstable manifolds** jast as do **steady states**.
> - In non-linear system we will observe that non only points can act as [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|attractors]] (in linear case the **stable steady state** act as **actractors**).<br>_In non-linear systems there can be closed curves in the **phase space** that can act as actrators_. #IMPORTANT <br>And there can also be closed curves that do the opposite (like for **unstable ss** in linear systems)
> - You can imagine that in non-linear sytems the steady state can also be **closed curves**.
 
> This is a possible **phase space** of a non-linear system:<br>![[Pasted image 20240623171721.png|250]]
> - The red circle acts as an actractor.
> - This **phase space** is impossible to be obtained in a linear system.
> - And its representation in the **dynamics graph**:<br>![[Pasted image 20240623172059.png|200]]
> 	- Actracting curve, **robust oscillation**.
> - If we focus on the actractive circle, from an initial condition **INSIDE** this curve:<br>![[Pasted image 20240623172359.png|200]]
> 	- In red the *attractive circle*.
> 	- This means that at the center of the circle we need to have a **repulsive steady state **.
> 	- This actractive curve/circle is called "***limit cycle***"

> ***Definition 'limit cycle'***: A limit cycle is an **isoltated closed curve** in the phase space.
> - A limit cycle is different from a [[CDS - Examples of Phase Space drawn from Eigenvalues and Eigenvectors • Saddle • Marginally Stable Steady State|center]].
> - A limit cycle can be [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|attractive]] or **repulsive**.
> - In the non-linear case multiple limit cycles can coexist in the phase space.
> - Limit cycles can be treated as **steady states**.
> - In the [[CDS - Supercritical Hopf Bifurcation|supercritical hopf bifurcation]] we found an **attractive limit cycle**.
> - In the [[CDS - Subcritical Hopf Bifurcation|subcritical hopf bifurcation]] we found a **repuslive limit cycle**.

> ***Theorem 'Poincaré-Bendixon'***: Given $\dot x = f(x)$, and $x \in \mathbb{R}^2$, suppose that:
> 1. $R$ is a closed, bounded subset of the plane.
> 2. $f(x)$ is a **continuosly differentiable [[CDS - Vector Field|vector field]]** on an open set containing $R$.
> 3. $R$ does not contain any fixed points.
> 4. There exist a trajectory $C$ that is confined in $R$, in the sense that it starts in $R$ and stays in $R$ for all future time.
>
> Then either $C$ is a closed orbit, or it spirals toward a closed orbit as $t \to \infty$. In either case, $R$ contains a closed orbit.

> Meaning that if for $t \to \infty$ the trajectory drawned in the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] does not diverge then we are in the presence of a **limit cycle**. #not-sure-about-this Could we be also in the presence of a chaotic system?, maybe not because for a choatic system we would need $x \in \mathbb{R}^3$.

----

![[Pasted image 20240623170340.png]]

![[Pasted image 20240623170941.png]]

![[Pasted image 20240623171035.png]]
- In non-linear system we will observe that non only points can act as attractors (in linear case the **stbale ss** act as actractors).<br>*In non-linear systems there can be closed curves in the **phase space** that can act as actrators*. #IMPORTANT <br>And there can also be closed curves that do the opposite (like for **unstable ss** in linear systems)
- You can imagine that in non-linear sytems the steady state can also be closed curves.

This is a possible **phase space** of a non-linear system:<br>![[Pasted image 20240623171721.png|333]]
- The red circle acts as an actractor.
- This **phase space** is impossible to be obtained in a linear system.

And its **dynamics** representation:<br>![[Pasted image 20240623172059.png|333]]
- Actracting curve, **robust oscillation**.

If we focus on the actractive circle, from an initial condition inside this curve:<br>![[Pasted image 20240623172359.png|333]]
- In red the actractive circle.
- This means that at the center of the circle we need to have a **repulsive ss**.
- This actractive curve/circle is called "***limit cycle***":<br>![[Pasted image 20240623172632.png|333]]

----
![[Pasted image 20240625174430.png]]
- In the [[CDS - Supercritical Hopf Bifurcation|supercritical hopf bifurcation]] we found an **attractive limit cycle**.
- In the [[CDS - Subcritical Hopf Bifurcation|subcritical hopf bifurcation]] we found a **repuslive limit cycle**.


![[Pasted image 20240625174619.png]]

Let's try with an example:<br>![[Pasted image 20240625174945.png|444]]
- Suppose we have an initial condition that given infinite time always stays in a substet $R$ $(R \in \mathbb{R}^2)$, and in this subset there are **NO** steadys states, then the ***Poincar'è-Bandixosn Theorem*** assures us that the system will converge to a **limit cycle**.
- ***NOTE***: the hopf bifurcations both presents steady states (in $(0,\ 0)$), however for those cases we can still use this theorem, we just "remove" a closed curve near the ss, like so:<br>![[Pasted image 20240625175424.png|444]]
	- But now is an open subset ???? #not-sure-about-this 
