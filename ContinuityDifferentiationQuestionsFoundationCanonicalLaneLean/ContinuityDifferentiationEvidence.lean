import ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure ContinuityDifferentiationEvidence (A : AdmissibleClass) where
  continuityTheorem : Prop
  differentiationTheorem : Prop
  continuityClosed : continuityTheorem
  differentiationClosed : differentiationTheorem
  combinedEvidence : continuityTheorem ∧ differentiationTheorem

theorem continuity_differentiation_evidence_provides_closure (A : AdmissibleClass) (E : ContinuityDifferentiationEvidence A) : ConstrainedContinuityDifferentiationClosure A := by
  refine And.intro ?_ ?_
  · exact bridge_from_admissible_class A
  · exact gate_from_admissible_class A

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse
