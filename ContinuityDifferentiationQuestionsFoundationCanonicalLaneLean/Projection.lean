import ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def continuityProjection : Projection ContinuityEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem continuity_projection_idempotent (x : ContinuityEndgameState) :
    continuityProjection.toFun (continuityProjection.toFun x) = continuityProjection.toFun x := by
  exact continuityProjection.idempotent x

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse
