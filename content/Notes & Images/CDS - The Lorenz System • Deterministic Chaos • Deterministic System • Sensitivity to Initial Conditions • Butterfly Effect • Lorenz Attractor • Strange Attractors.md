---
aliases:
  - deterministic chaos
  - deterministic system
  - sensitivity to initial conditions
  - butterfly effect
  - Lorenz attractor
  - strange attractors
  - Lorenz system
---
###### *Remember*:

> Let's start by visualizing what happens in a bowl of boiling water, "*convections cells*":<br>![[Pasted image 20240626090029.png|333]]
> Now, we represent with the ***Lorenz Sysntem***:
> - $x$ proportional to the **velocity field**.
> - $y$ proportional to the **difference of temperatures**. $\left(T_1 - T_2\right)$
> - $z$ proportional to the distortion of the **vertical profile of temperature**.
> - $\sigma$ depends on the **type of fluid**.
> - $b$ depends on the **geometry**.
> - $r$ depends on the **Rayleigh number** which influences the chage of behaviour from conductive to convective.<br>By increasing $r$ the gravitational forces become more dominant.

> ***Lorenz System***:$$\left\{\begin{array}{l} \dot x = \sigma (y-x) \\ \dot y = -xz + rx -y \\ \dot z = xy - bz \end{array}\right.$$Where:
> - $\sigma ,\ r ,\ b$ are **positive parameters**.
> 	- $\sigma = 10$.
> 	- $b = {8 \over 3}$.
> 	- $r \in \left[0,\ 30\right]$.
> - This system is "**autonomous**": no external forces influence the system.
> - And it is also "almost linear", since we only have $xz$, and $xy$ as **non-linear terms**.

> To analyze a system in general you need to:
> 1. Find the [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|steady states]].
> 2. [[CDS - Linearization|Linearize]].
> 3. Substituite the steady states $S_i$ in the ***Jaccobian matrix*** $(J)$ and calculte the [[CDS - Eigenvalues and Eigenvectors|eigenvalues]]
> 4. Plot the Real and Imaginary part of the [[CDS - Eigenvalues and Eigenvectors|eigenvalues]], with respect to the **parameter**.
> 5. Analyze the stability.
> 6. Plot the [[CDS - Examples for a Bifurcation Diagram|bifurcation diagram]].
> 7. Analyze the [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|bifurcations]]

> 1. ***Find the [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|steady states]]***:<br>![[Pasted image 20240626090908.png|444]]
> - And we'll find:$$\begin{array}{l} S_1 = \left(0,\ 0,\ 0\right) \\  S_2 = \left(\sqrt{b(r-1)} ,\  \sqrt{b(r-1)} ,\ r-1 \right) \\ S_3 = \left(-\sqrt{b(r-1)} ,\  -\sqrt{b(r-1)} ,\ r-1 \right)     \end{array}$$

> 2. ***[[CDS - Linearization|Linearize]]***:<br>![[Pasted image 20240626091055.png|444]]<br>![[Pasted image 20240626091148.png|444]]

> 3. ***Substituite $S_i$ in the Jaccobian Matrix $J$ and calculte the [[CDS - Eigenvalues and Eigenvectors|eigenvalues]]***:<br>![[Pasted image 20240626091407.png|444]]<br>![[Pasted image 20240626091304.png|444]]<br>![[Pasted image 20240626091720.png|444]]<br>![[Pasted image 20240626091433.png|444]]

> 4. ***Plot the Real and Imaginary part of the [[CDS - Eigenvalues and Eigenvectors|eigenvalues]], with respect to $r$***.<br>Rememebr that for each **steady state**, we have (in this case) 3 **eigenvalues**.<br>![[Pasted image 20240626091527.png|444]]<br>![[Pasted image 20240626091913.png|444]]
> - We will analyze (and now plot) $S_2$ and $S_3$ toghter since they [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] coincide.

> 5. ***Analyze the stability***:<br>*Where the real part changes sign, or more generarly the points in which the real part the eigenvalues beomes zero, for each steady state*:<br>![[Pasted image 20240626091708.png|444]]<br>![[Pasted image 20240626092408.png|444]]
> - $r_{\tiny H} \simeq 24.74$ (called "***critical value***") found using MATLAB.

> 6. ***Plot the [[CDS - Examples for a Bifurcation Diagram|bifurcation diagram]]***:<br>![[Pasted image 20240626092611.png|444]]
> - We don't see in this picture but there is another unstable limit cycle mirrored with respect to the abscissa.
> - ***NOTE***: above $r_{\tiny H}$ we have no stability exist/no attractors.<br>Unstable for the linearization ⇒ unstable for the real system.

> 7. ***Analyze the [[CDS - Bifurcation • Structural Stability • Bifurcation Value • Bifurcation Diagram|bifurcations]]***:<br>*Let's give a name/type for this bifurcations*<br>![[Pasted image 20240626092509.png|444]]

> Now we define the ***chaotic regime*** for the Lorenz system, and try to understand what is happening:
> - The **trajectories** are neither **diverging** neither **converging**.
> - There are no [[CDS - Steady States • Classification of Steady States • Stable • Unstable • Marginally Stable • Attracting • Lyapunov Stable • Asympotically Stable|attracting steady state]] or **limit cycles**.
> - The **trajectories** are repelled from one **unstable steady state**, or [[CDS - Non-Linear Systems • Limit Cycles • omega-limit set • Poincaré-Bendixon Theorem|limit cycle]] to another.
> - The **trajectories** are confined to a **bounded region** of the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]].
> - The **trajectories** cannot intersect themselves, then the trajectory asympthotically will follow an umpredictable behaviour.

> Here is the **Lorenz system** for $r<1$:<br>![[Pasted image 20240626093350 - Copia.png|444]]

> Here is the **Lorenz system** for $r \in (1,\ r_{\tiny H})$. given two diffrent initial conditions:<br>![[Pasted image 20240626093528 - Copia.png]]<br>![[Pasted image 20240626093735 - Copia.png]]

> Instead if we take $r > r_{\tiny H}$ then we are in the **chaotic regime**, let's see how the phase space evolves in time:<br>![[Pasted image 20240626094454 - Copia.png]]<br>![[Pasted image 20240626094544 - Copia.png]]<br>![[Pasted image 20240626094439 - Copia.png]]

> ***Definition 'Determinstic Chaos'***:
> There is no formal definition of "chaos", these are its properties.
> Deterministic chaos is an **asymptotic behaviour** produced by **nonlinear deterministic systems**, showing **aperiodic behaviour** and **sensitivity to initial conditions***.
> ==A chaotic system is deterministic and presents sensitivity to initial conditions==.

> ***Defintion 'Deterministic'***:
> *Given an initial condition, we have an unique solution.

> ***Defintion 'Sensitivity to Intial Conditions'***:
> This is also called the "***butterfly effect***": *A very very tiny change of the inital conditions, will produce an enormous change in the system after some time*.
> 
> Graphical representation of **sensitivity to intial conditions**, take the **Lorenz system**, in the **chaotic regime** (so: $r > r_{\tiny H}$), and take two intial condtions (we will see them represent in blue and in red) extreamely close to one another, this is what happens for a chaotic system, specifically this is the graph of a sysmtem that has **sensitivity to intial conditions**:<br>![[Pasted image 20240626094628.png|444]]
> As you can see the two variables become compleately different after some time, even if they started really close to one onother.

> ***Definition 'Lorenz attractor***':
> It is called an **attractor**, since the system will not diverge, it will remain confined in a closed region.
> It is also called "***strange attractor***", because ins not a typical one, the typical one are: 
> - **stable steady states** (**atttractors**)
> - **limit cycles** (and multiple-period limit cycles)

> The Lorents system, 3D graphical representation<br>:![[Pasted image 20240626095242.png|444]]

----

![[Pasted image 20240626085614.png]]

![[Pasted image 20240626085632.png]]

![[Pasted image 20240626085826.png]]

![[Pasted image 20240626090029.png]]
- $T_1 > T_2$
- This is a somewhat of an "organization" (not compleately chaotic).

![[Pasted image 20240626090201.png]]

![[Pasted image 20240626090213.png]]
- The four weels will evolve differenty (sensitivy to inital conditions)

![[Pasted image 20240626090456.png]]

![[Pasted image 20240626090708.png]]
- Autonomous (no external forces influence the system)
- Almost linear (we only have $xz$, and $xy$ as non-linear terms)
- We fix $\sigma$ and $b$ and study the system for $r \in \left[0,\ 30\right]$.

![[Pasted image 20240626090908.png]]

![[Pasted image 20240626090935.png]]
- We find $3$ steady states.

![[Pasted image 20240626091055.png]]

![[Pasted image 20240626091148.png]]
- Remeber that "*linearization is a local process*", so we'll need to repeat the following process for each steady state.

![[Pasted image 20240626091304.png]]
- Remeber that: $S_1 = \left(0,\ 0,\ 0\right)$

![[Pasted image 20240626091407.png]]

![[Pasted image 20240626091433.png]]

![[Pasted image 20240626091527.png]]
- **bifurcation diagram**. #not-sure-about-this 

![[Pasted image 20240626091708.png]]

![[Pasted image 20240626091720.png]]
- Remeber that: $S_2 = \left( \sqrt{b(r-1)} ,\ \sqrt{b(r-1)} ,\ r-1 \right)$
- Remeber that: $S_3 = \left( -\sqrt{b(r-1)} ,\ -\sqrt{b(r-1)} ,\ r-1 \right)$

![[Pasted image 20240626091913.png]]
- The have non-zero imaginary part.
- For $r \in \left[1,\ \sim 24.74\right]$ the real parts of the eigenvalues are negative.
- $\operatorname{Re}(\lambda_1) = \operatorname{Re}(\lambda_2)$.
- For $r < r_{\tiny H}$ (called "***critical value***") then the system is stable.
- For $r > r_{\tiny H}$ the system is unstable.
- For $r = r_{\tiny H}$ the real part of the 3rd eigenvalue $\operatorname{Re}(\lambda_3) = 0$.
- $r_{\tiny H} \simeq 24.74$ found using MATLAB

![[Pasted image 20240626092408.png]]

![[Pasted image 20240626092509.png]]

![[Pasted image 20240626092611.png]]
- We don't see in this picture but there is another unstable limit cycle mirrored with respect to the abscissa.
- ***NOTE***: above $r_{\tiny H}$ we have no stability exist/no attractors.<br>Unstable for the linearization ⇒ unstable for the real system.

![[Pasted image 20240626093012.png]]

![[Pasted image 20240626093311.png]]
- $r = 0.4$.

![[Pasted image 20240626093350.png]]
- Output of the previous, code:
	- In the first subplot we represent the **phase space**.
	- In the second subplote we represent the **dynamics**.

 ![[Pasted image 20240626093447.png]]
 - $r > 1$ (specifically $r=6$)

![[Pasted image 20240626093528.png]]
- Output of the previous, code.
- The origin is now an unstable steady state

![[Pasted image 20240626093651.png]]
- We change the initial conditions, $y_0 = \left[0.2 ,\ 2 ,\ 3\right]$

![[Pasted image 20240626093735.png]]
- We now converge to the second stable steady state.

![[Pasted image 20240626093822.png]]
- We change the initial conditions, $y_0 = \left[0.2 ,\ 0.2 ,\ 0.3\right]$ (closer to the origin)

![[Pasted image 20240626093914.png]]

![[Pasted image 20240626093935.png]]
- $r = 10$.

![[Pasted image 20240626094000.png]]

![[Pasted image 20240626094106.png]]
- $r > r_{\tiny H}$ ($r = 28$)

![[Pasted image 20240626094227.png]]

![[Pasted image 20240626094244.png]]
- Also we change the scale of to the abscissa and ordinate.
- (comment `axis([0 nstep*tstep -10 10])`)
- (uncomment `axis([0 nstep*tstep -20 20])`)
- (comment `axis([-10 10 -10 10])`)

This is the evolution of the chaotic system:<br>![[Pasted image 20240626094454.png|444]]<br>![[Pasted image 20240626094544.png|444]]<br>![[Pasted image 20240626094439.png|444]]

![[Pasted image 20240626094607.png]]

![[Pasted image 20240626094628.png]]
- Sensitivity to inital conditions, we report only one varible ($x(t)$), and 2 sliglty different initial conditions, as you can see they become compleately different after some time, even if they started really close to one onother.

![[Pasted image 20240626094803.png]]
- A very very tiny change of the inital conditions, will produce an enormous change in the system after some time.
- It is called an **attractor**, since the system will not diverge, it will remain confined in a closed region.
- It is also called "***strange attractor***", because ins not a typical one, the typical one are: 
	- **stable steady states** (**atttractors**)
	- **limit cycles** (and multiple-period limit cycles)

Rememebr that this is a 3D object:<br>![[Pasted image 20240626095123.png|444]]<br>![[Pasted image 20240626095141.png|444]]<br>![[Pasted image 20240626095203.png|444]]<br>![[Pasted image 20240626095242.png|444]]
- The two circles are unstable steady states.
- In the middle of the two unstable steady states we have the origin $\left(0,\ 0,\ 0\right)$.

![[Pasted image 20240626175250.png]]

![[Pasted image 20240626175610.png]]
- $r = 0.5$

![[Pasted image 20240626175637.png]]
- The red point is the origin, and also an **attractor steady state**.

![[Pasted image 20240626175718.png]]
- $r = 3$

![[Pasted image 20240626175751.png]]
- The origin is now a non-stable steady state.
- Two **attractive stable steady states appear**.
- Depending on the inital conditions, the system converges to one of the two steady states:<br>![[Pasted image 20240626175907.png|444]]

![[Pasted image 20240626175931.png]]
- $r = 10$
- .... same as [[CDS - Lecture 12]]


![[Pasted image 20240626180439.png]]
- For $r > r_{\tiny H}$ the system is chaotic.
- Here's the sensitivy to intial conditions, we change the inital condition of about $0.001\%$, and the results are completly different after some time.

![[Pasted image 20240626180420.png]]
- ***NOTE***: this is true only for  $r > r_{\tiny H}$ (so we are in the chaotic regime), otherwise if we are in a stable or unstable "region"/"regime" the system will be the same (a stable/ustable system has no sensitivy to intial conditions)
- If we change the $r$ to $r = 10$ this will be the resuts (the two graphs coincide so we can only see one):<br>![[Pasted image 20240626180545.png|444]]<br>If we zoom (a lot):<br>![[Pasted image 20240626180609.png|444]]

![[Pasted image 20240626181300.png]]<br>![[Pasted image 20240626181442.png]]
- There is no formal definition of "chaos", these are its properties
- **Deterministic**: "*given an initial condition, we have an unique solution".
