import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure LHopitalRulePackage where
  limitForm : Type u
  numeratorDifferentiable : Prop
  denominatorDifferentiable : Prop
  limitExists : Prop
  lhopitalRule : Prop

def LHopitalRulePackageClosed (L : LHopitalRulePackage) : Prop :=
  L.numeratorDifferentiable ∧ L.denominatorDifferentiable ∧ L.limitExists ∧ L.lhopitalRule

structure LHopitalRuleEvidence (L : LHopitalRulePackage) where
  numeratorDifferentiableClosed : L.numeratorDifferentiable
  denominatorDifferentiableClosed : L.denominatorDifferentiable
  limitExistsClosed : L.limitExists
  lhopitalRuleClosed : L.lhopitalRule

theorem lhopital_rule_package_closed_from_evidence
    (L : LHopitalRulePackage) (E : LHopitalRuleEvidence L) :
    LHopitalRulePackageClosed L := by
  exact And.intro E.numeratorDifferentiableClosed (And.intro E.denominatorDifferentiableClosed
    (And.intro E.limitExistsClosed E.lhopitalRuleClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse