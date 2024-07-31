###### *Remember*:

> Given a linear system: $\dot x = A x$, we seek solutions of the kind:$$x(t) = \vec v e^{\lambda t} $$Where: $\vec v$ is the [[CDS - Eigenvalues and Eigenvectors|eigenvector]], while $\lambda$ is the [[CDS - Eigenvalues and Eigenvectors|eigenvalue]].
> We can check:$$\dot x = \lambda e^{\lambda t}\vec v \kern15px \text{and} \kern15px \dot x = A \kern0px \vec v \kern1px e^{\lambda t} $$Since **eigenvalues** and **eigenvectors** have this property: $$\lambda \vec v = A \vec v$$Suppose we have **2 non-zero eigenvalues** $(\lambda_1,\ \lambda_2)$, with eigenvectors $\vec v_1$ and $\vec v_2$, then the general solution will be:$$x(t) = \alpha \vec v_1 e^{\lambda_1 t} +  \beta \vec v_2 e^{\lambda_2 t}$$Where $\alpha ,\ \beta \in \mathbb{R}$, and we can check that this is the general solution since we can derivate in time to obtain:$$\dot x = \lambda_1 \alpha \vec v_1 e^{\lambda_1 t} +  \lambda_2 \beta \vec v_2 e^{\lambda_2 t}$$And since, like we said before: $\lambda \vec v = A \vec v$, we will have that:$$\begin{array}{l}\dot x \kern-10px &=  \lambda_1 \alpha \vec v_1 e^{\lambda_1 t} +  \lambda_2 \beta \vec v_2 e^{\lambda_2 t} \\&= \alpha (A \vec v_1) e^{\lambda_1 t} +  \lambda_2 \beta (A \vec v_2) e^{\lambda_2 t} \\&= Ax  \end{array}$$

----

![[Pasted image 20240623110052.png]]

![[Pasted image 20240623110110.png]]
- For each system that does not include a constant, so for $\dot x = A x + c$ where $c = 0$, then $x=0$ will always be a **ss**.

![[Pasted image 20240623110317.png]]
- Example of an explicit analitic solution for a 2D general case, #NOT-IMPORTANT

![[Pasted image 20240623110506.png]]
- Basically we have found a general solution for 2D linear systems in the form $\dot x = Ax$, but this is just an example, we will solve systems numerically and not analitically.