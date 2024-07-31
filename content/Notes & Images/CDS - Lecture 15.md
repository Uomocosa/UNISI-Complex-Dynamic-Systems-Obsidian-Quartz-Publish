![[Pasted image 20240627172823.png]]

![[Pasted image 20240627172838.png]]

![[Pasted image 20240627173042.png]]

![[Pasted image 20240627173231.png]]

![[Pasted image 20240627173332.png]]

![[Pasted image 20240627173424.png]]
- Analytic solution.

![[Pasted image 20240627173552.png]]

![[Pasted image 20240627173625.png]]

![[Pasted image 20240627173729.png]]

![[Pasted image 20240627173954.png]]

![[Pasted image 20240627174021.png]]
- The susceptible converge to $0$, meaning all people have become infected (and then recovered)

![[Pasted image 20240627174122.png]]
- Different parameters $\beta$ and $\gamma$.

![[Pasted image 20240627174231.png]]
- $R_0$: strength of infection.

![[Pasted image 20240627174551.png]]

![[Pasted image 20240627174619.png]]

![[Pasted image 20240627174642.png]]
- $f$ is the least quadratic model function.
- This is can also be considered a machine learning program.

![[Pasted image 20240627174836.png]]
- This are the parameters $\beta$ and $\gamma$ found by the previous formula.

![[Pasted image 20240627175037.png]]
- As we can see the function we found, does not fit correctly the following data.

![[Pasted image 20240627175119.png]]
- A more complex, but more accurate model.
- The last formula consider the social distancing and mask used to protect the susceptible individuals.

![[Pasted image 20240627175258.png]]
- Now the function fits the data much better.

![[Pasted image 20240627175336.png]]
- When the lockdown ends we need to expect a second peak.
- The black line represents the parameter $c$.

![[Pasted image 20240627175445.png]]

![[Pasted image 20240627175511.png]]

![[Pasted image 20240627175521.png]]

![[Pasted image 20240627175534.png]]
- Since we have more data (all the regions combined), the resulting found function, fits the data a lot better.

![[Pasted image 20240627175705.png]]
- This model accounts also for **quarantined individuals** $(q)$ and for **hospitalized individuals** $(h)$.
- $\beta s x$ : number of contacts between susceptible and infected.
- $\gamma_1 x$ : individuals from infected to quarantine
- $\gamma_2 x$ : infected ⇒ hospitalized
- ...
- $\eta_2 h$: hospitalized ⇒ deceased.
- ***NOTE***: That for each equation, the negative part all depend on the respective variable itself, otherwise the variable would become negative in the long run, and in this case each parameter/variable has to be $\geq 0$. (we cannot have a negative number of people)<br>~Ex.: ${dx \over dt} = \beta sx - \lambda_1 x - \lambda_2 x - \lambda_3 x$, the negative terms are $\lambda_1 x \, \lambda_2 x ,\ \lambda_3 x$ and they all depend on $x$.
