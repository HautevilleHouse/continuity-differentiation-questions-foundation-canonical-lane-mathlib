import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure MeanValueTheoremPackage where
  functionDifferentiable : Prop
  closedIntervalCondition : Prop
  existsPointWhereDerivativeEqualsSlope : Prop
  rolleTheoremApplies : Prop

structure MeanValueTheoremEvidence (P : MeanValueTheoremPackage) where
  functionDifferentiableClosed : P.functionDifferentiable
  closedIntervalConditionClosed : P.closedIntervalCondition
  existsPointWhereDerivativeEqualsSlopeClosed : P.existsPointWhereDerivativeEqualsSlope
  rolleTheoremAppliesClosed : P.rolleTheoremApplies

def MeanValueTheoremClosed (P : MeanValueTheoremPackage) : Prop :=
  P.functionDifferentiable ∧ P.closedIntervalCondition ∧
  P.existsPointWhereDerivativeEqualsSlope ∧ P.rolleTheoremApplies

theorem mean_value_theorem_closed_from_evidence
    (P : MeanValueTheoremPackage) (E : MeanValueTheoremEvidence P) :
    MeanValueTheoremClosed P := by
  exact And.intro E.functionDifferentiableClosed
    (And.intro E.closedIntervalConditionClosed
      (And.intro E.existsPointWhereDerivativeEqualsSlopeClosed E.rolleTheoremAppliesClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse
