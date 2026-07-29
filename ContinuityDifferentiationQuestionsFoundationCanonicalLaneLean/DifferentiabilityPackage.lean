import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure DifferentiabilityPackage where
  derivativeDefined : Prop
  linearApproximation : Prop
  differentiableImpliesContinuous : Prop
  chainRule : Prop
  derivativeOfConstant : Prop
  derivativeOfIdentity : Prop

structure DifferentiabilityEvidence (D : DifferentiabilityPackage) where
  derivativeDefinedClosed : D.derivativeDefined
  linearApproximationClosed : D.linearApproximation
  differentiableImpliesContinuousClosed : D.differentiableImpliesContinuous
  chainRuleClosed : D.chainRule
  derivativeOfConstantClosed : D.derivativeOfConstant
  derivativeOfIdentityClosed : D.derivativeOfIdentity

def DifferentiabilityClosed (D : DifferentiabilityPackage) : Prop :=
  D.derivativeDefined ∧ D.linearApproximation ∧
  D.differentiableImpliesContinuous ∧ D.chainRule ∧
  D.derivativeOfConstant ∧ D.derivativeOfIdentity

theorem differentiability_closed_from_evidence (D : DifferentiabilityPackage)
    (E : DifferentiabilityEvidence D) : DifferentiabilityClosed D := by
  exact And.intro E.derivativeDefinedClosed
    (And.intro E.linearApproximationClosed
      (And.intro E.differentiableImpliesContinuousClosed
        (And.intro E.chainRuleClosed
          (And.intro E.derivativeOfConstantClosed E.derivativeOfIdentityClosed))))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse