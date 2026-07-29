import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundation

structure DifferentiableStructurePackage where
  atlas : Prop
  transitionMaps : Prop
  compatibilityCondition : Prop
  differentiableAtlas : Prop
  maximalAtlas : Prop

structure DifferentiableStructureEvidence (D : DifferentiableStructurePackage) where
  atlasClosed : D.atlas
  transitionMapsClosed : D.transitionMaps
  compatibilityConditionClosed : D.compatibilityCondition
  differentiableAtlasClosed : D.differentiableAtlas
  maximalAtlasClosed : D.maximalAtlas

def DifferentiableStructureClosed (D : DifferentiableStructurePackage) : Prop :=
  D.atlas ∧ D.transitionMaps ∧ D.compatibilityCondition ∧
  D.differentiableAtlas ∧ D.maximalAtlas

theorem differentiable_structure_closed_from_evidence
    (D : DifferentiableStructurePackage) (E : DifferentiableStructureEvidence D) :
    DifferentiableStructureClosed D :=
  And.intro E.atlasClosed
    (And.intro E.transitionMapsClosed
      (And.intro E.compatibilityConditionClosed
        (And.intro E.differentiableAtlasClosed E.maximalAtlasClosed)))

end ContinuityDifferentiationQuestionsFoundation
end HautevilleHouse