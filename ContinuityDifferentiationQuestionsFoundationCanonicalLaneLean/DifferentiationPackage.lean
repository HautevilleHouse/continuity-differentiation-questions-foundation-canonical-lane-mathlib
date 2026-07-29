import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure DifferentiationPackage where
  derivativeDefinition : Prop
  differentiationRules : Prop
  chainRule : Prop
  meanValueTheorem : Prop

structure DifferentiationEvidence (D : DifferentiationPackage) where
  derivativeDefinitionClosed : D.derivativeDefinition
  differentiationRulesClosed : D.differentiationRules
  chainRuleClosed : D.chainRule
  meanValueTheoremClosed : D.meanValueTheorem

def DifferentiationClosed (D : DifferentiationPackage) : Prop :=
  D.derivativeDefinition ∧ D.differentiationRules ∧ D.chainRule ∧ D.meanValueTheorem

theorem differentiation_closed_from_evidence (D : DifferentiationPackage) (E : DifferentiationEvidence D) :
    DifferentiationClosed D := by
  exact And.intro E.derivativeDefinitionClosed
    (And.intro E.differentiationRulesClosed
      (And.intro E.chainRuleClosed E.meanValueTheoremClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse