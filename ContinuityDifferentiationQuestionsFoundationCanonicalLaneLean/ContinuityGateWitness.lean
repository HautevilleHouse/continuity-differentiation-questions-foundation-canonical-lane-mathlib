import ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure ContinuityGateWitness (A : AdmissibleClass) where
  endpointChosen : A.endpointSatisfied
  remainderChosen : A.remainderRecorded
  gateDecision : A.endpointSatisfied ∨ A.remainderRecorded := Or.inl endpointChosen

theorem continuity_gate_witness_provides_gateClosed (A : AdmissibleClass) (W : ContinuityGateWitness A) : gateClosed A := by
  exact Or.inl W.endpointChosen

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse
