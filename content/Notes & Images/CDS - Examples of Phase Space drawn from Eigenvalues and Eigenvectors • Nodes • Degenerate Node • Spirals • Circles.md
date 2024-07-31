---
aliases:
  - degenerate node
  - spiral
  - circle
---
###### *Remember*:

> Suppose to have the following system:$$\dot x = Ax$$And $x \in \mathbb{R}^{2}$, for simplicity
> Let's see how the [[CDS - Definition of ODE • Definition of a Solution • Definition of Flow • Dynamics • Definition of Phase Plane or Phase Space|phase space]] and stabilty and type of the **steady steate** changes, with the [[CDS - Eigenvalues and Eigenvectors|eigenvalues]]:
> - 2 real-negative [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] ⇒ **stable node** (or **star** if $\lambda_1 = \lambda_2$).
> - 2 real-positive [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] ⇒ **unstable node**  (or **star** if $\lambda_1 = \lambda_2$).
> - 2 real-positive [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] but with [[CDS - Eigenvalues and Eigenvectors|eigenvectors]] $v_1 = v_2$ ⇒ **degenerate node**.
> - 1 real-positive and 1 real-negative [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] ⇒ **saddle**.
> - 2 complex-conjugate [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] but with negative real part ⇒ **stable spiral**.
> - 2 complex-conjugate [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] but with positive real part ⇒ **unstable spiral**.
> - 2 complex-conjugate [[CDS - Eigenvalues and Eigenvectors|eigenvalues]] but with zero real part ⇒ **center**.

> **Stable node**:<br>![[Pasted image 20240623111251.png|250]]
> **Unstable node**:<br>![[Pasted image 20240623111551.png|250]]
> **Degenerate node**:<br>![[Pasted image 20240623111806.png|250]]
> **Spiral**:<br>![[Pasted image 20240623112111.png|250]]
> **Center**:<br>![[Pasted image 20240623112338.png|250]]

----

Let's make an example: where we take 2 negative **eigenvalues** $\lambda_1$ and $\lambda_2$:<br>![[Pasted image 20240623111211.png|444]]

We can draw the flow, suppose $|\lambda_1| > |\lambda_2|$:<br>![[Pasted image 20240623111251.png|444]]

Also if instead we took the two **eigenvalues** both **positives**, the geometry would have been the same, but the flow would have been reversed (**unstable ss**):<br>![[Pasted image 20240623111551.png|333]]

Example of "***degenerate node***", with both $\lambda_1 < 0$ and $\lambda_2 < 0$, and $v_1 = v_2$:<br>![[Pasted image 20240623111737.png|444]]<br>![[Pasted image 20240623111806.png|444]]

Again if we change: $\lambda_1 > 0$ and $\lambda_2 > 0$, we obtain the same geometry with inverted flow:<br>![[Pasted image 20240623111858.png|333]]
- We can say that **degenerate nodes** lie in-between **nodes** and **spiral**.

Complex eigenvalues:<br>![[Pasted image 20240623112039.png|444]]
- For $a < 0$:<br>![[Pasted image 20240623112111.png|333]]
- Remeber that if we where to draw the evolution of $x$ over $t$ (the "***phase plane***") we would have:<br>![[Pasted image 20240623112252.png|333]]
- Like before for $a < 0$ we would invert the flow.
- For $a=0$:<br>![[Pasted image 20240623112338.png|444]]
