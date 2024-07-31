To solve this exercises you'll **need** to use MATLAB.
*You can make a general script with MATLAB for each of the following points, I didn't make them, since I've had an Oral Exam instead of a Written one, sorry*.
I just made this kinda general script, but I don't know if you will find it useful:
- [[CDR - Topic of Choice 'Bifurcations' ~ MATLAB script 'bifurcations']]

----
For the **Dynamic Systems** exercises/solutions I have taken as example the [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|Lorenz system]].
For the **Discrete Systems** exercises/solutions I have taken as example the [[CDS - Logistic Equation • Stability Analysis for Discrete Time Systems|logistic equation]].
Also most of the code you'll need can be found it in the MATLAB Lab Lectures: 
- [[CDS - Lecture 7]]
- [[CDS - Lecture 9]]
- [[CDS - Lecture 11]]
- [[CDS - Lecture 14]]
- [[CDS - Lecture 21]]
- Follow these lectures and steal their code.

**Fax-simile exam/past exams** with good explanations and solutions: 
- [[CDS exam 2018 06 29 - with solutions]]

----
# Index
- [[#Find the Steady States (Dynamical Systems)]]
- [[#Study the Stability • Jacobian Matrix (Dynamical Systems)]]
- [[#Bifurcation Diagrams • Study the Bifurcations (Dynamical Systems)]]
- [[#Plot the Phase Plane and Phase Space (or Flow)]]
- [[#Coupled Systems • Graphs • Networks]]
- [[#Find the Steady States (Discrete Time System)]]
- [[#Bifurcation (Discrete Time System)]]

(==I DID NOT TEST THESE SCRIPTS==, please take them as reference only)

----
### Find the Steady States (Dynamical Systems)
```matlab
syms x y z k
sigma = 10;
beta = 8/3;
system = [
	sigma*(y-x) == 0
	-x*z + k*x - y == 0
	x*y - beta*z == 0
]
[S_1, S_2, S_3] = solve(system, [x, y, z])
```
----
### Study the Stability • Jacobian Matrix (Dynamical Systems)
1. [[#Find the Steady States (Dynamical Systems)]]
2. ***Find the Jacobian Matrix***:
	```matlab
	syms x y z k
	sigma = 10;
	beta = 8/3;
	system = [
		sigma*(y-x) == 0
		-x*z + k*x - y == 0
		x*y - beta*z == 0
	]
	J = jacobian(system, [x, y, z])
	```
3. ***Find the eigenvalues***:
	```matlab
	[x y z] = S_1
	J_of_S1 = subs(J)
	eigenvealues_1 = eig(J_of_S1)
	
	[x y z] = S_2
	J_of_S2 = subs(J)
	eigenvealues_2 = eig(J_of_S2)
	
	[x y z] = S_3
	J_of_S3 = subs(J)
	eigenvealues_3 = eig(J_of_S3)
	```
4. ***Plot the real part of the eigenvalues, and calculate where at least one of them is equal to $0$***:<br>This is a little more complex, since you'll need for each `eigenvealues_i` array, the real part of the 3 eigenvalues inside.<br>To do this you can use again the ['subs' function](https://it.mathworks.com/help/symbolic/subs.html), the ['real' function](https://it.mathworks.com/help/matlab/ref/real.html) and finally the ['plot' function](https://it.mathworks.com/help/matlab/ref/plot.html).<br>To find if and where at least one of these eigenvalues is/are equal to $0$, I would suggest the ['solve' function](https://it.mathworks.com/help/symbolic/sym.solve.html), similar to before, but you can find the way you prefer to solve this, even graphically if you want.
5. ***Study the stability***.<br>Suppose you have plotted the real (and if you want also the imaginary part) of all 9 found eigenvalues, and also found for which $k$ at least one eigenvalue is equal to $0$, for the sake of the example suppose you have found $k = 1$ and $k = 24.74$.<br>For each of these values take a value slighty smaller and onther value slighty larger, like $k = 0.99999$ and $k = 1.00001$, substittue them in the `eigenvalues_i` that corresepond to them, and see, for $k = 0.99999$:
	- If the eigenvalues are **all negative** ⇒ **asymptotic stability**.
	- If at least one eigenvalue is **positive** ⇒ **instability**.
	- Remeber that you can and should verify this.
	- Then do the same for $k = 1.00001$, then also for $k = 24.739999$ and for $k = 24.740001$, so that at the end you'll obtain somenthing like:<br>![[Pasted image 20240626091708.png|444]]
----
### Bifurcation Diagrams • Study the Bifurcations (Dynamical Systems)
1. Insert the system into MATLAB, similar to this:
	```matlab
	function [dot_x, dot_y, dot_z] = lorenz_system(x, y, z, k)
		sigma = 10;
		beta = 8/3;
		dot_x = sigma*(y-x)
		dot_y = -x*z + k*x - y
		dot_z = x*y - beta*z
	end
	```
2. [[#Find the Steady States (Dynamical Systems)]]
3. [[#Study the Stability • Jacobian Matrix (Dynamical Systems)|Find the Jacobian, and study the stability]].
4. ***Plot the Bifurcation Graph***.<br>An example on how to do this is explained in the [[CDS - Lecture 14|MATLAB Lab Lecture (14)]].
5. ***Study the Bifurcations***: we have seen **6 types** of bifurcation for **dynamic systems**:^study-the-bifurcations
	- [[CDS - Saddle-Node Bifurcation|Saddle-Node bifurcation]].
		- **Characteristics**: A saddle-node bifurcation occurs when two fixed points (one stable and one unstable) collide and annihilate each other as a parameter is varied.
		- **Stability**: Before bifurcation, there are two fixed points: one stable and one unstable. After bifurcation, both fixed points disappear, often leading to a sudden change in the system's behavior.
	- [[CDS - Transcritical Bifurcation|Transcritical bifurcation]].
		- **Characteristics**: Transient bifurcations are temporary changes in the dynamics of a system due to time-dependent parameters. They are not permanent and revert as the parameter continues to change.
		- **Stability**: The stability changes are transient and revert back once the parameter continues to evolve.
	- [[CDS - Supercritical Pitchfork Bifurcation|Supercritical pitchfork bifurcation]].
		- **Characteristics**: A supercritical pitchfork bifurcation occurs when a stable fixed point becomes unstable, and two new stable fixed points emerge symmetrically as a parameter passes through a critical value.
		- **Stability**: Before bifurcation, there is a single stable fixed point. After bifurcation, the original fixed point becomes unstable, and two new stable fixed points appear.
	- [[CDS - Subcritical Pitchfork Bifurcation|Subcritical pitchfork bifurcation]].
		- **Characteristics**: A subcritical pitchfork bifurcation occurs when a stable fixed point becomes unstable, and two unstable fixed points emerge symmetrically. As the parameter passes through a critical value, the system can exhibit a jump to one of the new stable branches.
		- **Stability**: Before bifurcation, the fixed point is stable. After bifurcation, the original fixed point becomes unstable, and two unstable fixed points appear.
	- [[CDS - Supercritical Hopf Bifurcation|Supercritical Hopf bifurcation]].
		- **Characteristics**: A supercritical Hopf bifurcation occurs when a fixed point becomes unstable, and a stable limit cycle (oscillatory behavior) emerges as a parameter passes through a critical value.
		- **Stability**: Before bifurcation, the fixed point is stable. After bifurcation, the fixed point is unstable, and the system exhibits stable oscillations.
	- [[CDS - Subcritical Hopf Bifurcation|Subcritical Hopf bifurcation]].
		- **Characteristics**: A subcritical Hopf bifurcation occurs when an unstable limit cycle exists for parameter values below the critical value. As the parameter passes through the critical value, the limit cycle disappears and the fixed point becomes unstable.
		- **Stability**: Before bifurcation, the fixed point is unstable. After bifurcation, the fixed point remains unstable, and there may be a sudden appearance or disappearance of an unstable limit cycle.
7. *~Example:*<br>Looking a this **INCOMPLETE** graph:<br>![[Pasted image 20240626092611.png|444]]<br>It is INCOMPLETE since there is another unstable limit cycle mirrored with respect to the abscissa, that is not reported here.<br>You need to identify the **bifurcations** like so:<br>![[Pasted image 20240626092509.png|444]]
----
### Plot the Phase Plane and Phase Space (or Flow)
- [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|dynamics graph]]
- [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]]
1. Define the system.
2. Take random initial condition: $x_0,\ y_0, z_0$.
3. For the **dynamics graph** how each variable of the system (*~ex.:* $x,\ y, z$) evolves by incrementing $t$ from $0$ to an arbitrary number $(t_f)$, and plot all the variable in the same **2D** graph.
4. For the **phase space** plot in a **3D** space (it depends on how many variables you have, in this case we have 3 variables so a 3D space) how the system evolves for $x_0,\ y_0, z_0$ to $x_f,\ y_f, z_f$, like before by incrementing $t$ from $0$ to an arbitrary number $(t_f)$.
5. Here's an example in 2D of both **dynamics** and **phase plane**/**phase space**:<br>![[Pasted image 20240622182145 - Copia.png|444]]
5. Here's an example in 3D of the **phase space** of the [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|Lorenz system]] in the **chaotic regime**:<br>![[Pasted image 20240626095242.png|444]]
----
### Coupled Systems • Graphs • Networks
1. Define the $n$ systems (at least $2$ systems are necessary), for example let's take the [[CDS exam 2015 12 21 - with solutions|1st exercise of the 2015_12_21 exam]]:$$\begin{array}{l}\left\{\begin{array}{l} \dot x_1 = -y_1 -z_1\\ \dot y_1 = x_1 + a y_1\\ \dot z_1 = b + z_1(x_1 - c)       \end{array}\right. \\[10px] \left\{\begin{array}{l}  \dot x_2 = d x_2 - y_2 + s x(x_2^2 + y_2^2) \\ \dot y_2 =  x_2 + d y_2 + sx_2(x_2^2 + y_2^2)     \end{array}\right.\end{array}$$
2. In these systems you to have a parameter (*~ex.:* $h$) that "binds" two variables of the two systems, like:$$\begin{array}{l}\left\{\begin{array}{l} \dot x_1 = -y_1 -z_1 + h(x_2-x_1)\\ \dot y_1 = x_1 + a y_1\\ \dot z_1 = b + z_1(x_1 - c)       \end{array}\right. \\[10px] \left\{\begin{array}{l}  \dot x_2 = d x_2 - y_2 + s x(x_2^2 + y_2^2)  + h(x_1-x_2) \\ \dot y_2 =  x_2 + d y_2 + sx_2(x_2^2 + y_2^2)     \end{array}\right.\end{array}$$
3. (*Optional*) Draw the graph, and define the $A$ matrix:<br>![[Pasted image 20240701193045.png|222]]<br>And the $A$ Matrix will be:$$A = \left[\begin{array}{l}0 & 1  \\ 1  & 0 \end{array}\right]$$This matrix means that the **node 1** (representing the first system) is connected to **node 2** (the second sysmtem), since we have the term: $h(x_1 - x_2)$ in the first sysmtem.<br>And also that the **node 2** is also connected to **node 1**, since we have the term $h(x_2 - x_1)$ in the second system.<br>For reference: 
	- [[CDS - Lecture 18]]
	- [[CDS - Lecture 19]]
4. Plot the evoulution of the two system for diffrent values of $h$, the plot can be done **component-wise** or **system/node-wise**, somenthing like:<br>![[Pasted image 20240701193658 - Copia.png]]<br>This plot are basically [[#Plot the Phase Plane and Phase Space (or Flow)|plots of the dynamics]].
- A "strange/difficult question": "*Report a brief description of the two systems*"
	- ***Fax-Simile Answer***: "*The first systems is the Rossler system, the second system is the normal form of the Hopf bifurcation*". ([[CDS exam 2015 12 21 - with solutions|from the 2015_12_21 exam]])
	- ***NOTE***: we have seen many system that you need to memorize:
		- [[CDS - Transcritical Bifurcation|Normal form of the transciritical bifurcation]].
		- [[CDS - Saddle-Node Bifurcation|Normal form of the saddle-node bifurcation]].
		- [[CDS - Hopf Bifurcation|Normal form of the hopf bifurcation]].
		- [[CDS - Pitchfork Bifurcation|Normal form of the pitchfork bifurcation]].
		- [[CDS - Introduction to Deterministic Chaos • The Rossler System • Period Doubling • Stretching and Folding Mechanism|Rossler system]]
		- [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|Lorenz system]]
		- [[CDS - Dicrete Time Systems|Geometric progression]] (discrete time)
		- [[CDS - Logistic Equation • Stability Analysis for Discrete Time Systems|Logistic equation]] (discrete time)
- A "strange/difficult question": "*Can you summarize all the results in a single sentence?*"
	- ***Fax-Simile Answer***: "*The coupling stabilizes the two systems and eliminates oscillations*". ([[CDS exam 2015 12 21 - with solutions|from the 2015_12_21 exam]])
- A "strange/difficult question": "*Discuss the obtained results by comparing them with the solutions of the uncoupled sysmtem?*"
	- ***Fax-Simile Answer***: "*Stable steady states are stronger than oscillations*.<br>*Period-1 oscillations are stronger than period-2nT (period-2, period-4, period-8, ...) oscillations and chaotic oscillations*". ([[CDS exam 2015 12 21 - with solutions|from the 2015_12_21 exam]])

----
### Find the Steady States (Discrete Time System)
- Given the system:$$x_{t+1} = f(x_t)$$Like for example: $x_{t+1} = r \kern1px x_t(1-x_t)$<br>The steady state are values $x^*_i$ such that:$$x^* = f(x^*)$$
- So for the [[CDS - Logistic Equation • Stability Analysis for Discrete Time Systems|logistic equation]], since it is a second order equation, we will find 2 steady states:$$\left\{\begin{array}{l} x^*_1 = 0 \\ x^*_2 = {r-1 \over r} \end{array}\right.$$
- You can automatically find the steady states in MATALB, similar to how we found them for the [[#Find the Steady States (Dynamical Systems)|dynamical case]].
----
### Bifurcation (Discrete Time System)
The steps are similar to the [[#Bifurcation Diagrams • Study the Bifurcations (Dynamical Systems)|bifurcation in dynamical systems]], but there are some differences.
1. [[#Find the Steady States (Discrete Time System)]]
2. Find the derivative $\left(f' = {d \over dx}f(x)\right)$ of the discrete function $x_{t+1} = f(x_t)$
3. Study the stability for each $x^*_i$ found:
	- If $\left|f'(x^*)\right| \lt 1$ : then the steady state $x^*$ is **asymptotically stable**.
	- If $\left|f'(x^*)\right| \gt 1$ : then the steady state $x^*$ is **unstable**.
	- If $\left|f'(x^*)\right| = 1$ : then we cannot say anything about the stability of $x^*$.
4. Plot the bifurcation diagram, in MATLAB it will be much simpler than for the **dynamical case**.
5. Using the study of the stability and the bifurcation plot, study the bifurcations:
	- **saddle-node bifurcation**, **transcitical bifuracitions**, **supercritical/subcritical pitchfork bifurcations** are the same as for the [[#Bifurcation Diagrams • Study the Bifurcations (Dynamical Systems)|dynamical case]].
	- For the **discrete case** however, we have that there are no **supercritical/subcritical Hopf bifurcations**, but there can be **flip bifuractions**.
		- ***Flip Bifucration***: If the derivative evaluated in the steady state is equal to $-1$ for some values of the parameter $k = \bar k$ :$$\left.f'(x, \bar k)\right|_{x=x^*} = -1$$*This definition is given in the [[CDS exam 2015 09 17|2nd execrise of the 2015-09-17 exam]]*.
		- ***Flip Bifurcation***: we have seen that a flip bifucation occurs for the [[CDS - Logistic Equation • Stability Analysis for Discrete Time Systems|logistic equation]] for $k = 3$, when the steady states loose stability and "undumped oscillations" begin to occur after this value:<br>![[Pasted image 20240702165339.png]]<br>Let's see some examples to better understand the "flip bifurcation":
			- For $r \lt 3$ ($r = 2.8$):<br>![[Pasted image 20240702170647.png|333]]
			- For $r = 3$:<br>![[Pasted image 20240702170749.png|333]]
			- For $r > 3$ ($r = 3.1$):<br>![[Pasted image 20240702170857.png|333]]
----
