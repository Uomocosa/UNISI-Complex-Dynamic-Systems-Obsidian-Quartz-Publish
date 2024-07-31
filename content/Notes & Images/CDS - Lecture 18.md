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

![[Pasted image 20240701170439.png]]

![[Pasted image 20240701170451.png]]

![[Pasted image 20240701170637.png]]

![[Pasted image 20240701170901.png]]
- Graphical representation of the connection.
- Each node is a system.
- ***REMEMBER***: *A graph is a mathematical object defined by a given number of nodes and a given number of links connecting the nodes*<br>A graph has many properties, it can be **directed** or **undirected**, in this case the graph is directed, since there is a "direction of influence" (the links have arrows).<br>We will se also other properties.

![[Pasted image 20240701171014.png]]

![[Pasted image 20240701171610.png]]
- Now immagine that the simple 2-node graph seen previusly describes two **Lorenz systems**, connected.<br>Also consider a "weak coupling", such that only the variable $x_1$ of the two system is connected to each other: $k (x_1' - x_1'')$ and $k (x_1'' - x_1')$.
- Base example with $k=0$ (so we are in the case of no-connection / independent systems), and these are the intial conditions and parameters of the two systems:<br>![[Pasted image 20240701171720.png]]
	- `paramB`: is #TODO 
	- `paramC`: is #TODO should be $\sigma$ or somenthing.

![[Pasted image 20240701171924.png]]
- The color represents the value, it does not change much and it remains near $0$.
- It is more or less stable.

![[Pasted image 20240701172127.png]]
- After solving the system, this are the results, since the system is stable, both system convergee to the same results.
- We hare in the case of "after the pitchfork bifurcation" #TODO LINKS TO LORENTS SYSTEM.

![[Pasted image 20240701172306.png]]
- Here we see the same graphs as before, but divided into the two systems, as you can see the only difference is the transients.
- ***REMEMBER***: We are in the case of indipendent systmes, they converge to the same results because they have the same parameters and are "converging systems".

![[Pasted image 20240701172507.png]]
- We now move the system into the chaotic regime, by changing `paramB`.
- Still $k=0$ ⇒ **indipendent systems**.

![[Pasted image 20240701172632.png]]<br>![[Pasted image 20240701172540.png]]
- The node now change colors frequently, and can assume different colors at the same time, here's another shot:<br>![[Pasted image 20240701172713.png|333]]

![[Pasted image 20240701172814.png]]
- Division in components, you can see the chaos.

![[Pasted image 20240701172926.png]]
- $k = 1$, results are almosts the same as before.

![[Pasted image 20240701173015.png]]
- $k=10$, much more similar systems ⇒ the two systems are syncronized.
- So we have seen that chaotic system can syncronize.

-----
![[Pasted image 20240701191011.png]]
- Bidirectional connections.
- This is called a "**ring network**".

![[Pasted image 20240701191054.png]]
- **degree 4**: each node is connected to 4 nodes.

![[Pasted image 20240701191150.png]]
- Erdos-Renyi: random graph, in this case **degree 2** refers to a medium of connections.

![[Pasted image 20240701191304.png]]
- The `12°` node is called a "leaf" (it has very few connections)

![[Pasted image 20240701191423.png]]
- There is only 1 graph (we can always find a list of connections from one node to another)
- We can define some hubs like node `2`, `3`, `4`, `5`, `7`.

![[Pasted image 20240701191707.png]]
- Still some hubs and leaves.

![[Pasted image 20240701191809.png]]
- Many leaves (nodes with little connections).
- Few higher degree nodes, from the picture we can define the hubs.

![[Pasted image 20240701191944.png]]
- There can be separation (not all nodes can reach all the others)
- The maximum degree is lower thatn that of the "**Scale Free graph**".

![[Pasted image 20240701192120.png]]
- Each node represents a dynamical system.
- We will see how different type of graph handle changes, how the change of a node can spread, and the syncronization.

![[Pasted image 20240701192824.png]]
- Simplest graph with only 2 nodes.

![[Pasted image 20240701192943.png]]
- 2 Identical stable systems, with different inital conditions, and NO coupling.

![[Pasted image 20240701193045.png]]
- Graph

![[Pasted image 20240701193121.png]]

![[Pasted image 20240701193236.png]]
- Changing `paramB`, the systems will now oscillate.

![[Pasted image 20240701193322.png]]
- The two system are slightly different, due to the different inital conditions

![[Pasted image 20240701193445.png]]
- Changing `paramB`, ==this time the systems are diffrent==.

![[Pasted image 20240701193515.png]]

![[Pasted image 20240701193545.png]]
- One oscillating and one converging system

![[Pasted image 20240701193619.png]]

![[Pasted image 20240701193631.png]]
- We now introduce coupling: $k=1$. (pretty weak)

![[Pasted image 20240701193658.png]]
- We can see some effects, but since $k$ is small, not very much.

![[Pasted image 20240701193748.png]]
- $k = 6$
- Now both system converge, however the 2nd components converge to different values, specifically to $-1$ and the other to $3$.<br>The 1st component of both systems converge almost to the same value, since these are the coupled components.

![[Pasted image 20240701194036.png]]
- We switch `coplingVar` from `1 >> 2`, meaning that now the coupled components are the 2nd ones.

![[Pasted image 20240701194148.png]]


![[Pasted image 20240701194252.png]]
- $k=60$, the 1st components coincide at regime, the 2nds are still different.

![[Pasted image 20240701194323.png]]<br>![[Pasted image 20240701194344.png]]
- Regular large network, each node still represents a **hopf bifurcation**.
- Some node have negative $\theta$ some have a positive one.

![[Pasted image 20240701194508.png]]
- Graph

![[Pasted image 20240701194530.png]]<br>![[Pasted image 20240701194859.png]]
- $k = 4$
- The majority of them should oscillate, but as we can see the converging node help the network stabilize.

![[Pasted image 20240701194635.png]]
- $k = 0$ (indipendente nodes)

![[Pasted image 20240701194739.png]]
- $k = 1$
- They influence each other, but there is no "*dominating system*".

![[Pasted image 20240701194924.png]]
- $k=100$
- The system is stabilized.

![[Pasted image 20240701194954.png]]
- Now we change the shape of the network/graph.

![[Pasted image 20240701195028.png]]
- Graph

![[Pasted image 20240701195044.png]]
- $k = 0$

![[Pasted image 20240701195113.png]]
- $k = 1$

![[Pasted image 20240701195136.png]]
- $k = 6$
- The system is syncronized.

![[Pasted image 20240701195205.png]]
- $k = 100$
- The system is stabilized.
- ***NOTE***: In this case the shape of the network does not change much about stability or syncronization, but (in general) it absolutely can.

