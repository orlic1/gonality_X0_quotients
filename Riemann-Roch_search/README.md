Here we prove that the curve $X_0^{+d}(N)$ is $\mathbb{Q}$-tetragonal by finding a degree $4$ rational divisor $D$ such that $\ell(D)$=2.

For some curves this divisor is of the form $1+1+1+1$, i.e. the sum of $4$ rational points. We search for rational points using the inbuilt Magma function PointSearch(X,bound). See the code for the curve $X_0^{+9}(144)$.

For other curves this divisor is of the form $1+1+2$, i.e. the sum of $2$ rational points and a quadratic point together with its conjugate. We search for quadratic points using the function SearchPts from the file QuadPts.txt. The points are then manually input into the code. See the code for the curve $X_0{+32}(160)$.
