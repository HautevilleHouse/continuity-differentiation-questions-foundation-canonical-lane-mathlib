import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure TaylorTheoremPackage where
  taylorPolynomialDefined : Prop
  remainderEstimate : Prop
  standardLimitDerivative : Prop
  higherOrderDerivative : Prop

structure TaylorTheoremEvidence (T : TaylorTheoremPackage) where
  taylorPolynomialDefinedClosed : T.taylorPolynomialDefined
  remainderEstimateClosed : T.remainderEstimate
  standardLimitDerivativeClosed : T.standardLimitDerivative
  higherOrderDerivativeClosed : T.higherOrderDerivative

def TaylorTheoremClosed (T : TaylorTheoremPackage) : Prop :=
  T.taylorPolynomialDefined ∧ T.remainderEstimate ∧
  T.standardLimitDerivative ∧ T.higherOrderDerivative

theorem taylor_theorem_closed_from_evidence (T : TaylorTheoremPackage)
    (E : TaylorTheoremEvidence T) : TaylorTheoremClosed T := by
  exact And.intro E.taylorPolynomialDefinedClosed
    (And.intro E.remainderEstimateClosed
      (And.intro E.standardLimitDerivativeClosed E.higherOrderDerivativeClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse