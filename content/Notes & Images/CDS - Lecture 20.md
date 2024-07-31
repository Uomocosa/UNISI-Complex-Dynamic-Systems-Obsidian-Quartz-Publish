- [[CDS - Lecture 20 ~ Matlab Script 'mandelbrot']]
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

----
![[Pasted image 20240702164353.png]]
- There is an error in the slide, it should be $r \in \left(0, 4\right]$, so $0$ is excluted.

![[Pasted image 20240702164555.png]]
- $f$ is defined as: $f(x) = rx(1-x)$.

![[Pasted image 20240702164731.png]]

![[Pasted image 20240702164800.png]]
- In discrete case we can have a new type of bifurcation: the "**flip bifurcation**".

Some calculations (Lecture 20 - Part 2 @ 11:20 ~ 30:30):<br>![[Pasted image 20240702164839.png]]<br>![[Pasted image 20240702165002.png]]<br>![[Pasted image 20240702165138.png]]<br>![[Pasted image 20240702165212.png]]<br>![[Pasted image 20240702165228.png]]<br>![[Pasted image 20240702165254.png]]<br>![[Pasted image 20240702165339.png]]<br>![[Pasted image 20240702165403.png]]
- So the flip bifurcation is the equivalent of the hopf bifurcation for dicrite time systems.

![[Pasted image 20240702165543.png]]

![[Pasted image 20240702165614.png]]

![[Pasted image 20240702165856.png]]
- Function `logistic_cobweb(r, x0, n)`, where:
	- `r` : parameter $r$.
	- `x0` : initial conditions.
	- `n` : number of iterations/steps.
- This are the results for `logistic_cobweb(r=0.6, x0=0.4, n=20)`

![[Pasted image 20240702165926.png]]
- Step 1.

![[Pasted image 20240702165941.png]]
- Step 2

![[Pasted image 20240702170014.png]]
- Step 20.
- This confirms that this is an **asympotically stable bahaviour**.

![[Pasted image 20240702170055.png]]
- Progression of values.

![[Pasted image 20240702170208.png]]
- `logistic_cobweb(r=1.2, x0=0.4, n=20)`
- Notice that this time there are two intersections between $f(x)$ and the bisector.

![[Pasted image 20240702170257.png]]
- So we have a steady state $\neq 0$.
- If we calculate it, it is at $\sim 0.1667$.

![[Pasted image 20240702170407.png]]
- `logistic_cobweb(r=1.2, x0=0.1, n=20)`

![[Pasted image 20240702170422.png]]
- Again it converges to the same ss as before.

![[Pasted image 20240702170459.png]]
- `logistic_cobweb(r=2.0, x0=0.4, n=20)`
- The ss has moved up, and it is still attractive.

![[Pasted image 20240702170559.png]]
- `logistic_cobweb(r=2.0, x0=0.9, n=20)`

![[Pasted image 20240702170623.png]]
- `logistic_cobweb(r=2.8, x0=0.3, n=20)`


![[Pasted image 20240702170647.png]]
- The system oscillate, but still converges to the ss.

![[Pasted image 20240702170737.png]]
- `logistic_cobweb(r=3, x0=0.3, n=20)`

![[Pasted image 20240702170749.png]]
- Transient dynamic.

![[Pasted image 20240702170842.png]]
- `logistic_cobweb(r=3.1, x0=0.3, n=100)`


![[Pasted image 20240702170857.png]]

![[Pasted image 20240702170942.png]]
- `logistic_cobweb(r=3.3, x0=0.3, n=100)`

![[Pasted image 20240702170956.png]]

![[Pasted image 20240702171046.png]]
- `logistic_cobweb(r=3.5, x0=0.3, n=100)`
- The trajectory now oscillates beetween $4$ points, instead before we could say that it oscillated between $2$ points.

![[Pasted image 20240702171150.png]]
- This is the equivalent of the **period doubling**.

![[Pasted image 20240702171250.png]]
- `logistic_cobweb(r=3.8, x0=0.3, n=100)`

![[Pasted image 20240702171315.png]]
- Chaos

![[Pasted image 20240702171403.png]]
- `logistic_cobweb(r=3.8, x0=0.1, n=200)`
- Like for the continous case, we can see that the trajectory will touch every single point in the phase space, without ever assuming the same value twice.

![[Pasted image 20240702171423.png]]

![[09122020. Part 2-00.53.10.000-00.54.50.000-seg1.mp4]]
- Lecture 20 - Part 2 @ 53:10 ~ 54:50

![[09122020. Part 2-00.55.15.000-00.58.51.000-seg2.mp4]]
- Lecture 20 - Part 2 @ 55:15 ~ 58:51

![[Pasted image 20240702171931.png]]
- $r < 1$ : the origin is an attractive state. 
- $1 < r < 3$ : the positive state value begins to rise (the oringin is no longer a stable ss).
- $3 < r < 3.5$ : we have the **flip bifurcation**, and in the graph we represent the two points of the oscillation.
- $\sim 3.5 < r < \sim3.6$ : each of the two branches has its onw flip bifurcation.
- $\sim 3.6 < r < ???$ : each of the four branches has its onw flip bifurcation.
- Then we have **chaos**.
- As you can see there is a white space in this graph, at about $\sim 3.7$ this is the so called "**periodic window**".

![[Pasted image 20240702172622.png]]
- Close up of the **periodic windows**.

![[Pasted image 20240702172743.png]]
- Here we can see that we have $3/4$ periodic windows, we can count the number of "points" in each of them and we can say that:
	- The first periodic window at $\sim 3.61$ is of period $6$.
	- The second periodic window at $\sim 3.74$ is of period $5$.
	- The first periodic window at $\sim 3.83$ is of period $3$.
