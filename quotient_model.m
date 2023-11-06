// Code for computing quotients of X_0(N) by AL involutions
// without computing a model for X_0(N)

// Examples at the end of the file

load "new_models.m"; // Actually only need to load functions before "eqs_quos"

// Input: N and a sequence of AL indices in ascending order
// Output: Curve Y = X_0(N) / W,
// where W is the group generated by the AL involutions corresponding to the given indices.
// and als, the sequence of AL matrices on X_0(N).

// The quotient curve should have genus > 2 and be non-hyperelliptic (code checks this)

quotient_model := function(N,seq_al);
    NB, als := all_diag_basis(N); // Basis of cusp forms and diagonalised ALs
    g := #NB; // genus of X_0(N)
    al_inds := [ m : m in Divisors(N) | GCD(m,N div m) eq 1 and m gt 1]; // all AL indices
    seqw_M := [als[i] : i in [1..#als] | al_inds[i] in seq_al];
    Ss := [Diagonal(Mw) : Mw in seqw_M];
    n := #Ss[1];
    g_quo := genus_quo(N, seq_al);
    is_hyp := is_hyper_quo(N, seq_al);
    assert g_quo gt 2 and is_hyp eq false; // Check quotient can be canonically embedded
    // Use a different code than in eqs_quos here as it would be too slow to work with the subsets for large values of n (e.g. n > 20).
    coords := [];
    for i in [1..n] do
        flag := 0;
        for diag in Ss do
            if diag[i] eq -1 then
                flag := 1;
                break;
            end if;
        end for;
        if flag eq 0 then
            coords := coords cat [i];
        end if;
    end for;
    Bpl := [NB[i] : i in coords];
    Y := canonic(Bpl);
    return Y, als;
end function;
