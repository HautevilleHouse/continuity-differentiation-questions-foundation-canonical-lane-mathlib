import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure IntermediateValuePackage where
  domainConnected : Prop
  functionContinuous : Prop
  valueBetween : Prop
  existsPoint : Prop

structure IntermediateValueEvidence (P : IntermediateValuePackage) where
  domainConnectedClosed : P.domainConnected
  functionContinuousClosed : P.functionContinuous
  valueBetweenClosed : P.valueBetween
  existsPointClosed : P.existsPoint

def IntermediateValueClosed (P : IntermediateValuePackage) : Prop :=
  P.domainConnected ∧ P.functionContinuous ∧
  P.valueBetween ∧ P.existsPoint

theorem intermediate_value_closed_from_evidence
    (P : IntermediateValuePackage) (E : IntermediateValueEvidence P) :
    IntermediateValueClosed P := by
  exact And.intro E.domainConnectedClosed
    (And.intro E.functionContinuousClosed
      (And.intro E.valueBetweenClosed E.existsPointClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse
