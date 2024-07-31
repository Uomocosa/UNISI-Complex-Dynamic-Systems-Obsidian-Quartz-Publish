![[Pasted image 20240625172136.png]]

![[Pasted image 20240625172148.png]]

![[Pasted image 20240625172623.png]]

![[Pasted image 20240625172730.png]]

![[Pasted image 20240625172846.png]]
- For a negative value of $\beta$: $\beta < 0$

![[Pasted image 20240625173025.png]]
- For a positive value of $\beta$: $\beta > 0$
- This is a "real" example of a **limit cycle**.

![[Pasted image 20240625173233.png]]
- For a positive value of $\beta$: $\beta > 0$, like before, but this time the initial conditions this time are inside the **limit cycle**.
- ***NOTE***: the size and shape of the limit cycle is the same (even if it does not look like it), look at the scale of the graphs.

![[Pasted image 20240625173446.png]]
- The amplitude/size of the **limit cycle** depends on $\beta$.

![[Pasted image 20240625173706.png]]
- The **limit cycle** is part/called an **attracting set**.

![[Pasted image 20240625173906.png]]
- The same eigenvalues as for $\sigma = -1$

![[Pasted image 20240625173948.png]]

![[Pasted image 20240625174009.png]]

![[Pasted image 20240625174058.png]]
- In this case we have a divergence.

![[Pasted image 20240625174419.png]]

![[Pasted image 20240625174203.png]]
- If you choose inital condition outside of the **unstable limit cycle** (or better a "***repuslive limit cycle***"), then you have a divergence.
- We say that for positive value we have "***full instability***", and for negative value we have "***local stability***" (inside the limit cycle).

![[Pasted image 20240625174430.png]]
- In the **supercritical hopf bifurcation** we found an **attractive limit cycle**.
- In the **subcritical hopf bifurcation** we found a **repuslive limit cycle**.

![[Pasted image 20240625174619.png]]

Let's try with an example:<br>![[Pasted image 20240625174945.png|444]]
- Suppose we have an initial condition that given infinite time always stays in a substet $R$ $(R \in \mathbb{R}^2)$, and in this subset there are **NO** steadys states, then the ***Poincar'è-Bandixosn Theorem*** assures us that the system will converge to a **limit cycle**.
- ***NOTE***: the hopf bifurcations both presents steady states (in $(0,\ 0)$), however for those cases we can still use this theorem, we just "remove" a closed curve near the ss, like so:<br>![[Pasted image 20240625175424.png|444]]
	- But now is an open subset ???? #not-sure-about-this 

Now let's try to visualize better the meaning behind the **bifurcation diagram**:<br>![[Pasted image 20240625175618.png|444]]
![[Pasted image 20240625175636.png|444]]
Each point of the **bifurcation diagram** represents a **phase plane**/**phase space** (with infinite inital conditions), and the lines (dotted and continue) represents the stabilities/**attracting set** of the phase plane:<br>![[Pasted image 20240625175838.png|444]]<br>![[Pasted image 20240625175905.png|444]]

For the subcritical case:<br>![[Pasted image 20240625175945.png|444]]

Let's see also the two hopf biffurcation side by side:<br>![[Pasted image 20240625180040.png|444]]
- ***NOTE***: since the eigenvalues were the same also the "x-axis" is the same both for the "SUPercritcal" and "SUBcritical", what chages is the **limit cycle**.
- ***NOTE***: this graphs is 2D, it should be 3D!

We may find different cases, for different values, here's another example:<br>![[Pasted image 20240625180332.png|333]]
- However if the limit cycles is stable when the ss is unstable, it is still considered a supercritical hopf bifurcation.
- And if the limit cycles is unstable when the ss is stable, it is still considered a subcritical hopf bifurcation.

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
- First figure: period 8 limit cycle
- First figure: chaos.<br>In this case no value of the phase space will be visited two times (remember that we are in 3D), so there will be no intersections in the phase space.
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
If we represent the chaotic **dynamics**:<br>![[Pasted image 20240625193150.png|444]]
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
