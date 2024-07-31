---
aliases:
  - ODE
  - flow
  - phase plane
  - phase space
  - dynamics
  - dynamics graph
---
###### *Remember*:

> ***Definition of ODE*** (*Ordinary Differential Equation*):$$\dot x = f(x) \kern15px:\kern15px \begin{array}{l} x \in \mathbb{R}^n,\\ f \in U \to \mathbb{R}^n\end{array}$$Where:$$\dot x = {dx \over dt}$$And: $U \subset \mathbb{R}^n$ is a **differentiable set** #not-sure-about-this 

> ***Definition of solution***: $$x(x_0,\ t) : I \to \mathbb{R}^n$$Where: 
> - $x_0$ are the "*initial condtitons*", $x_0 \in \mathbb{R}^n$ and are **fixed**, choosen at priori.
> - $t$ is **time**, $t \in I$, and $I \subset \mathbb{R}$, and in this case is a **variable**.

> We are not interested/we don't care about solving for $x(t)$ analytically, we will not find the formula, at most we will solve it **numerically**, that means, solving using numerical data, giving $x(t)$ and $t$ actual values.
> #IMPORTANT 

> ***Definition of 'flow'***:$$\phi_t : U \to \mathbb{R}^n$$Where: 
> - $U$ is the space where $f$ is defined.
> - $\phi_t(x)$ is just a fancy way of writing $\phi(x,\ t)$.
> - Consider the **flow** as an "*image*" of the function $\dot x = f(x)$ for some $t \in [t_0,\ t_f]$ and initial state $x_0$, where: $x_0 = x(t_0)$.

> Here we can see how the flow $\phi_t$ is represented:<br>![[Pasted image 20240622180032 - Copia.png|444]]
> In first picture we use **a single initial condition**.
> In the second we use **many initial conditions**, to see how the system evolves, each inital condition corresponds to a curve of the entire flow.
> ==The arrows on the curves represent the time==.

> A single ODE like we have seen before with $x \in \mathbb{R}^n$, can also be seen as a  system of equation, like so:$$\left\{\begin{array}{l} \dot x_1 =  f_1(x_1,\ \ldots ,\ x_n)  \\ \dot x_2 =  f_2(x_1,\ \ldots ,\ x_n)  \\ \vdots \\ \dot x_n =  f_n(x_1,\ \ldots ,\ x_n)    \end{array}\right.$$Where: $x_1,\ \ldots ,\ x_n$ are all **scalars** (meaning $\in \mathbb{R}^1$).
> $\mathbb{R}^n$ is called the **phase space**, (also called **phase plane** if $\mathbb{R}^2$).

> Here's the example in which $x\in \mathbb{R}^2$:<br>![[Pasted image 20240622180737 - Copia.png|444]]
> - In the first graph we represent the **dynamics** $x_1(t)$ and $x_2(t)$
> 	- $x_1(t)$ is called $x(t)$
> 	- $x_2(t)$ is called $y(t)$
> - In the second graph we represnt the **flow**, however it misses the arrows that indicate the flowing of time.
> - If we were to take $x\in \mathbb{R}^3$ we would need a **3D** graph to represent **flow**.
> - ==The first graph represents the **dynamics** (and is always represented as a **2D graph**), the second **phase plane** or more in general it is called the **phase space**==.

> If we take many different initial conditions:<br>![[Pasted image 20240622182145 - Copia.png|444]]
> When we talk about $\phi_t$ convenitionally we the motion of a **familiy of particles**, so many particles not just one.

----

![[Pasted image 20240622174532.png]]
- We are not interested/we don't care about solving for $x(t)$ analytically, we will not find the formula, at most we will solve it **numerically**, that means, solving using numerical data, giving $x(t)$ and $t$ actual values.


![[Pasted image 20240622175510.png]]
- Consider the **flow** as an "*image*" of the function $\dot x = f(x)$ for some $t=\tau$ and initial state $x_0$, where: $x_0 = x(t = \tau_0)$.

![[Pasted image 20240622180032.png]]
- In first picture we use a single initial condition, in the second we use many initial conditions, to see how the system evolves.


![[Pasted image 20240622180300.png]]
- $x$, so $x_0$ as well, are vectors, while $t$ the time is a scalar, so $t \in \mathbb{R}$.

![[Pasted image 20240622180737.png]]
- Here's the example in which $x\in \mathbb{R}^2$
- In the first graph we represent $x_1(t)$ and $x_2(t)$
	- $x_1(t)$ is called $x(t)$
	- $x_2(t)$ is called $y(t)$
- In the second graph we represnt the **flow**, however it misses the arrows that indicate the flowing of time.
- If we were to take $x\in \mathbb{R}^3$ we would need a 3D graph to represent **flow**.
- The first graph is called/represents **dynamics**, the second **phase space**.

![[Pasted image 20240622182145.png]]
- If we take many different initial conditions