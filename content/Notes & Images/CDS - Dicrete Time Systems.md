---
aliases:
  - discrete time system
  - discrete time
  - steady state (discrete)
  - steady states (discrete)
  - geometric progression
  - cobweb
  - stability (descrete)
---

###### *Remember*:

> ***Discrete Time System***:$$x_{t+1} = f(x_t,\ r)$$The linear case will be of the form:$$x_{t+1} = a \kern1px x_t $$Where $a$ is a **free parameter**, also: $a \in \mathbb{R}^1$.
> - The solution to this system is a **sequence** of values $\left[x_0 ,\ x_1 ,\ \ldots ,\ x_{\tiny N} \right]$.
> - A **discrete time system** is also called a **map**.
> - We will only see monodimensional maps, so $x \in \mathbb{R}^1$ ($x$ is a scalar and not a vector).
> - We will see a **logistic map**, that shows **deterministic chaos**, and it is a monodimensional system.
> - $x_{t+1} = a x_t$ is called **geometric progression**, the solution (sequence) of this **linear case** is: $\left[x_0,\ a x_0 ,\ a^2 x_0,\ \ldots, a^n x_0 \right]$

> ***'Steady States' for Discrete Time Systems***: find the value $x^* \in \mathbb{R}^1$ such that, $$x_{t+1}^* =  x_t^*$$This is the condition to have **no motion** of the state $x_t^*$ over time.
> For the linear case the steady states will be: $x^* = a x^*$, meaning that the steady state will be: $x^* = 0,\ \forall a \neq 1$ and $\forall x^* ,\ a = 1$.

> ***Properties of the geometric progression***:
> - **Sign**:
> 	- $a \gt 0$ : the terms will all be the same sign as the intial term.
> 	- $a \lt 0$ : the terms will alternate between positive and negative.
> - **Growth/Decay**:
> 	- $|a| \gt 1$ : there will be exponential **growth**.
> 	- $|a| \lt 1$ : there will be exponential **decay**.
> 	- $|a| = 1$ : the "amplitude" will remain the same.

> ***Stability of the Steady State***, we will take into consideration the *geometric progression*:
> - For $|a| \lt 1$, $x^* = 0$ will be a **stable steady state**.
> - For $|a| \gt 1$, $x^* = 0$ will be an **unstable steady state**.
> - For $|a| = 1$ $x^*$ is **marginally stable**.
> 	- For $a = 1$ all possible value of $x^* \in \mathbb{R}$ are steady states.
> 	- For $a = -1$ $x^* = 0$ is the only steady state.

> ***Phase Space of Maps***:<br>![[Pasted image 20240702160806.png|444]]
> On the bisector line we have that all $x_{t+1} = x_t$. ( #not-sure-about-this representing the "*all possible steady states*")

> *~Ex.:* $a > 1$:<br>![[Pasted image 20240702161016.png|444]]<br>We can report how the system evolves with a positive inital condion $x_0$:<br>![[Pasted image 20240702161131.png|444]]<br>And also for a negative inital condition:<br>![[Pasted image 20240702161202.png|444]]

> For $x = 1$: Any $x_0$ is a steady state:<br>![[Pasted image 20240702161334.png|444]]
> If we represent like before the line $x_{t+1} = x_t$ (which is the bisector), and in red the line representing the function: $x_{t+1} = a x_t$, as we can see, for $a=1$, the two lines coincide.

> For $0 < a < 1$, we have a **convergent progression**, toward $0$:<br>![[Pasted image 20240702161501.png|444]]

> For $a < 0$ rember that we have an alternation of the sign:<br>![[Pasted image 20240702161701.png|444]]
> For $0 < a < 1$, again, we have a **convergent progession**

> For $a = -1$, we have again a marginal stability like for $a = 1$, but only $x^* = 0$ is a **steady state**.

> For $a < -1$ instead we have a **divergent progression**, towards $\pm \infty$ (or unsigned infinity):<br>![[Pasted image 20240702161820.png|444]]

> #IMPORTANT 
> These graphical representations are called "**cobweb**", and it is similar to how we represent the **flow** for **continous dynamical system**.
> As you can see in the discrete case, we now have "*jumps*" from one value to another.

----
![[Pasted image 20240702155042.png]]

![[Pasted image 20240702155237.png]]
- The solution to this system is a **sequence** of values $\left[x_0 ,\ x_1 ,\ \ldots ,\ x_{\tiny N} \right]$.
- A **discrete time system** is also called a **map**.
- We will only see monodimensional maps, so $x \in \mathbb{R}^1$ ($x$ is a scalar and not a vector).
- We will see a **logistic map**, that shows **deterministic chaos**, and it is a monodimensional system.

![[Pasted image 20240702155802.png]]
- When we reach a steady state, the state will remain the same, so: $x_{t+1}^* = x_t^*$.
- $x_{t+1} = a x_t$ is called **geometric progression**.

![[Pasted image 20240702160044.png]]
- $x_0$ is the initial term.

![[Pasted image 20240702160650.png]]

![[Pasted image 20240702160806.png]]
- This plot is defined as the **phase space of maps**.
- On the bisector line we have that all $x_{t+1} = x_t$.

![[Pasted image 20240702161016.png]]
- Here we have reported (red line) the function: $x_{t+1} = a x_t$, for $a > 1$.

![[Pasted image 20240702161131.png]]
- We can report how the system evolves with a positive inital condion $x_0$.

![[Pasted image 20240702161202.png]]
- And also for a negative inital condion.
- In both cases we have **divergent progression**.

![[Pasted image 20240702161302.png]]
- For $a = 1$, any $x$ is a steady state.

![[Pasted image 20240702161334.png]]
- If we represent like before the line $x_{t+1} = x_t$ (which is the bisector), and in red the line representing the function: $x_{t+1} = a x_t$, as we can see, for $a=1$, the two lines coincide.

![[Pasted image 20240702161501.png]]
- For $0 < a < 1$, we have a **convergent progression**, toward $0$.

![[Pasted image 20240702161555.png]]
- For $a < 0$ rember that we have an alternation of the sign, let's see how.

![[Pasted image 20240702161701.png]]
- Again a **convergent progession**.

![[Pasted image 20240702161734.png]]
- For $a = -1$.

![[Pasted image 20240702161820.png]]
- For $a < -1$ instead we have a **divergent progression**, towards $\pm \infty$ (or unsigned infinity).
- These graphical representations are called "**cobweb**", and it is similar to how we represent the **flow** for **continous dynamical system**.
- As you can see in the discrete case, we now have "*jumps*" from one value to another.