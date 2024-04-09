The Magma codes from the papers "Tetragonal modular quotients $X_0^+(N)$" and "Tetragonal modular quotients $X_0^{+d}(N)$" by P. Orlić.

new_models.m and quotient_model.m contain auxiliary functions. The most important one there is quotient_model, which gives models for Atkin-Lehner quotients of $X_0(N)$.

QuadPts.txt is an auxiliary file that was used to search for quadratic points via intersections with hyperplanes. These quadratic points were then used in codes in the folder Riemann-Roch_search to find degree $4$ rational functions.

Riemann-Roch_search folder contains codes that find rational functions of degree $4$. Each file is a code for one curve. The codes for the curves $X_0^+(N)$ are in the files magma_N.txt and the codes for the curves $X_0^{+d}(N)$ are in the files magma_N-d.txt.

Fp_gonality folder contains codes that give lower bounds on Q-gonality by bounding the Fp-gonality, separated into folders X_0^+(N) and X_0^+d(N).
In the folder X_0^+(N) are the codes for the paper "Tetragonal modular quotients $X_0^+(N)$". Fp2_points.txt contains codes for Proposition 3.3, not_trigonal.txt and not_tetragonal.txt contain codes for Propositions 3.4. and 3.6.
In the folder X_0^+d(N) are the codes for the paper "Tetragonal modular quotients $X_0^{+d}(N)$". magma_420.txt contains the code for Proposition 3.3, not_trigonal.txt and not_tetragonal.txt contain codes for Propositions 3.5 and 3.6, and not_tetragonal_quotient.txt contains codes for Proposition 3.7.

Betti_numbers.txt contains codes for Corollary 3.19. and Proposition 3.21 of the paper "Tetragonal modular quotients $X_0^+(N)$" and codes for Corollary 6.7 of the paper "Tetragonal modular quotients $X_0^+d(N)$".

Gonal_maps.txt constructs degree $3$ rational maps to $\mathbb{P}^1$ from curves $X_0^+(N)$ and $X_0^{+d}(N)$ of genus $4$ and degree $4$ rational maps to $\mathbb{P}^1$ from curves $X_0^+(N)$ of genus $6$. All constructions use Magma functions Genus4GonalMap() and Genus6GonalMap().

The files gl2.m, gl2.sig, and gl2data.m from the folder Sutherland-GL2 were retrieved from the repository https://github.com/AndrewVSutherland/ell-adic-galois-images by Jeremy Rouse, Andrew V. Sutherland, and David Zureick-Brown. They were used in the file Fp2_point_count_420.txt to solve Proposition 3.3 of the paper "Tetragonal modular quotients $X_0^{+d}(N)$".
