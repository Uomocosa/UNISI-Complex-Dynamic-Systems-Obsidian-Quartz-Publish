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

![[Pasted image 20240626181502.png]]<br>![[Pasted image 20240626181518.png]]
- #IMPORTANT 
- The rule/equation that govern a chotic systema are **deterministic** and **non-linear**.
- A chotic system will be aperiodic, also the **trajectory** will never pass two times in a single point.
- **Sensitivity to initial conditions**, we have already seen.
- The combination of the two mechanisms: **stretching** and **folding**:
	- **Strethcing**: the trajectory "streaches" form the steady state, there are some diverging mechanisms.
	- **Folding**: prevents the trajectory from escaping the region where the strange attractor lives.
	- "*Chaos is a combination of two mechanisms: diverge and convergence*".
- Often chaos includes the presence of **inifinite repulsive cycles**, this is typical of the ***Rostell attractor*** (it's not typical of the Lorenz system), but is a possible path to produce chaos.
- In general there are two properties to chaotic systems:
	- **Emergin patterns**: like for **strange attractos**, those are **emering patterns**, a geometry we didn't expect, we did not impose it in the system, it is self-organized.
	- **Adaptation**: chaotic systems have infinite different kinds of behaviors inside them, so we can say that the system has a "richness" of dynamics inside, you can visit all parts of the phase space (more precisly of the region defined by the strange attractors), so the dynamic is very free to evolve, ergo the system is very adaptive, you cannot disturb very much the system (it will go back to its chaotic trajectory), it is sentive to even a small change, but the system cannot be easily destroyed, so it is **higly adaptive**.
