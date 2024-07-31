---
aliases:
  - saddle-node bifurcation
---
###### *Remember*:

> ***Saddle-Node Bifurcation***:<br>![[Pasted image 20240624163932 - Copia.png|222]]
> - First we have a **stable** and an **unstable** **steady states**, so a [[CDS - Linear 2D System • Example of Vector Fields|saddle]]
> - Then they both converge to a single point, a [[CDS - Linear 2D System • Example of Vector Fields|node]].
> - Finally both **steady states** disappears.


> *~Ex.:*<br>![[Pasted image 20240624162034.png|444]]
> 
> 

----

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