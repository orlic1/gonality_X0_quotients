# Magma codes from the papers "Tetragonal modular quotients $X_0^+(N)$" and "Tetragonal modular quotients $X_0^{+d}(N)$" by P. Orlić.

Additional README files have been put into subfolders to better explain the code there.

## Contents

- new_models.m and quotient_model.m contain auxiliary functions. The most important one there is quotient_model, which gives models for Atkin-Lehner quotients of $X_0(N)$.

### Example

- We compute a model of a quotient curve $X_0^*(144)$.
```magma
load "quotient_model.m";
quotient_model(144,[9,16]);
```

- Betti_numbers.txt contains codes for Corollary 3.19. and Proposition 3.21 of the paper "Tetragonal modular quotients $X_0^+(N)$" and codes for Corollary 6.7 of the paper "Tetragonal modular quotients $X_0^{+d}(N)$". We prove or disprove the existence of a degree $4$ morphism to $\mathbb{P}^1$ by computing $\beta_{2,2}$.

### Example

- For a curve $X_0^{+6}(102)$ we compute $\beta_{2,2}=0$, implying that this curve is not tetragonal. 
```magma
X:=X0NQuotient(102,[6]);
A:=QuotientModule(DefiningIdeal(X));
BettiTable(A);
BettiNumber(A,2,4);  // Returns 0. Notice that the indexations of Betti numbers are different. This is more thoroughly explained in the paper.
```

- Gonal_maps.txt constructs degree $3$ rational maps to $\mathbb{P}^1$ from curves $X_0^+(N)$ and $X_0^{+d}(N)$ of genus $4$ and degree $4$ rational maps to $\mathbb{P}^1$ from curves $X_0^+(N)$ of genus $6$. All constructions use Magma functions Genus4GonalMap() and Genus6GonalMap().

### Example

- We explicitly find a degree $3$ rational map from $X_0^{+33}(66)$ to $\mathbb{P}^1$. 
```magma
X:=X0NQuotient(66,[33]);
assert Genus(X) eq 4;
Genus4GonalMap(X);  // Returns a map from $X$ to $\mathbb{P}^1$. It is easy to check that it is defined over $\Q$.
```

- QuadPts.txt is an auxiliary file that was used to search for quadratic points via intersections with hyperplanes. These quadratic points were then used in codes in the folder Riemann-Roch_search to find degree $4$ rational functions.

The main function there is SearchPts(X,bd) which searches for quadratic points on $X$ via intersections with hyperplanes $a_0x_0+a_1x_1+a_2x_2=0$, where $|a_i|\leq bd$. Note that this function can have a long running time, but the output of points is continuous (the points can and will repeat).

### Example

```magma
X:=X0NQuotient(160,[160]);
SearchPts(X,20);
```

- Riemann-Roch_search folder contains codes that find rational functions of degree $4$. Each file is a code for one curve. The codes for the curves $X_0^+(N)$ are in the files magma_N.txt and the codes for the curves $X_0^{+d}(N)$ are in the files magma_N-d.txt.

- Fp_gonality folder contains codes that give lower bounds on Q-gonality by bounding the Fp-gonality, separated into folders X_0^+(N) and X_0^+d(N).
In the folder X_0^+(N) are the codes for the paper "Tetragonal modular quotients $X_0^+(N)$". Fp2_points.txt contains codes for Proposition 3.3, not_trigonal.txt and not_tetragonal.txt contain codes for Propositions 3.4. and 3.6.
In the folder X_0^+d(N) are the codes for the paper "Tetragonal modular quotients $X_0^{+d}(N)$". magma_420.txt contains the code for Proposition 3.3, not_trigonal.txt and not_tetragonal.txt contain codes for Propositions 3.5 and 3.6, and not_tetragonal_quotient.txt contains codes for Proposition 3.7.

## Imported files

The files gl2.m, gl2.sig, and gl2data.m from the folder Sutherland-GL2 were retrieved from the repository https://github.com/AndrewVSutherland/ell-adic-galois-images by Jeremy Rouse, Andrew V. Sutherland, and David Zureick-Brown. They were used in the file Fp2_point_count_420.txt to solve Proposition 3.3 of the paper "Tetragonal modular quotients $X_0^{+d}(N)$".
