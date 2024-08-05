![[Pasted image 20240624112348.png]]

![[Pasted image 20240624112026.png]]
- ***hyperbolic ss***: the associated linearization does not have any $0$-eigenvalues, meaning the all eigenvalues are $\neq 0$, or in case that they are imaginary, their real part is  $\neq 0$. #IMPORTANT 
- A manyfold is a generalization of a subspace in a nonlinear space. #IMPORTANT 
 - $^U$ : unstable
 - $^S$ : stable
 - The manyfolds $W$ are tangent to $E$ specifically at the stady state $x^*$, this means:
	 1. We can approximate a non-linear system into a linear system, and we get similar information regarding the stability of the stady states (if the ss is hyperbolic).
	 2. In linear systems, the subspaces $E^S$ and $E^U$ generate/span the whole phase space, meaning that any vector is a linear combination of the vector spanning $E^S$ and $E^U$.<br>For example, if you have only stable subspaces ⇒ then you will have only stable steady states.<br>==$E^S$ and $E^U$ are generated respectivly by negative and positive eigenvalues/eigenvectors==.

![[Pasted image 20240624113353.png]]

This is the space generated by eigenvector with both positive eigevalues:<br>![[Pasted image 20240624113451.png|333]]
And the flow associated is:<br>![[Pasted image 20240624113514.png|333]]

Example of a saddle (linear):<br>![[Pasted image 20240624113722.png|333]]
- $v_1$ spans the unstable subspace $(E^U)$ 
- $v_2$ spans the stable subspace $(E^S)$ 

Example of a non-linear saddle:<br>![[Pasted image 20240624113853.png|333]]
- near to the ss, the linar approximation is tangent to the manyfold
- As you can see the stable manyfold $(W_{\tiny{\text{LOC}}}^{S})$ has the flow that points toward the **ss**, while for the unstable manyfold $(W_{\tiny{\text{LOC}}}^{U})$ the flow points to infinty.
- The linar approximation is valid only near the **ss**.

If we draw the flow of the non-linar system:<br>![[Pasted image 20240624114503.png|333]]
- Notice the similiraties with the linear system.
- In this case is like the linear system, but it is distorted.

![[Pasted image 20240624114620.png]]

Example of a "3D saddle", however this is not the "official name", in 3D we don't distinguish between "*nodes*", "*spirals*", "*saddles*", ...:<br>In general this is referenced as: "2 stable, 1 unstable eigenvectors/eigenvalues"<br>![[Pasted image 20240624114832.png|444]]<br>![[Pasted image 20240624114849.png|444]]<br>![[Pasted image 20240624114918.png|444]]

Example of 2 stable imaginary conjugate, 1 stable eigenvectors:<br>![[Pasted image 20240624115155.png|444]]<br>![[Pasted image 20240624115224.png|444]]
If instead we have 2 stable imaginary conjugate, 1 unstable eigenvectors:<br>![[Pasted image 20240624115407.png|444]]
- Notice how in the **phase plane** the two conjugate eigenvalues converge to $0$, but the third one diverges.

2 marginally-stable imaginary conjugate, 1 unstable eigenvectors:<br>![[Pasted image 20240624115627.png|444]]<br>![[Pasted image 20240624115750.png|444]]
- In the **phase plane** we have 2 sinusodial "constant" function (their amplitdue reamains constant) and 1 exponentially decreasing function.

If instead we have 2 marginally-stable imaginary conjugate, 1 marginally-stable eigenvectors:<br>![[Pasted image 20240624115953.png|444]]
- ==This is an infinite series of separated circles==.

![[Pasted image 20240624120104.png]]
- In 3D we don't distinguish between "*stars*", "*nodes*", ...

----
![[Pasted image 20240624161147.png]]

![[Pasted image 20240624161235.png]]

![[Pasted image 20240624161404.png]]
- ~Ex.: steady states that disappear when changing the parameters.
- If in a system all ss are hyperbolic ⇒ the system is structurally stable.
- To have structural instability we need that chagning the parameter we change the sing of the eigenvalues, at the value of the parameter, for which we have the change of sing, so for $\mu^* : \lambda_1 \text{ or } \lambda_2 = 0$, we have a "***bifurcation***" ($\mu$ is the parameter)

![[Pasted image 20240624161749.png]]
- $f$ is a non-linear function.

![[Pasted image 20240624162034.png]]
- This graph is **NOT** the "*bifurcation diagram*", we will see it later.
- The arrows in the diagram represnt the steady states, depending or $r$ we may have $2$, $1$ (actually $2$ "***coinciding***" steady states) or $0$ steady states.
- If we analyze this steady states, like we have seen in the previous lectures, we can see that (looking at the red curve), we have 1 stable ss and 1 unstable ss.

![[Pasted image 20240624162422.png]]
- So for $r = 0$ we have a **bifurcation**.
- Also not that for $r = 0$ we have a marginal system/we are in a marginal systuation.<br>You can imagine the two steady states (for the red curve, that are 1 stable and 1 unstable) uniting giving un a mix between a stable and unstable ss, however this does not mean that it's a marginal ss, more on that later.

Let's see how we analyzed the steady states on the red parabola:<br>![[Pasted image 20240624163048.png|444]]
If we perform the linearization:<br>![[Pasted image 20240624163137.png|444]]

> ***REMEMBER***: in a non-linar system you may have no steady state, while in a linear system you have **at least 1 ss**.

For $r > 0$:<br>![[Pasted image 20240624163349.png|333]]
We have no steady states.

For $r = 0$, the approximation is marginally stable:<br>![[Pasted image 20240624163546.png|444]]
==But the actual steady state is NOT!==:<br>![[Pasted image 20240624163705.png|444]]
- If we take an inital condition on the left $(x < 0)$ than we will have a stable system.<br>However it we take an inital condition on the right $(x > 0)$ than we will have an unstable system.

![[Pasted image 20240624163932.png]]
- This is the "***bifurcation diagram***".
- The x-axis represents the values of the parameter $r$.
- The y-axis represents the values of the steady states.
- A continuos line represents a **stable ss**.
- A dotted line represents an **unstable ss**.
- For $r = 0$ we have a **bifurcation**, and specifically this is a "***saddle-node bifurcation***", since we have 1 stable and 1 unstable steady states that collpase.

![[Pasted image 20240624164324.png]]
- This is considered the "simplest case of bifurcation".
- This system has 2 steady states $x_1^* = 0$ and $x_2^* = r$.
- Red parabola: $r < 0$.
- Green parabola: $r > 0$.
- Blue parabola: $r = 0$.
- Changin $r$ this time changes the stability of one of the steady states, and differently from before no steady states disappears.

![[Pasted image 20240624164721.png]]
- Analysis of the stability of the steady states.
- Again when the two steady stated conicide for $r = 0$ the steady state is stable from on part, and unstable from the other part, like for the **saddle-node bifurcation**.

![[Pasted image 20240624164933.png]]
- This is called the "***Transcritical Bifurcation***"

![[Pasted image 20240624165203.png]]
- The blue curve has a $0$-derivative for $x = 0$

Let's analyze the steady steates.
For $r<0$:<br>![[Pasted image 20240624165627.png|444]]
And in case of the blue curve, $r = 0$:<br>![[Pasted image 20240624165659.png|444]]
While for $r > 0$:<br>![[Pasted image 20240624165737.png|444]]
- From the red curve, to the green curve, we have that:
	1. $x_1^*$ looses stability.
	2. $x_2^*, \ x_3^*$ are born, and are stable.
- We say that for $r=0$ is when this change happens.

![[Pasted image 20240624170308.png]]
- This is called the "***Supercritical Pitchfork Bifurcation***"
- We can say that globally this system is stable.

![[Pasted image 20240624170335.png]]
- A similar "sign-switched" case of the previous one.

![[Pasted image 20240624170417.png]]
- This is called the "***Subcritical Pitchfork Bifurcation***"

If we analyze the **supercritical pithfork bifurcation**, we can see that:<br>![[Pasted image 20240624170728.png|444]]
- For whichever value $r$ assumes, the system will converge, except for $x^*=0,\ r=0$ for which the system will remain at $0$ (unstable steady state)

While for the ***subcritical*** case:<br>![[Pasted image 20240624170942.png|444]]
- The system is a lot more unstable.

> ***NOTE***: 
> A bifurcation only appers when there is a non-hyperbolic steady state, this is true also for higher dimensions systems.