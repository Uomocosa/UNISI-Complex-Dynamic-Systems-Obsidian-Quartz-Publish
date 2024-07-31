---
aliases:
  - Rossler system
  - period doubling
  - double period
  - stretching and folding mechanism
---

###### *Remember*:

> ***The Rossler Syttem***:$$\left\{\begin{array}{l} \dot x = -y -z \\ \dot y = x + ay \\ \dot z = b + z(x-c) \end{array}\right.$$ ^Rossler-system

> We first study the **reduced system**:$$\left\{\begin{array}{l} \dot x = -y \\ \dot y = x + ay \end{array}\right.$$Where we consider $z$ is really small.
> Which is similar to what we have seen in the [[CDS - Example of a Phase Space • Pendulum Example|pendulum example]].
> With [[CDS - Eigenvalues and Eigenvectors|eigenvalues]]:$$\lambda_1 ,\ \lambda_2 = {a \pm \sqrt{a^2 - 4} \over 2} $$We have that:
> - For $a \gt 0$ the oscillator is unstable.
> - Morover $a \in [0,\ 2]$ the orgin is an unstable spiral.

> In 3 dimensional space, this **reduced system** induces the "*strethcing mechanism*", typical of **chaotic system**.
> But to introduce proper **chaos** we need also a "*folding mechanism*", this mechanism is introduced by the third equation.

> The folding is produced by the term associeted to parameter $c$ in the third equation.
> Consider only the equation for $z$ : $$\dot z = b + z(x+c)$$If we analyze its [[CDS - Vector Field|vector field]]:<br>![[Pasted image 20240625185241 - Copia.png|333]]
> - The steady state $\left(z^* = {-b \over x-c}\right)$ is **stable**. (if it exists, so for $x \neq c$)
> 
> Then we can analyze the whole system and say: #not-sure-about-this 
> - For $x < c$ : the coefficient of $z$ in the equation is negative.
> - For $x > c$ : the coefficient of $z$ in the equation is positive and the system **diverges**.

> Assume now the complete **Rossler** system as mentioned [[#^Rossler-system|before]], and let's fix $b = 2$ and $c=4$, then the system will have **2 steady states**:$$\begin{array}{l} x_{1,2} = {1 \over 2}\left(c \pm \sqrt{c^2-4ab}\right) \\ y_{1,2} = -{1 \over 2a}\left(c \pm \sqrt{c^2-4ab}\right) \\ z_{1,2} = {1 \over 2a}\left(c \pm \sqrt{c^2-4ab}\right)   \end{array}$$If $a > {c^2 \over 4b}$ or $a = 0$, then the steady states will be imaginary (they disappear).<br>Also, for $a = {c^2 \over 4b}$ the two steady states will coincide.<br>⇒ Then we can say that this is a **saddle-node bifurcation**.

> If we perform the [[CDS - Linearization|linearization]], we will find the follwing **Jacobian Matrix**$$\left[\begin{array}{c} 0 & -1 & -1 \\ 1 & a & 0 \\ z & 0 & x-c     \end{array}\right]$$If we draw the [[CDS - Examples for a Bifurcation Diagram|bifurcation diagram]]:<br>![[Pasted image 20240625190452 - Copia.png|333]]
> Where:
> - $S_1 = \left< x_1,\ y_1 ,\ z_1 \right>$ (this steady state is a saddle since it has 3 real [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] with opposite signs)
> - $P_2 = \left< x_2,\ y_2 ,\ z_2 \right>$

> The steady state $P_2$ is a **stable spiral** for $a \lt 0.125$ and becomes an **unstable spiral** for $a \gt 0.125$.
> For $a = 0.125$ an [[CDS - Supercritical Hopf Bifurcation|supercritical hopf bifurcation]] occurs:<br>![[Pasted image 20240625190802 - Copia.png|333]]
> A stable limit cycle is formed through the **Hopf bifurcation**:<br>![[Pasted image 20240625190859 - Copia.png|333]]

> Now, if we increase $a$ again the limit cycle will then distabilize and go through a **period doubling bifurcation**:<br>![[Pasted image 20240625191048 - Copia.png|333]]
> The **limit cycle** will increase its radius based on the parameter $a$.<br>Then in this case it will "intersect the **saddle**", and it will double its period, meaning:<br>![[Pasted image 20240625191516 - Copia.png|333]]

> ***Explaining the mechanism***:
> 1. Due to the mechanism shown by [[#^Rossler-system|the 3rd equation]], that is activated for $x=c$, (in this case we have fixed $c=4$), we will have that the variable $z$ will be destablezied, remember that the steady state from the 3rd equation is:$\left(z^* = {-b \over x-c}\right)$
> 2. At this point a stabilizeing mechanism on $x$ is induced by [[#^Rossler-system|the 1st equation]] and leading again $z$ to enther the stable region.
> 3. The result is that the combination of these mechanisms will induce a double period limit cycle.

> This "doubling period mechanism" will be repeated many times, and every time the limit cycle "will double itself":<br>![[Pasted image 20240625191613.png|444]]<br>![[Pasted image 20240625191748.png|444]]
> - First figure: period 4 limit cycle
> - Second figure: period 8 limit cycle
> - Third figure: **chaos**.<br>In this case no value of the phase space will be visited two times (remember that we are in 3D), so there will be no intersections in the phase space.<br>The shape of the chaotic case in not compleatelly irregular as you can see, it is "similar" to the other ones, but it does not have a period, it is aperiod (or chaotic).

> Rember also that after a period doubling the previos limit cycle does not disappear, instead becomes **unstable**:
> After the first period doubling:<br>![[Pasted image 20240625192137.png|333]]<br>After the second period doubling:<br>![[Pasted image 20240625192943.png|333]]

> If we consider the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|dynamics]]:
> 1-period limit cycle:<br>![[Pasted image 20240625192454.png|333]]
> 2-period limit cycle:<br>![[Pasted image 20240625192513.png|333]]
> **Chaos**:<br>![[Pasted image 20240625193150.png|333]]

> We will see a better definition for "[[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|sensitivity to initial conditions]]", but know this, for this system, when it is in **chaotic regime**, if we take two EXTREAMLY close initial conditions, this will be their [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|dynamics]]:<br>![[Pasted image 20240625193436.png|333]]
> The fact that two almost-identical initial condictions will have very different trajectories, is defined/called "***sensitivity to inital conditions***"
> A more formal definition:
> "*Changing by a very tiny amount the inital condition, then you will not be able to predict the future value of the trajectory*".
> The two trajectories will be similar only for a small time.

> What is **deterministic chaos**? #IMPORTANT 
> - **Deterministic** means that the **equations are deterministic**, there are no **stochastic inputs or variables** in these equations.
> - **Chaos** is an aperiodic dynamics/behaviour, that also shows **sensitivity to intial conditions**, and it characterized by what are called "***strange attractors***".
> - Also remember that ==chaos is possible only in non-linear systems==.

----

![[Pasted image 20240625184603.png]]

![[Pasted image 20240625184622.png]]

![[Pasted image 20240625184733.png]]
- "undamped" = unstable

![[Pasted image 20240625184952.png]]
- First idea about chaos.

![[Pasted image 20240625185107.png]]
- Fix the sign of $b$, for simplicity.

![[Pasted image 20240625185241.png]]
- So the ss $({-b \over x-c})$ is an **attractor**. #not-sure-about-this is it always an attractor???
- So the third equations acts as a stabilizer depending if $x \gtrless c$.

![[Pasted image 20240625185847.png]]
- If $a > {c^2 \over 4b}$ or $a = 0$, then the ss will be imaginary.<br>Also, for $a = {c^2 \over 4b}$ the two ss will coincide.<br>⇒ Then we can say that this is a **saddle-node bifurcation**.

![[Pasted image 20240625190251.png]]
- $S_1 = \left< x_1,\ y_1 ,\ z_1 \right>$
- $P_2 = \left< x_2,\ y_2 ,\ z_2 \right>$

![[Pasted image 20240625190413.png]]
- Here we can see, like we already said that for $a = {c^2 \over 4b}$ the two ss will coincide.

![[Pasted image 20240625190452.png]]
- And like we said previously this is a **saddle-node bifurcation**.
- As we move $a$ the numerical values of the steady states will vary, this graph represents this movement/variation, remember that $b$, and $c$ are fixed.<br>Just to be more clear, in this graph the x-axis represents the values of $a$.

![[Pasted image 20240625190802.png]]
- This is a zoom of the previous graph.
- This will give rise to a supercritical hopf bifurcation (in 3D)

![[Pasted image 20240625190859.png]]
- Here's the **limit cycle** in 3D.
- This is calculated via simulation.
- ***NOTE***: in 3D the limit cycle can be curved.

![[Pasted image 20240625191048.png]]
- Since as we have seen before, the limit cycle will increase its radius based on the parameter $a$, then in this case it will intersect the saddle, we will see what happens.


![[Pasted image 20240625191224.png]]

![[Pasted image 20240625191255.png]]
- When it reaches "a certain point" (the red bar), the it will "activate the mechanism" and "double itself" #not-sure-about-this I understood this like i understood modern day yu-gi-oh.

![[Pasted image 20240625191516.png]]
- This is the "doubled limit cycle" after "the mechanism" "was activated".<br>This is formaly called a "**2 period limit cycle**".
- This "mechanism" will be repeated many times, and every time the limit cycle "will double itself".

![[Pasted image 20240625191613.png]]


![[Pasted image 20240625191748.png]]
- First figure: period 4 limit cycle
- Second figure: period 8 limit cycle
- Third figure: chaos.<br>In this case no value of the phase space will be visited two times (remember that we are in 3D), so there will be no intersections in the phase space.
- The shape of the chaotic case in not compleatelly irregular as you can see, it is "similar" to the other ones, but it does not have a period, it is aperiod (or chaotic).

For $a$ less then a certain value we have a 1-period limit cycle:<br>![[Pasted image 20240625192047.png|444]]

If we increase $a$, then at a cartain point we will find a 2-period limit cycle:<br>![[Pasted image 20240625192137.png|444]]
- It remains in the same "region" as the previous 1-period limit cycle.
- The old 1-period limit cycle still exists, but now, it is **unstable**.

This is the **dynamics** representation of the 1-period limit cycle:<br>![[Pasted image 20240625192454.png|444]]

This is the **dynamics** representation of the 2-period limit cycle (in red):<br>![[Pasted image 20240625192513.png|444]]



If we increase $a$ again, then at a cartain point we will find a 4-period limit cycle:<br>![[Pasted image 20240625192643.png|444]]
- The green straight line is there to count the intersection it has with the limit cycle.

If we count the intersections of the green-straight-line with the 1-period LC and 2-period LC:<br>![[Pasted image 20240625192818.png|444]]
- 1 intersection with the 1-PLC (1-period limit cycle).
- 2 intersection with the 2-PLC.

Again remember that when $a$ is great enough to have a 4-PLC, then the previous 2-PLC and 1-PLC still exist, but now are unstable, similar to before:<br>![[Pasted image 20240625192943.png|444]]

Then, If we increase $a$ again, we will have an 8-period limit cycle.
Then, If we increase $a$ again, we will have a chatic/aperiodic behaviour.
If we represent the chaotic behaviour in the **dynamics graph**:<br>![[Pasted image 20240625193150.png|444]]
- It does not diverge, but it has NO period (aperiodic).

Now, consider another inital point, very very near the one we considered before, notice how, after a little time, the two trajectories are compleately different from one another:<br>![[Pasted image 20240625193352.png]]
- However all trajectories will be confined in the same "region".<br>Even if you start very far away:<br>![[Pasted image 20240625193436.png|444]]
- That's way we still talk about **attractors**, since the trajectors will be attracted to this region.

The fact that two almost-identical initial condictions will have very different trajectories, is defined/called "***sensitivity to inital conditions***"
A more formal definition:
"*Changing by a very tiny amount the inital condition, then you will not be able to predict the future value of the trajectory*".
The two trajectories will be similar only for a small time.

Finally if we increase $a$ again , we will have instability.


What is **deterministic chaos**? #IMPORTANT 
- **Deterministic** means that the **equations are deterministic**, there are no **stochastic inputs or variables** in these equations.
- **Chaos** is an aperiodic dynamics/behaviour, that also shows **sensitivity to intial conditions**, and it characterized by what are called "***strange attractors***".

![[Pasted image 20240625194302.png]]

==Chaos is possible only in non-linear systems==.
