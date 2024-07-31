---
aliases:
  - steady state
  - classification of steady states
  - stable steady state
  - unstable steady state
  - marginally stable steady state
  - attracting steady state
  - lyapunov stability
  - lyapunov stable steady state
  - asymptotic stability
  - asymptotic stable steady state
  - stability
---
###### *Remember*:

> ***Definiton of 'Steady State'***: Given the ODE equation/system:$$\dot x = f(x)$$The steady states are all soltuions $x^*$ such that:$$f(x^*) = 0$$==Steady states are motionless constant solutions==.

> ***Classification of Steady States***:
> *We have seen some of them drawn in 2D in some examples ([[CDS - Linear 2D System • Example of Vector Fields|ref 1]], [[CDS - Non-Linear 2D System • Example of Vector Fields • Definition of Coupled System|ref 2]]*)
> - **Nodes**.
> - **Stars** or symmetric nodes.
> - **Degenerate nodes**. (Different from *stars*, we will see them [[CDS - Examples of Phase Space drawn from Eigenvalues and Eigenvectors • Nodes • Degenerate Node • Spirals • Circles|in a following example]])
> - **Lines of Steady States**
> - **Saddles**.
> - **Spirals**.
> - **Centers**.

> Steady states can be **stable**, **unstable** or indifferent (**marginally stable**):<br>![[Pasted image 20240623103940 - Copia.png|333]]

> ***Definition of 'Attracting Steady State'***: A steady state $x^*$ is attracting if all trajectories near $x^*$, approach it as $t \to \infty$.
> If $x^*$ attracts all trajectories then it is defined **globally attracting**.

> ***Definition of 'Lyapunov Stable Steady State'***: A steady state $x^*$ is Lyapunov stable if all trajectories that start sufficently close to $x^*$, remain close to it forever.

> If a **steady state** is both **attracting** and **lyapunov stable**, then it is called ***asymptotically stable***.

> Here's a figure to understand the difference between **attracting** and **lyapunov stable** steady states:<br>![[Pasted image 20240623104702 - Copia.png|333]]

----

![[Pasted image 20240623103408.png]]
- Remeber that $x$ is a vector, in the previous case: $x = \left< x_1,\ x_2 \right>$, so we need to find the solutions $x^* = \left< x_1^*,\ x_2^* \right>$ such that:$$\left\{\begin{array}{l}   x_2^* = 0 \\    -{g\over L}\sin(x_1^*) = 0  \end{array}\right.$$

![[Pasted image 20240623103940.png]]

![[Pasted image 20240623104312.png]]
- Definition of "***attractive ss***", "***Lyapunov stable ss***", "***neutral ss***" and "***asymptotically stable ss***"
	- We have seen "***Lyapunov stable ss***" previosly for the **oscillating pendulum, without friction*** (blac circular lines in the **phase space**).

![[Pasted image 20240623104702.png]]
- **marginally stable ss** are an example of **Lyapunov stablity**
- for **asymptotic stability** we need to say that the flow will always get closer to the **ss**, notice how in this example for **attracting ss** the flow first  moves away the **ss**