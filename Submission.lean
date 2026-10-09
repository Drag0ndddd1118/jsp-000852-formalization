import Challenge
import ErdosProblems.Erdos1024

open Filter

namespace JSP000852

/--
Formal resolution of JSP-000852 (Erdős Problem #1024).
Phelps–Rödl linear 3-uniform hypergraph independence number theorem:
the minimum guaranteed independence number is of exact asymptotic order Θ(√(n log n)).
-/
theorem jsp_000852_solved : jsp000852Statement :=
  Erdos1024.erdos_1024

end JSP000852
