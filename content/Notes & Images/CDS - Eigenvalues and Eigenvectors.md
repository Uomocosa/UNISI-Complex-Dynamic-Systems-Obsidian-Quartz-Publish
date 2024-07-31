---
aliases:
  - eigenvalues
  - eigenvectors
  - eigenvalue
  - eigenvector
---
###### *Remember*:

> - To calculate the **eigenvalues**: solve the characteristic polynomial $$\det(A - \lambda I) = 0$$
> - For each **eigenvalue** $\lambda_i$, to find the corresponding eigenvector, solve:$$(A - \lambda_i I)\mathbf{v} = \vec0$$

> Here's an example:$$A = \left(\begin{array}{l} 4 & 1 \\ 2 & 3      \end{array}\right)$$The **characteristic polynomial** $-$ is found as:$$\operatorname{det}\left(\begin{array}{l} 4-\lambda & 1 \\ 2 & 3 -\lambda     \end{array}\right) = (4-\lambda)(3-\lambda) - (2 \cdot 1)$$If we solve it we obtain:$$\lambda^2 - 7\lambda +10$$And finally:$$\begin{array}{l} \lambda_1 = 5 \\ \lambda_2 = 2      \end{array}$$

> #not-sure-about-this (*ChatGPT 4o*) Shouldn't I find 2 vectors? I did not review this answer, I do not care.
> After finding: $\lambda_1 = 5$ and $\lambda_2 = 2$, we can then calculate the eigenvectors from:$$\left(\begin{array}{l} 4-5 & 1 \\ 2 & 3 -5     \end{array}\right)\left(\begin{array}{l} v_1 \\ v_2\end{array}\right) = \left(\begin{array}{l} 0 \\ 0\end{array}\right)$$And from:$$\left(\begin{array}{l} 4-2 & 1 \\ 2 & 3 -2     \end{array}\right)\left(\begin{array}{l} v_1 \\ v_2\end{array}\right) =  \left(\begin{array}{l} 0 \\ 0\end{array}\right)$$And after some calcualtions we obtain:$$v = \left(\begin{array}{c} 1 \\ -2   \end{array}\right)$$
