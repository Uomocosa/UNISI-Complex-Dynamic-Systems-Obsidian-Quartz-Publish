---
aliases:
  - leaf
  - leaves
  - hub
  - scale free
  - Erdos-Renyi
---
###### *Remember*:

> ![[Pasted image 20240701170451.png|444]]<br>![[Pasted image 20240701170637.png|444]]

> We can represent the "**coupling**" of multiple systems with a connected graph:<br>![[Pasted image 20240701170901.png|333]]<br>Where each node is a system.
> - ***REMEMBER***: *A graph is a mathematical object defined by a given number of nodes and a given number of links connecting the nodes*<br>A graph has many properties, it can be **directed** or **undirected**, in this case the graph is directed, since there is a "direction of influence" (the links have arrows).<br>We will se also other properties.

> We can see the effect of [[CDS - Syncronization|syncronization]], by taking **2 [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|Lorenz systems]]**, and adding a **coupling term**, such that only the variable $x_1$ of the two system is connected to each other: $k (x_1' - x_1'')$ and $k (x_1'' - x_1')$, since only one variable is coupled we defined this as a "*weak coupling*".
> Also we consider the **Lorenz systems** in the **chaotic regime**, so for $r \gt r_{\tiny H}$, and we also take two initial conditions really near each other, so to show the [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|sensitivity to initial conditions]].
> - Base example with $k=0$ (**no coupling**):<br>![[Pasted image 20240701172814.png|444]]
> - $k = 1$:<br>![[Pasted image 20240701172926.png|444]]
> - $k = 10$:<br>![[Pasted image 20240701173015.png|444]]<br>For $k=10$ we have much more similar systems ⇒ ==the two systems are syncronized==.

> Some type of graphs and examples:
> - ***Regular ring network of degree 2***:<br>![[Pasted image 20240701191011.png|333]]
> 	- This is called a "**ring network**".
> 	- This particular case has **bidirectional connections**.
> 	- And has **degree 2** because each node is connected to 2 nodes.
> - ***Regular ring network of degree 4***:<br>![[Pasted image 20240701191054.png|333]]
> 	- **Degree 4**: each node is connected to 4 nodes.
> - ***Erdos-Renyi graph of degree 2***:<br>![[Pasted image 20240701191150.png|333]]
> - ***Erdos-Renyi graph of degree 4***:<br>![[Pasted image 20240701191304.png|333]]
> - ***Scale-Free graph of degree 4:***<br>![[Pasted image 20240701191707.png|333]]
> - ***Scale-Free graph with 100 nodes and degree 4, with histogram represengin the degree distribution***:<br>![[Pasted image 20240701191809 - Copia.png]]
> - ***Erdos-Renyi graph with 100 nodes and degree 4, with histogram represengin the degree distribution***:<br>![[Pasted image 20240701191944 - Copia.png]]

> To summarize:
> - A **regular graph** has vertices all with the same degree
> - A **graph of degree $n$** is typically understood as an $n$-regular graph.
> - An **$n$-regular graph** is a regular graph where each vertex has a degree of $n$, so it is a repetition of **graph of degree $n$**.
> - An **Erdős–Rényi graph** is a type of random graph, introduced by Paul Erdős and Alfréd Rényi. It is one of the simplest and most studied models of random graphs. There are two closely related definitions of an Erdős–Rényi graph:
> 	- In the $G(n ,\ p)$ model, an Erdős–Rényi graph is defined as follows:
> 		- $n$: the number of vertices in the graph.
> 		- $p$ : the probability that any given pair of vertices is connected by an edge.
> 	-  In the $G(n,\ M)$ model, an Erdős–Rényi graph is defined as follows:
> 		- $n$: the number of vertices in the graph.
> 		- $M$: the number of edges in the graph.
> - A **scale-free graph** is another type of random graph characterized by a power-law degree distribution. This means that the number of vertices $k$ with a degree $d$ (the number of connections or edges) follows an arbitrary distribution $P$.
> - The ending part of the graph are called "***leaf***", they are connected to only one other node.
> - Also we have talked about "***hubs***", which in the context of network theory and graph theory is a vertex (or node) with a significantly higher degree compared to other vertices in the graph.
> - These graphs can all be considered "***undirected***", meaning that each connection has a "counterpart"<br>*~Ex.*: Node 4 is connected to node 5, but node 5 is also connected to node 4, this is true for all nodes.<br>More precisely: "*a graph is defined as **undirected** if the "matrix structure" $A$, is **symmetric***".<br>Also an **undirected graph** has always same number of in and out degree for each node.
> 	- The **In Degree** (number of "*arriving*" connections)
> 	- The **Out Degree** (number of "*exiting*" connections)

> Let's take ten systems, in a **regular ring network**, and we define their connections via the $A$ matrix:<br>![[Pasted image 20240701194323.png]]
> This is the graphical view of the graph:<br>![[Pasted image 20240701194508.png|333]]
> After defining the systems, draw a system-wise graphs:![[Pasted image 20240701194635.png|500]]
> Each graph corresponds to a system, an in it there are represented its component changing with time $t$.
> This is the case without coupling, so for $k=0$.
> These are 10 systems each with 2 components, in these system there are some oscillating ones, and a few of them instead converge at a specific value.
> Also only the first component is coupled.
> Now let's see how the system changes:
> - For $k = 4$:![[Pasted image 20240701194859.png]]<br>The majority of them should oscillate, but as we can see the converging node help the network stabilize.
> - For $k = 1$:![[Pasted image 20240701194739.png]]<br>They influence each other, but there is no "*dominating system*".
> - For $k=100$ (**component-wise graphs**: each graph represent a different component, remember that these are 10 system each with 2 components):![[Pasted image 20240701194924.png]]<br>As you can see the first components (the coupled component) all converge at the same value, while the second components (which are **not directly coupled** do reach convergence as well, but not at the same value)

> Same 10 systems as before but with different graph/network-strucutre, ***scale free graph***:<br>![[Pasted image 20240701194954.png]]<br>![[Pasted image 20240701195028.png|333]]
> - For $k = 0$ (***system-wise plot***):<br>![[Pasted image 20240701195044.png]]
> - For $k = 1$ (***system-wise plot***):<br>![[Pasted image 20240701195113.png]]
> - For $k = 6$ (***component-wise plot***) as you can see ==the systems are syncronized==:<br>![[Pasted image 20240701195136.png]]
> - For $k = 100$ (***component-wise plot***) as you can see ==the systems are stabilized==:<br>![[Pasted image 20240701195205.png]]
> - ***NOTE***: In this case the shape of the network does not change much about stability or syncronization, but (in general) it absolutely can.

----

![[Pasted image 20240701170439.png]]

![[Pasted image 20240701170451.png]]

![[Pasted image 20240701170637.png]]

![[Pasted image 20240701170901.png]]
- Graphical representation of the connection.
- Each node is a system.
- ***REMEMBER***: *A graph is a mathematical object defined by a given number of nodes and a given number of links connecting the nodes*<br>A graph has many properties, it can be **directed** or **undirected**, in this case the graph is directed, since there is a "direction of influence" (the links have arrows).<br>We will se also other properties.

![[Pasted image 20240701171014.png]]

![[Pasted image 20240701171610.png]]
- Now immagine that the simple 2-node graph seen previusly describes two [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|Lorenz systems]], connected.<br>Also consider a "weak coupling", such that only the variable $x_1$ of the two system is connected to each other: $k (x_1' - x_1'')$ and $k (x_1'' - x_1')$.
- Base example with $k=0$ (so we are in the case of no-connection / independent systems), and these are the intial conditions and parameters of the two systems:<br>![[Pasted image 20240701171720.png]]
	- `paramB`: is what we define as $\gamma$.
	- `paramC`: is what we define as $\beta$.

![[Pasted image 20240701171924.png]]
- The color represents the value, it does not change much and it remains near $0$.
- It is more or less stable.

![[Pasted image 20240701172127.png]]
- After solving the system, this are the results, since the system is stable, both system convergee to the same results.
- We hare in the case of "after the pitchfork bifurcation" of the [[CDS - The Lorenz System • Deterministic Chaos • Deterministic System • Sensitivity to Initial Conditions • Butterfly Effect • Lorenz Attractor • Strange Attractors|Lorenz system]].

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

