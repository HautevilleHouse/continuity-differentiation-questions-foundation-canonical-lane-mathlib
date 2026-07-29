import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure TaylorTheoremPackage where
  functionSpace : Type u
  basePoint : Type v
  taylorPolynomial : Prop
  remainderFormula : Prop
  lagrangeRemainder : Prop
  integralRemainder : Prop

def TaylorTheoremPackageClosed (T : TaylorTheoremPackage) : Prop :=
  T.taylorPolynomial ∧ T.remainderFormula ∧ T.lagrangeRemainder ∧ T.integralRemainder

structure TaylorTheoremEvidence (T : TaylorTheoremPackage) where
  taylorPolynomialClosed : T.taylorPolynomial
  remainderFormulaClosed : T.remainderFormula
  lagrangeRemainderClosed : T.lagrangeRemainder
  integralRemainderClosed : T.integralRemainder

theorem taylor_theorem_package_closed_from_evidence
    (T : TaylorTheoremPackage) (E : TaylorTheoremEvidence T) :
    TaylorTheoremPackageClosed T := by
  exact And.intro E.taylorPolynomialClosed (And.intro E.remainderFormulaClosed
    (And.intro E.lagrangeRemainderClosed E.integralRemainderClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse