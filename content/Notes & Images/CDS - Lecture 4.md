![[Pasted image 20240622173234.png]]

![[Pasted image 20240622173251.png]]

![[Pasted image 20240622173328.png]]

![[Pasted image 20240622173346.png]]

![[Pasted image 20240622173411.png]]

![[Pasted image 20240622173809.png]]

![[Pasted image 20240622173828.png]]

-----

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
- The first graph is called **dyncamics graph**, the second **phase space**.

![[Pasted image 20240622182145.png]]
- If we take many different initial conditions

![[Pasted image 20240622182356.png]]

![[Pasted image 20240622182832.png]]
- So when desining the geometry of the **phase space**, then we will have that ==a solution in the phase space CANNOT intersect itself==, still under the hypotesis that $f$ is a differentiable function.

![[Pasted image 20240622183447.png]]
- eigenvectors ??? and eigenvalues ??? #TODO

![[Pasted image 20240622183754.png]]
- This is an example of how we can study the geometry of the steady state.
- The black point is a **STABLE steady state**, also called "***attractor***".
- The white point is a **UNSTABLE steady state***.
- The arrows define how ??? #TODO the system evolves / the initial condition evolves
- $\dot x$ can also be seen as representig the velocity, as you can see the velocity decreases as you approach the stady state.

![[Pasted image 20240622184717.png]]
- #IMPORTANT
- In case of linear system we need the **nullclines**, and **eigenvectors**, to define the phase space.

![[Pasted image 20240622184935.png]]

----

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

As a sneak-peak for the future, in this system we can define the ***eigenvalues*** as: $\lambda_1 = a$ and $\lambda_1 = -1$, the sign of the eigenvalues is strictly correleted to the stability of the steady states.

![[Pasted image 20240622195203.png]]

![[Pasted image 20240622195216.png]]
- This function is periodic over $x$, however monodimensional system cannot present periodicity over $t$, nor oscillations.
- As a sneak-peak: we'll need **imaginary eigenvalues** in a multidimensional system to have oscillations.

![[Pasted image 20240622195801.png]]
- mass-spring system (no damper).
- Since $\dot x \propto v$ (or because $\dot v \propto x$) we can call this system "***coupled***".
