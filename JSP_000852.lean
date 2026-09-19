import Mathlib
import ErdosProblems.Erdos1024

/--
JSP-000852 (Erdős Problem #1024):
How large an independent set is guaranteed in a three-uniform hypergraph
whose edges intersect pairwise in at most one vertex?

Mathematical resolution:
Kevin T. Phelps and Vojtěch Rödl (1986),
"Steiner triple systems with minimum independence number",
Ars Combinatoria 21 (1986), 167–172.

Phelps and Rödl proved that for any n-vertex 3-uniform linear hypergraph
(edges intersect in at most one vertex), the guaranteed independence number
f(n) is of exact asymptotic order Θ(√(n log n)).

Formalization: OpenAI Codex and GPT-5.6 Sol (upstream in plby/lean-proofs).
-/
theorem jsp_000852_solved :
    (fun n : ℕ ↦ (Erdos1024.guaranteedIndependence n : ℝ)) =Θ[Filter.atTop]
      Erdos1024.resolutionScale :=
  Erdos1024.erdos_1024

#print axioms jsp_000852_solved
