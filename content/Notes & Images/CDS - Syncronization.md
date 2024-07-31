###### *Remember*:

> Syncronization happens in **particular networks**.
> Syncronization is one of the simpler example of "**self-organization**".

> Take two equation representing two distinct mass-spring systems:<br>![[Pasted image 20240711171608.png|150]]$$\begin{array}{l}\left\{\begin{array}{l} x_1= x_3 \\[3px] x_3 = -\omega_1^2 \kern2px x_1 \end{array}\right. \\[7px] \left\{\begin{array}{l} x_2= x_4 \\[3px] x_4 = -\omega_2^2 \kern2px x_2 \end{array}\right.\end{array}$$Leaving the first equaiton untuched (since it serves only to define $\ddot x$ in terms of ODE equations), we can add a term called "***coupling parameter***" that depends on a variable of the second system:$$\begin{array}{l}\left\{\begin{array}{l} x_1= x_3 \\[3px] x_3 = -\omega_1^2 \kern2px  x_1 + k (x_2 - x_1) \end{array}\right. \\[7px] \left\{\begin{array}{l} x_2= x_4 \\[3px] x_4 = -\omega_2^2 \kern2px x_2 + k (x_1 - x_2) \end{array}\right.\end{array}$$***NOTE***: for $x_2 = x_1$ this term is equal to $0$ ⇒ This term is active only when these two variables are different.

> Let's see how the graph of these two systems change when we increase the $k$ or "coupling parameter".
> - For $k = 0$:<br>![[Pasted image 20240701165802 - Copia.png|444]]<br>Here's the base example, **without coupling**.
> - For $k = 1$:<br>![[Pasted image 20240701165938 - Copia.png|444]]<br>We begin to see some changes, the continous lines are the real systems (with coupling), the dotted line are are the systems without coupling (seen before).
> - $k=4$:<br>![[Pasted image 20240701170115 - Copia.png|444]]
> - $k = 10$:<br>![[Pasted image 20240701170236 - Copia.png|444]]
>- $k = 100$, here we have an almost perfect matching:<br>![[Pasted image 20240701170326 - Copia.png|444]]

----

![[Pasted image 20240701163939.png]]<br>![[Pasted image 20240701164212.png]]
- These metronomes started with different initial conditions, will syncronize, due how the "system is built".
- Generally we can say that to create a syncronization between multimple systems, we need to create a **connection** between them, in this example the connection is the plank suspended on two cans of soda.
- Syncronization happens in **particular networks**.
- Syncronization is one of the simpler example of "**self-organization**".

![[Pasted image 20240701164800.png]]
- Simple harmonic oscillator

![[Pasted image 20240701164952.png]]
- Represents for example a mass-spring system without friction.

![[Pasted image 20240701165044.png]]
- Consider annother equivalent system (it will have different initial conditions, but same differential equations)

![[Pasted image 20240701165525.png]]
- Leaving the first equaiton untuched (since it serves only to define $\ddot x$ in terms of ODE equations), we can add a term called "***coupling parameter***" that depends on a variable of the second system.
- I rewrite here the equations:$$\begin{array}{l}\left\{\begin{array}{l} x_1= x_3 \\[3px] x_3 = -\omega_1^2 x_1 + k (x_2 - x_1) \end{array}\right. \\[7px] \left\{\begin{array}{l} x_2= x_4 \\[3px] x_4 = -\omega_2^2 x_2 + k (x_1 - x_2) \end{array}\right.\end{array}$$
- ***NOTE***: for $x_2 = x_1$ this term is equal to $0$ ⇒ This term is active only when these two variables are different.

![[Pasted image 20240701165718.png]]
- $c$ is the coupling term, previosly called $k$.

![[Pasted image 20240701165802.png]]
- Positions of the two systems.
- This graphs are without coupling, $c=0$.

![[Pasted image 20240701165856.png]]
- $c=1$, now there is coupling.

![[Pasted image 20240701165938.png]]
- The continous lines are the real systems (with coupling), the dotted line are are the systems without coupling (seen before).

![[Pasted image 20240701170050.png]]
- $c=4$.

![[Pasted image 20240701170115.png]]

![[Pasted image 20240701170236.png]]
- $c=10$, we can see that the two lines are much more similar.

![[Pasted image 20240701170326.png]]
- $c=100$, almost perfect marching.