import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure ContinuityPackage where
  epsilonDeltaDefinition : Prop
  limitExistence : Prop
  compositionContinuity : Prop
  uniformContinuityCondition : Prop

structure ContinuityEvidence (C : ContinuityPackage) where
  epsilonDeltaDefinitionClosed : C.epsilonDeltaDefinition
  limitExistenceClosed : C.limitExistence
  compositionContinuityClosed : C.compositionContinuity
  uniformContinuityConditionClosed : C.uniformContinuityCondition

def ContinuityClosed (C : ContinuityPackage) : Prop :=
  C.epsilonDeltaDefinition ∧ C.limitExistence ∧ C.compositionContinuity ∧ C.uniformContinuityCondition

theorem continuity_closed_from_evidence (C : ContinuityPackage) (E : ContinuityEvidence C) :
    ContinuityClosed C := by
  exact And.intro E.epsilonDeltaDefinitionClosed
    (And.intro E.limitExistenceClosed
      (And.intro E.compositionContinuityClosed E.uniformContinuityConditionClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse