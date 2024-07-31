---
aliases:
  - node
  - star
  - saddle
  - lines of steady states
---

###### *Remember*:

> This is the system: $$\left\{\begin{array}{l} \dot x = ax \\ \dot y = -y      \end{array}\right.$$We will see how it changes, and how we can represent the [[CDS - Vector Field|vector field]], 
> at different values of $a$.

> To have a better understanding on how you can calculate the **vector field**, and **nullclines** aslo refer to [[CDS - Nullclines|this other example]].

> First we represent $\dot y = -y$, this is its **vector field**:<br>![[Pasted image 20240622191852.png|222]]
> $y = 0$ is a **steady state**

> We can represent the **flow** of $\dot y = -y$ in its **vector field**:<br>![[Pasted image 20240622191939.png|222]]
> - On the left of the **steady state**, we have that $\dot y > 0$, then the **flow** will point to the right.
> - On the right of the **steady state**, we have that $\dot y < 0$, then the **flow** will point to the left.
> - We can conclude that $y=0$ is a **stable steady state**.

> Now we can study $\dot x = ax$, for $a < -1$:<br>![[Pasted image 20240622192826.png|222]]
> - Like before the **vector field** and so the **flow** are very similar.

> Let's combine this two solutions, and let's draw the **nullclines**, so let's find for $\dot x = 0$ and $\dot y = 0$, so:$$\begin{array}{l} \dot x = 0 \kern15px\Rightarrow\kern15px x = 0   \\   \dot y = 0 \kern15px\Rightarrow\kern15px y = 0  \end{array}$$For this case preatty simple, let's draw the nullclines:<br>![[Pasted image 20240622192804.png|222]]
> Then we can we can represent the flow (for $a\lt 0$):<br>![[Pasted image 20240622192954.png|333]]
> Note that: 
> - For $x\to \infty$ we have that the flow will be parallel to the $x$ axis.
> - For $x \to 0$ (the **ss**) we have that the flow will be parallel to the $y$ axis.

> If we represent the "***motion of a family of particles***" (the flow $\phi_t$):<br>![[Pasted image 20240622193132.png|222]]
> - This form is becasue $a < -1$, so the velocity along $x$ is higher than the velocity along $y$.
> - The velocities we said can be seen as $\dot x$ and $\dot y$.

> If we take $-1 \lt a \lt 0$:<br>![[Pasted image 20240622193450.png|222]]
> - The form slightly changes since now, the velocity along $x$ is lower than the velocity along $y$.

> Special case for $a = -1$:<br>![[Pasted image 20240622193517.png|222]]
> - In all of these cases this **steady state** is called a "***node***".
> - In this particular case, it is called a "***node star***"

> Instead for $a > 0$:<br>![[Pasted image 20240622193828.png|222]]
> This is an **unstable steady state**, since:
> - $\dot x \to 0^+ \gt 0$
> - $\dot x \to 0^- \lt 0$

> The **nullclines** changes:<br>![[Pasted image 20240622193949.png|222]]

> If we represent $\phi_t$ for $a \gt 0$: <br>![[Pasted image 20240622194042.png|222]]
> - All initial condition will diverge, **except** and initial condition such that it lies along the $y$ axis, so for $x = 0$.
> 	- For $x_0 = 0$ the system will converge to $0$ $(\forall \ y_0)$.
> 	- For $x_0 \neq 0$ the system will diverge $(\forall \ y_0)$.
> - So one component converges $(y)$ and the other $(x)$ diverges, when that is the case we obtain this graph, called a "***saddle***", name taken from the form of the **vector field**.

> Another special case: for $a = 0$:<br>![[Pasted image 20240622194538.png|222]]
> We cannot represent any arrow, and it said to be **marginally stable**.
> And the flow $\phi_t$ for $a = 0$:<br>![[Pasted image 20240622194717.png|222]]
> - Called "***line of steady states***".

----

![[Pasted image 20240622184935.png]]


![[Pasted image 20240622191328.png|444]]
- This is a special linear system, $\dot x$ depends only on $x$ and $\dot y$ depends only on $y$.

![[Pasted image 20240622191351.png|333]]
- General case.

If we solve analytically we find:$$x(t) = c e^{at}$$We can define:$$x_0 = ce^{a\cdot 0} = c$$And we can find:$$\begin{array}{l} x(t) = x_0 \kern2px e^{at} \\  y(t) = y_0 \kern2px e^{-t}    \end{array}$$However remeber, that we will not find analytic solutions.

We can represent the graph $\dot y = -y$:<br>![[Pasted image 20240622191852.png|333]]
- $y=0$ is a **steady state**.

Let's represent the flow:<br>On the right of the ss (steady state) the derivitave over time ($y$) is **positive**.<br>While on the left $\dot y < 0$, so:<br>![[Pasted image 20240622191939.png|333]]
- As we can see $y=0$ is a **stable steady state**.

Now we can study $\dot x = ax$, notice that $a$ can assume different values, mainly we will focus on $a > 0$ and for $a < 0$.
For $a \lt -1$, basically the graph is the same as before (for $\dot y = y$):<br>![[Pasted image 20240622192826.png|333]]

Let's combine this two solutions, and let's draw the **nullclines**, so let's find for $\dot x = 0$ and $\dot y = 0$, so:$$\begin{array}{l} \dot x = 0 \kern15px\Rightarrow\kern15px x = 0   \\   \dot y = 0 \kern15px\Rightarrow\kern15px y = 0  \end{array}$$For this case preatty simple, let's draw the nullclines:<br>![[Pasted image 20240622192804.png|333]]

Now we can represent the flow:<br>![[Pasted image 20240622192954.png|333]]
- For $x\to \infty$ we have that the flow will be parallel to the $x$ axis.
- For $x \to 0$ (the **ss**) we have that the flow will be parallel to the $y$ axis.

If we represent the "***motion of a family of particles***" (the flow $\phi_t$):<br>![[Pasted image 20240622193132.png|333]]
- This form is becasue $a < -1$, so the velocity along $x$ is higher than the velocity along $y$.
- The velocities we said can be seen as $\dot x$ and $\dot y$.

If we take $-1 \lt a \lt 0$:<br>![[Pasted image 20240622193450.png|333]]

Special case for $a = -1$:<br>![[Pasted image 20240622193517.png|333]]
- In all of these cases the node is called "***node***".
- In this particular case, it is called a "***node star***"

Let's see what happens for $a > 0$:<br>![[Pasted image 20240622193828.png|333]]
- This is an **unstable steady state**, since:
	- $\dot x \to 0^+ \gt 0$
	- $\dot x \to 0^- \lt 0$

The **nullclines** changes:<br>![[Pasted image 20240622193949.png|333]]

If we represent $\phi_t$ : <br>![[Pasted image 20240622194042.png|333]]
- All initial condition will diverge, **except** and initial condition such that it lies along the $y$ axis, so for $x = 0$.
	- For $x_0 = 0$ the system will converge to $0$.
	- For $x_0 \neq 0$ the system will diverge.
- So one component converges $(y)$ and another $(x)$ diverges, for this reason this graph is called a "***saddle***", since #not-sure-about-this

For $a = 0$:<br>![[Pasted image 20240622194538.png|333]]
- We cannot represent any arrow, and it said to be **marginally stable**.

And the flow $\phi_t$ for $a = 0$:<br>![[Pasted image 20240622194717.png|333]]
- Called "***line of steady states***".

As a sneak-peak for the future, in this system we can define the ***eigenvalues*** as:$\lambda_1 = a$ and $\lambda_1 = -1$, the sign of the eigenvalues is strictly correleted to the stability of the steady states.
