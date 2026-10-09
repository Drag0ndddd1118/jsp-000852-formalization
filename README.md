# Lean 4 Formalization of JSP-000852 (Erdős Problem #1024)

This repository provides a standalone, reproducible Lean 4 verification package for **JSP-000852** (Erdős Problem #1024).

## Mathematical Overview

- **Problem Statement**: How large an independent set is guaranteed in a three-uniform hypergraph whose edges intersect pairwise in at most one vertex?
- **Mathematical Resolution**: Kevin T. Phelps and Vojtěch Rödl (1986), *Steiner triple systems with minimum independence number*, Ars Combinatoria 21 (1986), 167–172.
- **Result Details**: Phelps and Rödl established that for every linear 3-uniform hypergraph on $n$ vertices, the maximum cardinality of an independent set satisfies $f(n) = \Theta(\sqrt{n \log n})$, proving both the probabilistic sampling lower bound and the upper bound constructions.
- **Formalization Authors**: OpenAI Codex and GPT-5.6 Sol (upstream formalization in `plby/lean-proofs`).
- **Packaging & Verification**: Qin Zhao (`Drag0ndddd1118`).

## Contract and Verification Architecture

- **`Challenge.lean`**: Defines the contract statement:
  ```lean
  def jsp000852Statement : Prop :=
    (fun n : ℕ ↦ (Erdos1024.guaranteedIndependence n : ℝ)) =Θ[atTop]
      Erdos1024.resolutionScale
  ```
- **`Submission.lean`**: Formal resolution bridging to `Erdos1024.erdos_1024`:
  ```lean
  theorem jsp_000852_solved : jsp000852Statement :=
    Erdos1024.erdos_1024
  ```
- **`check.py`**: Automated mechanical verification ensuring:
  1. Complete clean build via `lake build`;
  2. Zero `sorry`, `admit`, `axiom`, `opaque`, `unsafe`, `partial`, or `native_decide`;
  3. Exact bridge typecheck: `example : jsp000852Statement := jsp_000852_solved`;
  4. Standard foundational axioms only: `[propext, Classical.choice, Quot.sound]`.

## Axiom Verification

`#print axioms jsp_000852_solved` relies strictly on standard Lean foundational axioms:
- `propext`
- `Classical.choice`
- `Quot.sound`

Zero `sorry`, zero `admit`, zero custom unproved axioms.

## Building and Verifying

Requires `elan` and Lean `v4.34.0`:

```bash
lake exe cache get
lake build
python3 check.py
```

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.
