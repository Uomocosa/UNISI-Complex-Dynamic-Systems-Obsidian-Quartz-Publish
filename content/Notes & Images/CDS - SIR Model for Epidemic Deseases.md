---
aliases:
  - SI model
  - SRI model
  - extended SRI model
  - reduced SI model
---

###### *Remember*:

> ***SIR***: *Susceptible, Infectious, or Recovered*

> ***Reduced SI Model***:$$\left\{\begin{array}{l} {ds \over dt} = -\beta s x \\ {dx \over dt} = \beta s x  \end{array}\right.$$![[Pasted image 20240627173332 - Copia.png|333]]

> ***SIR Model***:$$\left\{\begin{array}{l} {ds \over dt} = -\beta s x \\ {dx \over dt} = \beta s x - \gamma x \\ {dr \over dt} =  \gamma x \end{array}\right.$$![[Pasted image 20240627174021 - Copia.png|333]]<br>![[Pasted image 20240627174122 - Copia.png|333]]

> ***$R_0$ index***: the simplest definition is:$$R_0={\beta \over \gamma} $$And it defines:
> - If $R_0 \lt 1$, the infection is not spreding.<br>The recovery rate $(\gamma)$ is grater then the infection rate $(\beta)$. 
> - If $R_0 \gt 1$, the infection is spreading.
> - $R_0 = 1$ is called "*epidemic transition*".

> ***Extended SIR Model (1)***:$$\left\{\begin{array}{l} {ds \over dt} = -{\beta \over c + k_1} s x \\ {dx \over dt} = {\beta \over c + k_1} s x - \gamma x \\ {dr \over dt} =  \gamma x \\ {dc \over dt} = k \kern1px c \kern1px (1-c)(x-r)  \end{array}\right.$$

> ***Extended SIR Model (2)***:$$\left\{\begin{array}{l} {ds \over dt} = -\beta s x \\ {dx \over dt} = \beta s x - \gamma_1 x - \gamma_2 x  - \gamma_3 x  \\  {dq \over dt} = \gamma_1 x + \delta_1 h - \delta_2 q - \delta_3 q \\ {dh \over dt} = -\delta_1 h + \gamma_2 x + \delta_2 q - \eta_1 h - \eta_2 h \\  {dr \over dt} = \gamma_3 x + \delta_3 q + \eta_1 h \\  {dd \over dt} = \eta_2 h  \end{array}\right.$$


> ![[Pasted image 20240627172838.png|444]]<br>![[Pasted image 20240627173042.png|444]]<br>![[Pasted image 20240627173231.png|444]]<br>![[Pasted image 20240627173332.png|444]]

> In the simplest case we can solve this problem analytically and find the solution $x(t)$, which wil be in the form: $x(t) = {x_0 \kern2px e^{\beta t} \over 1 - x_0 + x_0 \kern2px e^{\beta t}}$, and as you can see for $\beta \gt 0$, then $x(t)$ will tend to $1$ for $t \to \infty$.
> We also know that this also from the fact that $x^*$ is an **asymptotic steady state** of the **logistic equation**.
> In the **SI equation**, $\beta$ represents a **rate of contacts**, then it assumed **positive**.

> ***The SRI Model***:<br>![[Pasted image 20240627173729.png|444]]<br>![[Pasted image 20240627173954.png|444]]<br>![[Pasted image 20240627174021.png|444]]<br>![[Pasted image 20240627174122.png|444]]<br>![[Pasted image 20240627174231.png|444]]


> We have used this model to predict the infection rate for the coronavirus in Italy, however, this is still a simplied model, and does not represent correctly what is really happanening, the estimation is not correct:<br>![[Pasted image 20240627175037.png|444]]<br>![[Pasted image 20240627175119.png|444]]
> This represents the data quite well:<br>![[Pasted image 20240627175534.png|444]]

> ***The extended SRI Model***:<br>![[Pasted image 20240627175705.png|444]]
> - This model accounts also for **quarantined individuals** $(q)$ and for **hospitalized individuals** $(h)$.
> - $\beta s x$ : number of contacts between susceptible and infected.
> - $\gamma_1 x$ : individuals from infected to quarantine.
> - $\gamma_2 x$ : infected ⇒ hospitalized.
> - ...
> - $\eta_2 h$: hospitalized ⇒ deceased.
> - ***NOTE***: That for each equation, the negative part all depend on the respective variable itself, otherwise the variable would become negative in the long run, and in this case each parameter/variable has to be $\geq 0$. (we cannot have a negative number of people)<br>*~Ex.:* ${dx \over dt} = \beta sx - \lambda_1 x - \lambda_2 x - \lambda_3 x$, the negative terms are $\lambda_1 x \, \lambda_2 x ,\ \lambda_3 x$ and they all depend on $x$. #not-sure-about-this But $\beta s x$ depends on $x$ and is positive?? The positive sings means some people that enters in this class from a different one, and the negative sign means that they go from this class to another. Take for example the $\pm \eta_2 h$ in hospitalied and dead, they have opposite signs, meaning that some hospitalized people die.

----

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
