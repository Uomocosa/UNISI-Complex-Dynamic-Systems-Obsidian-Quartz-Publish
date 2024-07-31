---
aliases:
  - manifolds
---
###### How I think the Linearization/Linearize System should be defined:
(***My Notes / My Take / My Thoughts***, **TAKE THEM WITH A GRAIN OF SALT!**)
(*Under this section you'll find the professor's notes*.)

> In non-linear systems we can find these types of **steady states**:
> - For [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|hyperbolic]] we have an *homeomorphism* with respect to the [[CDS - Recap of Linear Systems|linear system case]]:
> 	- **Stable nodes** (*negative eig. in linearization*)
> 	- **Unstable nodes** (*positive eig. in linearization*)
> 	- **Saddles** (*at least one positive and one negative in linearization*)
> 	- **Stable spirals** (*negative real part eig. in linearization*)
> 	- **Unstable spirals** (*positive real part eig. in linearization*)
> - While for **non-homeomorphic steady states**, we cannot say anything about the geometry and stability.

> Notice in the [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|Lorenz system]] for $r=30$, so in the **chaotic regime**, the **Jacobian Matrix** in the Jacobian matrix will have this form:$$\left[\begin{array}{r} -10 & 10 & 0 \kern5px\\ 30-z & -1 & -x \kern5px\\ y & x & -{8 \over 3} \kern5px\\     \end{array}\right]$$The eigenvalues for $x^* = \left<0 ,\ 0 ,\ 0\right>$ are equal to: $-2.67$, $-23.40$, $12.40$.<br>The eigenvalues for $x^*_2$ and $x^*_3$ are equal to: $-13.96$, $0.15 - j\kern2px 10.52$, $0.15 + j\kern2px 10.52$.
> So as you can see the system presents **strange attractors**, but the eigenvalues are **non-zero**, meaning the steady are **hyperbolic** (for $r = 30$).
> So even [[CDS - Non-Linear Systems • Limit Cycles • omega-limit set • Poincaré-Bendixon Theorem|limit cycles]] and [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|strange attractors]] can be found for **hyperbolic steady states**.
> What we cannot find are [[CDS - Linear 2D System • Example of Vector Fields|lines of steady states]], and [[CDS - Examples of Phase Space drawn from Eigenvalues and Eigenvectors • Nodes • Degenerate Node • Spirals • Circles|circles]], since "we cannot analyze the marginality", meaning that we cannot be sure that a system is marginal if its [[CDS - Linearization|linearization]] is marginal ([[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|Hartman-Grobman Theorem]]).

----
###### *Remember*:
(**Professor's Notes**)

> - In case of [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|hyperbolic steady states]], not only the property of stability of the steady states are similar in the non-linear and [[CDS - Linearization|linearized system]], but also the geometry nearby.
> - Also in the non-linear case we can distinguish between **stable** and **unstable** **manyfolds** (or subspaces).

> In non-linear systems we can find these types of **steady states**:
> - For [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|hyperbolic]] we have an *homeomorphism* with respect to the [[CDS - Recap of Linear Systems|linear system case]]:
> 	- **Stable nodes** (*negative eig. in linearization*)
> 	- **Unstable nodes** (*positive eig. in linearization*)
> 	- **Saddles** (*at least one positive and one negative in linearization*)
> 	- **Stable spirals** (*negative real part eig. in linearization*)
> 	- **Unstable spirals** (*positive real part eig. in linearization*)
> - For **non-hyperbolic** steady states: #not-sure-about-this 
> 	- **Limit cycles**.
> 	- **Strange attractors**.
> 
> **Stable/unstable nodes**, **saddles**, and **stable/unstable spirals** can be succefully analyzed via [[CDS - Linearization|linearization]], while [[CDS - Non-Linear Systems • Limit Cycles • omega-limit set • Poincaré-Bendixon Theorem|limit cycles]] and **strange actractors** cannot.

> ***Hyperbolic steady states***: the associated linearization does not have any $0$-eigenvalues, meaning the all eigenvalues are $\neq 0$, or in case that they are imaginary, their real part is  $\neq 0$. #IMPORTANT 

> #NOT-IMPORTANT (I don't think we have ever used and mentioned this theorem)
> ***Theorem 'Stable and Unstable Manifolds'***<br>![[Pasted image 20240623174053.png|444]]<br>![[Pasted image 20240624112026.png|444]]
>- A manyfold is a generalization of a subspace in a nonlinear space. #IMPORTANT 
> - $^U$ : **unstable** (*~Ex.: $W^U$*)
> - $^S$ : **stable** (*~Ex.: $W^S$*)
> - The manyfolds $W$ are tangent to $E$ specifically at the stady state $x^*$, this means:
> 	1. We can approximate a non-linear system into a linear system, and we get similar information regarding the stability of the stady states (if the ss is hyperbolic).
> 	2. In linear systems, the subspaces $E^S$ and $E^U$ generate/span the whole phase space, meaning that any vector is a linear combination of the vector spanning $E^S$ and $E^U$.<br>For example, if you have only stable subspaces ⇒ then you will have only stable steady states.<br>==$E^S$ and $E^U$ are generated respectivly by negative and positive eigenvalues/eigenvectors==.
----

![[Pasted image 20240623174053.png]]
- In case of [[CDS - Hyperbolic Steady States • Hartman-Grobman Theorem|hyperbolic steady states]], not only the property of stability of the ss are similar in the non-linear and linearized system, but also the geometry nearby.
- Also in the non-linear case we can distinguish between stable and unstable **manyfolds** (or subspaces).

![[Pasted image 20240623174922.png]]
- **stable/unstable nodes**, **saddles**, and **stable/unstable spirals** can be succefully analyzed via [[CDS - Linearization|linearization]].
- [[CDS - Non-Linear Systems • Limit Cycles • omega-limit set • Poincaré-Bendixon Theorem|limit cycles]] and **strange actractors** cannot.

----

![[Pasted image 20240624112348.png]]

![[Pasted image 20240624112026.png]]
- ***hyperbolic ss***: the associated linearization does not have any $0$-eigenvalues, meaning the all eigenvalues are $\neq 0$, or in case that they are imaginary, their real part is  $\neq 0$. #IMPORTANT 
- A manyfold is a generalization of a subspace in a nonlinear space. #IMPORTANT 
 - $^U$ : unstable
 - $^S$ : stable
 - The manyfolds $W$ are tangent to $E$ specifically at the stady state $x^*$, this means:
	 1. We can approximate a non-linear system into a linear system, and we get similar information regarding the stability of the stady states (if the ss is hyperbolic).
	 2. In linear systems, the subspaces $E^S$ and $E^U$ generate/span the whole phase space, meaning that any vector is a linear combination of the vector spanning $E^S$ and $E^U$.<br>For example, if you have only stable subspaces ⇒ then you will have only stable steady states.<br>==$E^S$ and $E^U$ are generated respectivly by negative and positive eigenvalues/eigenvectors==.
