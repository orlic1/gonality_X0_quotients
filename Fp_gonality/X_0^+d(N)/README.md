These files contain functions used to give lower bounds on $\mathbb{Q}$-gonality via $\mathbb{F}_p$-gonality.

- Fpn_points.txt computes the number of $\mathbb{F}_ {p^n}$ points on the curve $X_0^{+d}(N)$. Some functions in this file are taken from the file funcions.m at Francesc Bars's Github repository https://github.com/FrancescBars/Magma-functions-on-Quotient-Modular-Curves. His README file is useful in explaining this computation. The function FpnPoints(N,d,p,n) is similar to Bars's code for the curve $X_0(366)/\left< w_2 , w_{61} \right>$.

- not_trigonal.txt contains a function NotTrigonal(X,p) which tests if $\text{gon}_{\mathbb{F}_p}(X)\geq4$. The curve $X/\mathbb{Q}$ is required to have a rational point and it must have good reduction at $p$.

- not_tetragonal.txt and not-tetragonal_quotient.txt contain a similar function NotTetragonal(X,p). These two files are split because they present two different methods of proving that the curve $X_0^{+d}(N)$ is not $\mathbb{Q}$-tetragonal.

In not_tetragonal_quotient.txt we prove that the lower genus quotient curve $X_0(N)/\left<w_d,w_{d'}\right>$ is not $\mathbb{Q}$-tetragonal, therefore $X_0^{+d}(N)$ is not $\mathbb{Q}$-tetragonal. We do this because $X_0^{+d}(N)$ has high genus and computations with it exceed computer time and memory limits.

In not_tetragonal.txt this computation is done directly for the curve $X_0^{+d}(N)$.

## Example
```magma
X:=X0NQuotient(70,[70]);
NotTrigonal(X,11);  // returns 1, proving that X_0^+(70) is not Q-trigonal 
```

## Example
```magma
X:=X0NQuotient(130,[130]);
NotTetragonal(X,3);  // returns 1, proving that X_0^+(130) is not Q-tetragonal
```

- In the file magma_420.txt we compute that the curve $X_0(420)$ has $1128>8\cdot(11^2+1)$ $\mathbb{F}_{11^2}$-points. Therefore, its $\mathbb{Q}$-gonality is larger than $8$ and all $15$ quotient curves $X_0^{+d}(420)$ are not $\mathbb{Q}$-tetragonal. The computation takes around $1$ minute.
