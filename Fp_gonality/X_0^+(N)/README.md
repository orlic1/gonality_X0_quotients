These files contain functions used to give lower bounds on $\mathbb{Q}$-gonality via $\mathbb{F}_p$-gonality

- Fp2_points.txt contains a function Fp2Points(X,p) which counts the number of $\mathbb{F}_{p^2}$-points on a curve $X$.

## Example
```magma
X:=X0NQuotient(268,[268]);
Fp2Points(X,3);  // returns 46>4(3^2+1), meaning that the curve is not Q-tetragonal
```

- not-trigonal.txt contains a function NotTrigonal(X,p) which tests if $\textup{gon}_{\mathbb{F}_p}(X)\geq4$. The curve $X/\mathbb{Q}$ is required to have a rational point and it must have good reduction at $p$.

- not-tetragonal.txt contains a similar function NotTetragonal(X,p).

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
