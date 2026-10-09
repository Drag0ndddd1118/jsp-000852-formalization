import Mathlib.Analysis.Asymptotics.Defs
import ErdosProblems.Erdos1024

open Filter

namespace JSP000852

/--
JSP-000852 (Erdős Problem #1024):
How large an independent set is guaranteed in a three-uniform hypergraph
whose edges intersect pairwise in at most one vertex?

Mathematical Resolution:
Kevin T. Phelps and Vojtěch Rödl (1986),
"Steiner triple systems with minimum independence number",
Ars Combinatoria 21 (1986), 167–172.

The theorem establishes that for every linear 3-uniform hypergraph on `n` vertices,
the minimum guaranteed independence number satisfies `f(n) = Θ(√(n log n))`.
-/
def jsp000852Statement : Prop :=
  (fun n : ℕ ↦ (Erdos1024.guaranteedIndependence n : ℝ)) =Θ[atTop]
    Erdos1024.resolutionScale

end JSP000852
