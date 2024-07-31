###### *Remember*:

> Given the **LINEAR** system:$$\dot x = A x$$Where: 
> - $x \in \mathbb{R}^{n}$
> - $A \in \mathbb{R}^{n \times n}$

> We have seen that:
> - The [[CDS - Nullclines|nullclines]] are **linear** in the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]].
> - There exists at most one isolated **steady state**, if more than one **steady state** exists, then they are **inifinite**, as we have seen in some [[CDS - Linear 2D System • Example of Vector Fields|previous examples]].
> - Drawing the geometry of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] is possible in all cases.
> - The stability of **steady states** depends on the [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] of $A$:
> 	- If all [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] of $A$ have **negative real part**, then the **steady state** is [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|asymptotic stable]].
> 	- If at least one [[CDS - Eigenvalues and Eigenvectors|eigenvalue]] have **positive real part**, then the **steady state** is [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|unstable]].
> 	- If at least one [[CDS - Eigenvalues and Eigenvectors|eigenvalue]] have **zero real part**, there is some marginality and the **steady state** is [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|marginally stable]] (or "*neutrally stable*") along some direction.

> We can classify the stady states as:
> - **Real [[CDS - Eigenvalues and Eigenvectors|eigenvalues]]**:
> 	- **Stable nodes** (*negative eig.*)
> 	- **Unstable nodes** (*positive eig.*)
> 	- **Lines or planes of steady states** (*one or more null eig.*)
> 	- **Saddles** (*at least one positive and one negative*)
> - **Imaginary [[CDS - Eigenvalues and Eigenvectors|eigenvalues]]** or **complex conjugate eigenvalues**:
> 	- **Stable spirals** (*negative real part eig.*)
> 	- **Unstable spirals** (*positive real part eig.*)
> 	- **Centers** (*null real part*)

----

![[Pasted image 20240623165923.png]]

![[Pasted image 20240623170150.png]]

![[Pasted image 20240623170245.png]]
- Recap, basically it exaplains the plot of $\tau$ and $\Delta$, we have [[CDS - Theory Behind Eigenvalues and Eigenvectors|seen previously]] 