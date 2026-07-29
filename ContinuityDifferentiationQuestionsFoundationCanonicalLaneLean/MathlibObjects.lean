import ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ContinuitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ContinuityAdmittedObject where
  space : ContinuitySpace
  differentiationQuestions : Prop
  continuityQuestions : Prop
  model : Type
  modelTopology : TopologicalSpace model
  functionSpace : Type
  continuityEstablished : Prop
  differentiationEstablished : Prop
  conclusion : continuityEstablished ∧ differentiationEstablished

structure ContinuityEndgameState where
  object : ContinuityAdmittedObject

def ContinuityWitnessClosed (O : ContinuityAdmittedObject) : Prop :=
  O.continuityEstablished ∧ O.differentiationEstablished

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse
