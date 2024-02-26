The codes from the article "Tetragonal modular quotients X_0^+(N)" by P. Orlić.

new_models.m and quotient_model.m contain auxiliary functions. The most important one there is quotient_model, which gives models for Atkin-Lehner quotients of X_0(N).

QuadPts.txt is an auxiliary file that was used to search for quadratic points via intersections with hyperplanes. These quadratic points were then used in codes in the folder Riemann-Roch_search to find degree 4 functions.

Riemann-Roch_search folder contains codes that find rational functions of degree 4. Each file is a code for one value of N.

Fp_gonality folder contains codes that give lower bounds on Q-gonality by bounding the Fp-gonality. Fp2_points.txt contains codes for Proposition 3.3, not_trigonal.txt and not_tetragonal.txt contain codes for Propositions 3.4. and 3.6.

Betti_numbers.txt contains codes for Corollary 3.19. and Proposition 3.21.

Gonal_maps.txt constructs degree 3 rational maps from curves X_0^+(N) of genus 4 and degree 4 rational maps from curves X_0^+(N) of genus 6. All constructions use Magma functions Genus4GonalMap() and Genus6GonalMap().
