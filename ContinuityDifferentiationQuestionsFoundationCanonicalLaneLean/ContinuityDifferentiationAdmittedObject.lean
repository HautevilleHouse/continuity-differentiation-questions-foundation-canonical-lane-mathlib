import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure ContinuityDifferentiationSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuityDifferentiationAdmittedObject where
  space : ContinuityDifferentiationSpace
  functionDefined : Prop
  continuityEstablished : Prop
  differentiabilityEstablished : Prop
  derivativeCalculus : Prop
  conclusion : continuityEstablished ∧ differentiabilityEstablished ∧ derivativeCalculus

def ContinuityDifferentiationWitnessClosed (O : ContinuityDifferentiationAdmittedObject) : Prop :=
  O.continuityEstablished ∧ O.differentiabilityEstablished ∧ O.derivativeCalculus

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse