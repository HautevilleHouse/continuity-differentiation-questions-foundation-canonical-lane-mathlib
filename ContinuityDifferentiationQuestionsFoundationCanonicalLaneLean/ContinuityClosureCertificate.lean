import ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure ContinuityClosureCertificate where
  closureProposition : Prop
  closureHolds : closureProposition
  bridgeValue : Prop
  bridgeHolds : bridgeValue
  gateValue : Prop
  gateHolds : gateValue
  closureDefinedAsBridgeAndGate : closureProposition = (bridgeValue ∧ gateValue)

theorem continuity_closure_certificate_from_endgame (A : AdmissibleClass) : ContinuityClosureCertificate := by
  have h := constrained_continuity_differentiation_endgame A
  refine {
    closureProposition := ConstrainedContinuityDifferentiationClosure A
    closureHolds := h
    bridgeValue := bridgeClosed A
    bridgeHolds := (bridge_from_admissible_class A)
    gateValue := gateClosed A
    gateHolds := (gate_from_admissible_class A)
    closureDefinedAsBridgeAndGate := rfl
  }

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse
