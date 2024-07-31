---
aliases:
  - logistic equation
  - bifurcation diagram (in discrete time)
  - periodic windows
  - period doubling (in discrete time)
  - chaotic regime (in discrete time)
  - flip bifurcation
---
###### *Remember*:

> ***Discrete Time Logistic Equation***:$$x_{t+1} = r \kern1px x_t(1-x_t)$$Where: $r \in \left(0, 4\right]$, meaning $0$ is excluded.
> If we search for the [[CDS - Dicrete Time Systems|steady states]] we will find:$$\left\{\begin{array}{l} x^*_1 = 0 \\ x^*_2 = {r-1 \over r} \end{array}\right.$$

> ***Stability Analysis***: To study the stability we need first to calculate the derivative of $f$, so for the **logistic equation**, with $f(x) = rx(1-x)$ :$$f' = r - 2rx$$And from this we can say:
> - If $\left|f'(x^*)\right| \lt 1$ : then the steady state $x^*$ is **asymptotically stable**.
> - If $\left|f'(x^*)\right| \gt 1$ : then the steady state $x^*$ is **unstable**.
> - If $\left|f'(x^*)\right| = 1$ : then we cannot say anything about the stability of $x^*$.

> *~Ex.:* stability of $x_1^* = 0$: $$f'(x^*_1) = r$$Then:
> - For: $0 \lt r \lt 1$ : $x^*_1$ is **asymptotically stable**.
> - For: $1 \lt r \leq 4$ : $x^*_1$ is **unstable**.
> - For $r = 1$ then we could have a [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|bifurcation point]], notice that:$$\left.f'(x^*_1)\right|_{r=1} = 1$$For discrete time system the $f = 1$, is equivalent to the continus time case where $f = 0$.
> 	- Then we can have a [[CDS - Saddle-Node Bifurcation|saddle-node bifurcation]], a [[CDS - Transcritical Bifurcation|transcritical bifurcation]] or a [[CDS - Pitchfork Bifurcation|pitchfork bifurcation]].

> *~Ex.:* stability of $x_2^* = {r-1 \over r}$: $$f'(x^*_2) = 2-r$$Then:
> - If $0 \leq r \lt 1$ : $x^*_2$ is **unstable**.
> - If $1 \lt r \lt 3$ : $x^*_2$ is **asymptotically stable**.
> - If $3 \lt r \leq 4$ : $x^*_2$ is **unstable**.
> - So for $r  = 1$ we could have a [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|bifurcation point]], since like for the $x_1^*$ example:$$\left.f'(x^*_2)\right|_{r=1} = 1$$Like before, we can have a [[CDS - Saddle-Node Bifurcation|saddle-node bifurcation]], a [[CDS - Transcritical Bifurcation|transcritical bifurcation]] or a [[CDS - Pitchfork Bifurcation|pitchfork bifurcation]].
> - Also for $r = 3$:$$\left.f'(x^*_2)\right|_{r=3} = -1$$We have another [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|bifurcation point]], but in this case we have a **flip bifurcation**, where the flip bifurcation is the equivalent of the [[CDS - Hopf Bifurcation|hopf bifurcation]] for discrete time systems.<br>***NOTE***: we need to verify that this is in fact a **flip bifurcation** via simulation.

> Here's the [[CDS - Examples for a Bifurcation Diagram|bifurcation diagram]]:<br>![[Pasted image 20240702165339.png]]
> So as a recap we have that:
> - $x^*_1  = 0$, and $x^*_2 = {r-1 \over r}$
> - For $0 \leq r < 1$, we have $x^*_1$ **asympt. stable**, and $x^*_2$ **unstable**.
> - For $1 \lt r < 3$, we have $x^*_1$ **unstable**, and $x^*_2$ **asympt. stable**.
> - For $3 \lt r < 4$, we have $x^*_1$ **unstable**, and $x^*_2$ **unstable**.
> - Here's a drawing to better undestand:<br>![[Pasted image 20240702165543.png|444]]

> Let's see the [[CDS - Dicrete Time Systems|cobweb graph]]:
> 1. We start by drawing the bisector line (representing $x_{t+1} = x_t$) and the function $f(x)$, and in this case $f(x_t) = rx_t(1-x_t)$, the **logistic funciton**.<br>We choose an arbitrary parameter $r = 0.6$:<br>![[Pasted image 20240702165856.png|333]]
> 2. We choose an arbitrary **initial condition** $x_0 = 0.4$, and start by calculating the next step, meaning $x_{1} = f(x_0)$:<br>![[Pasted image 20240702165926.png|333]]
> 3. We choose the last arbitrary value, **the number of steps** $(n)$ for drawin the **cobweb graph**, we have choosen $n = 20$:<br>And we iterate: $x_2 = f(x_1)$, then $x_3 = f(x_2)$ and so on...<br>![[Pasted image 20240702165941.png|333]]<br>![[Pasted image 20240702170014.png|333]]
> 4. This confirms that this is an **asympotically stable bahaviour**, we can also see it by plotting the **progession of values**, or [[CDS - Dicrete Time Systems|solution of the discrete time system]]:<br>![[Pasted image 20240702170055.png|333]]

> We can change the values: $r$ (**parameter**), $x_0$ (**intial conditions**) and $n$ (**number of steps**), to see how the system evolves.
> `logistic_cobweb(r=1.2, x0=0.4, n=20)`:<br>![[Pasted image 20240702170208.png|333]]<br>![[Pasted image 20240702170257.png|333]]

> `logistic_cobweb(r=1.2, x0=0.01, n=20)`:<br>![[Pasted image 20240702170407.png|333]]<br>![[Pasted image 20240702170422.png|333]]

> `logistic_cobweb(r=2.0, x0=0.4, n=20)`:<br>![[Pasted image 20240702170459.png|333]]

> `logistic_cobweb(r=2.0, x0=0.4, n=20)`:<br>![[Pasted image 20240702170559.png|333]]

> `logistic_cobweb(r=2.8, x0=0.3, n=20)`:<br>![[Pasted image 20240702170623.png|333]]<br>![[Pasted image 20240702170647.png|333]]

> `logistic_cobweb(r=3, x0=0.3, n=20)`:<br>![[Pasted image 20240702170737.png|333]]<br>![[Pasted image 20240702170749.png|333]]
> This is called **transient dynamic**.

> `logistic_cobweb(r=3.1, x0=0.3, n=100)`:<br>![[Pasted image 20240702170842.png|333]]<br>![[Pasted image 20240702170857.png|333]] ^logistic-cobweb-1-period-oscillatons

> `logistic_cobweb(r=3.5, x0=0.3, n=100)`:<br>![[Pasted image 20240702171046.png|333]]<br>![[Pasted image 20240702171150.png|333]] 
^logistic-cobweb-period-doubling
> - The trajectory now oscillates beetween $4$ points, instead before we could say that it oscillated between $2$ points.
> - This is the equivalent of the [[CDS - Introduction to Deterministic Chaos • The Rossler System • Period Doubling • Stretching and Folding Mechanism|period doubling]] in the continous time case.

> `logistic_cobweb(r=3.8, x0=0.3, n=100)`:<br>![[Pasted image 20240702171250.png|333]]<br>![[Pasted image 20240702171315.png|333]]
> - We have reached the **chaotic regime**.

> If we draw the [[CDS - Examples for a Bifurcation Diagram|bifurcation diagram]]:<br>![[Pasted image 20240702171931.png|444]]
> - $r < 1$ : the origin is an attractive state. 
> - $1 < r < 3$ : the positive state value begins to rise (the oringin is no longer a stable ss).
> - $3 < r < 3.5$ : we have the **flip bifurcation**, as we have seen in this range we begin exepriencing the first "oscillation" of the system, see [[#^logistic-cobweb-1-period-oscillatons|this cobweb plot]].
> - $\sim 3.5 < r < \sim3.6$ : each of the two branches has its onw flip bifurcation, we have seen it [[#^logistic-cobweb-period-doubling|in this cobweb plot]] we have a [[CDS - Introduction to Deterministic Chaos • The Rossler System • Period Doubling • Stretching and Folding Mechanism|period doubling]], meaning that instead of having just one oscillation between $2$ points, here we have an oscillation between $4$ points.
> - $\sim 3.6 < r < ???$ : one more time, each of the four branches has its onw flip bifurcation.
> - Then we have **chaos**.
> - ==As you can see there is a white space in this graph, at about $\sim 3.7$ this is the so called "**periodic window**"==.

> Close up of the **periodic windows**:<br>![[Pasted image 20240702172622.png|333]]<br>![[Pasted image 20240702172743.png|333]]
> - Here we can see that we have $3/4$ periodic windows, we can count the number of "points" in each of them and we can say that:
> 	- The first periodic window at $\sim 3.61$ is of period $6$.
> 	- The second periodic window at $\sim 3.74$ is of period $5$.
> 	- The first periodic window at $\sim 3.83$ is of period $3$.

----
![[Pasted image 20240702164353.png]]
- There is an error in the slide, it should be $r \in \left(0, 4\right]$, so $0$ is excluted.

![[Pasted image 20240702164555.png]]
- $f$ is defined as: $f(x) = rx(1-x)$.

![[Pasted image 20240702164731.png]]

![[Pasted image 20240702164800.png]]
- In discrete case we can have a new type of bifurcation: the "**flip bifurcation**".

Some calculations (Lecture 20 - Part 2 @ 11:20 ~ 30:30):<br>![[Pasted image 20240702164839.png]]<br>![[Pasted image 20240702165002.png]]<br>![[Pasted image 20240702165138.png]]<br>![[Pasted image 20240702165212.png]]<br>![[Pasted image 20240702165228.png]]<br>![[Pasted image 20240702165254.png]]<br>![[Pasted image 20240702165339.png]]<br>![[Pasted image 20240702165403.png]]
- So the flip bifurcation is the equivalent of the hopf bifurcation for discrete time systems.

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
