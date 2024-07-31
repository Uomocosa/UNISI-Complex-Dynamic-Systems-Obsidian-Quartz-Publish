
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
- Sensitivity to inital conditions, we report only one varible ($x(t)$), and 2 sliglty different initial conditions, as you can see thy become compleately different after some time, even if they started really close to one onother.

![[Pasted image 20240626094803.png]]
- A very very tiny change of the inital conditions, will produce an enormous change in the system after some time.
- It is called an **attractor**, since the system will not diverge, it will remain confined in a closed region.
- It is also called "***strange attractor***", because ins not a typical one, the typical one are: 
	- **stable steady states** (**atttractors**)
	- **limit cycles** (and multiple-period limit cycles)

Rememebr that this is a 3D object:<br>![[Pasted image 20240626095123.png|444]]<br>![[Pasted image 20240626095141.png|444]]<br>![[Pasted image 20240626095203.png|444]]<br>![[Pasted image 20240626095242.png|444]]
- The two circles are unstable steady states.
- In the middle of the two unstable steady states we have the origin $\left(0,\ 0,\ 0\right)$.
