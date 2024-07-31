###### *Remember*:

> Given the following "pendulum" sytems, without friction:$$\left\{\begin{array}{l} \dot x_1 = x_2 \\ \dot x_2  = - {g \over L}\sin(x_1)      \end{array}\right.$$We can draw its [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]]:<br>![[Pasted image 20240623101533 - Copia.png]]
> - The system has two **steady states**, one **unstable**, when the pendulum is held with muss "up", and one **marginally stable ss** when the mass in the "equilibrium position", it is marginally stable because this system does not account for friction.
> 	- The **marginally stable steady states** are represented in the **phase space** with the "**s**" (look a the point inside the black lines)
> 	- While the **unstable steady states** are represeted with a "**i**" (look at the intersection of the blue lines with the $x_1$ axis)
> - In the **phase space**:
> 	- The black circular lines indicate: when the pendulum oscillates (not enough initial velocity for a complete rotation)
> 	- The red lines indicate: when the pendulum compleately rotates, however notice that the velocity of the pendulum never reaches $0$.
> 	- The single blue line indicates: this is a special case in which the pendulum actually stops $(x_2 = 0)$ in the upper point, also note that for the exact initial conditions such that we begin with the pendulum in one of the "**i**" **unstable ss**, then it will not move (it is a **ss** after all).
> - When you add friction the **phase space** changes such that the **marginally steady states**, now become **stable steady states**, and the **flows** will all reach this state, with enough time, except if the pendulum start exactly in the "up"-state with no velocity, in that case it will remain in that position (unstable ss)

----

![[Pasted image 20240623101555.png]]

![[Pasted image 20240623101533.png]]
- Pendulum example, we do not account for friction, so it will continue to move endlessly.
	- For this system: $x_1$ represents the position, $x_2$ reperesents the velocity. #not-sure-about-this 
- The system has two **steady states**, one **unstable**, when the pendulum is held with muss "up", and one **marginally stable ss** when the mass in the "equilibrium position", it is marginally stable because this system does not account for friction.
	- The **marginally stable steady states** are represented in the **phase space** with the "**s**" (look a the point inside the black lines)
	- While the **unstable steady states** are represeted with a "**i**" (look at the intersection of the blue lines with the $x_1$ axis)
- In the phase space:
	- The black circular lines indicate: when the pendulum oscillates (not enough initial velocity for a complete rotation)
	- The red lines indicate: when the pendulum compleately rotates, however notice that the velocity of the pendulum never reaches $0$.
	- The single blue line indicates: this is a special case in which the pendulum actually stops $(x_2 = 0)$ in the upper point, also note that for the exact initial conditions such that we begin with the pendulum in one of the "**i**" **unstable ss**, then it will not move (it is a **ss** after all).
- When you add friction the **phase space** changes such that the **marginally steady states**, now become **stable steady states**, and the **flows** will all reach this state, with enough time.

![[Pasted image 20240623103408.png]]
- Remeber that $x$ is a vector, in the previous case: $x = \left< x_1,\ x_2 \right>$, so we need to find the solutions $x^* = \left< x_1^*,\ x_2^* \right>$ such that:$$\left\{\begin{array}{l}   x_2^* = 0 \\    -{g\over L}\sin(x_1^*) = 0  \end{array}\right.$$
