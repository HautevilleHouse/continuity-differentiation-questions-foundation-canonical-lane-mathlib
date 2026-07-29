import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure ContinuityDifferentiationFoundation where
  metricSpace : Type u
  derivativeMapping : Type v
  continuityPreserved : Prop
  differentiationExistence : Prop
  chainRuleSatisfied : Prop
  localLinearApproximation : Prop

structure ContinuityDifferentiationEvidence (F : ContinuityDifferentiationFoundation) where
  continuityPreservedClosed : F.continuityPreserved
  differentiationExistenceClosed : F.differentiationExistence
  chainRuleSatisfiedClosed : F.chainRuleSatisfied
  localLinearApproximationClosed : F.localLinearApproximation

def ContinuityDifferentiationClosed (F : ContinuityDifferentiationFoundation) : Prop :=
  F.continuityPreserved ∧ F.differentiationExistence ∧
  F.chainRuleSatisfied ∧ F.localLinearApproximation

theorem continuity_differentiation_closed_from_evidence
    (F : ContinuityDifferentiationFoundation) (E : ContinuityDifferentiationEvidence F) :
    ContinuityDifferentiationClosed F := by
  exact And.intro E.continuityPreservedClosed
    (And.intro E.differentiationExistenceClosed
      (And.intro E.chainRuleSatisfiedClosed E.localLinearApproximationClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse
