![[Pasted image 20240702095540.png]]
- Here we define the graph structure.
- Represents the SRI model, consider each node like an itialian region.
- The connections can be seen as the roads that connect one region to another.
- We will see how by reducing the "strenght" of the connections we can reduce the number of infected.

![[Pasted image 20240702095607.png]]
- Graph
- The ending part of the graph are called leaf, ==they are connected to only one other node==.
- This is a non regular graph, it is a **random graph** or "**scale free graph**".

![[Pasted image 20240702095830.png]]
- We change the graph structure

![[Pasted image 20240702095900.png]]
- Graph
- This is a regular graph, because all nodes have the same number of connection, we can also be more clear defining this graph as a **regular graph of degree 2**.<br>(*All nodes have 2 connections*).
- These graphs can all be considered **undirected**, each connection has a "counterpart"<br>*~Ex.*: Node 4 is connected to node 5, but node 5 is also connected to node 4, this is true for all nodes.<br>==More precisely==: "*a graph is defined as **undirected** if the "matrix structure" $A$, is **symmetric**.*"

![[Pasted image 20240702100557.png]]
- Code for plotting the network.

![[Pasted image 20240702100812.png]]
- Changing the code slightly, here are the changes:<br>![[Pasted image 20240702100846.png|333]]
- Also the `labelnode(p,[],'Large')` is not useful.

![[Pasted image 20240702100942.png]]
- If we move the mouse to a node we can see it's "name" (`node: 8`).
- The **In Degree** (number of "*arriving*" connections)
- The **Out Degree** (number of "*exiting*" connections)
- An **undirected graph** has always same number of in and out degree for each node.

![[Pasted image 20240702101144.png]]
- Minor change to the network.
- The $A$ matrix is no longer symmetric.

![[Pasted image 20240702101224.png]]
- The graph now is **directed** (see nodes `1` and `2`)
- For our case (SRI - covid in italy) we would need an undirected graph, but with different strenght of connections, since an itialian region can be in "lockdown" and there can be almost no connections to other regions.

![[Pasted image 20240702101401.png]]
- If we change the `'NodeFontSize'` (the first element is now `40`)

![[Pasted image 20240702101620.png]]
- The initial conditions, in this SRI model they represents:
	- The susceptible
	- The infected
	- The removed (cured+dead)

![[Pasted image 20240702101741.png]]
- Define the parameters.
- `b`: parameter $\beta$, we set it to $1$ for all nodes.
- `g`: parameter $\gamma$, we set it to $0.1$ for all nodes.
- For these parameter the ${\beta \over \gamma} \gt 1$ so the infections will spread.
- `coplingVar` which variables are coupled, in this case we have choosen to couple the 2nd variable.
- `k`: coupling strength, in this case it is $0$, so the connections are meaningless.

![[Pasted image 20240702101841.png]]
- In the command window we can test and see what the `ones` function does.

![[Pasted image 20240702102219.png]]
- Solve the system, using the `ode45` function.


![[Pasted image 20240702102313.png]]
- Here we "explain to matlab" how to connect each node.
- `u(:,i)`: initial condition of node $i$.

![[Pasted image 20240702102447.png]]
- We have added the $k$ (coupling term) in the `fNetwork` function, another way could be to define it here, like so:<br>![[Pasted image 20240702102925.png|333]]
- Choose one of the two methods, not both!

![[Pasted image 20240702103002.png]]
- The subplot one will report all the 1st components for all nodes, we will have 3 sublplots, one for each component.

![[Pasted image 20240702103055.png]]
- Each subplot represents all components of one node, so we will have 10 subplots.

![[Pasted image 20240702103139.png]]
- Graph

![[Pasted image 20240702103154.png]]
- Component-wise plots $(k=0)$.
- We have also considered the same system and initial conditions for all nodes.

![[Pasted image 20240702103258.png]]
- Node-wise plot.

![[Pasted image 20240702103318.png]]
- $k = 10$, however we still have the same system and initial conditions for all nodes.

![[Pasted image 20240702103418.png]]
- Now the first node has a different system, specifically diffrent parameters.

![[Pasted image 20240702103521.png]]
- Node 1 has now a much lower infection, due to the changed parameters $(\beta_1 = 0.9,\ \gamma_1 = 1)$.
- Due to the coupling term $(k=10)$ the other nodes have a decrease in infected people.
- We cannot appreacheate it, but do to the ring strucuture, the further away we move from node $1$ the less the inpact of this change will be.

![[Pasted image 20240702103846.png]]
- $\gamma_1 = 4$

![[Pasted image 20240702103917.png]]

![[Pasted image 20240702104003.png]]
- $\beta_1 = 0.6$

![[Pasted image 20240702104025.png]]

![[Pasted image 20240702104112.png]]
- We change the structure.
- Recap: $k = 10 ,\ \beta_1 = 0.6 ,\ \gamma_1 = 4$

![[Pasted image 20240702104235.png]]
- Graph 

![[Pasted image 20240702104224.png]]
- Node-wise

![[Pasted image 20240702104250.png]]
- Component-wise
- Component 1, node 1: the lowest number of suceptible people become infected (with respect to the other nodes)
- Component 3, node 1: many removed individual (many people recover).

![[Pasted image 20240702104728.png]]
- $\beta_2 = 0.6,\ \gamma_2 = 4$ (we add another good-behaving node).
- We have choosen node 2, since it is a hub, so it has most number of connections, and so the most impact

![[Pasted image 20240702104706.png]]
- Now many more susceptible people do not become infected, in general, not only for nodes 1 and 2.
- The effects propagates in the graph.
