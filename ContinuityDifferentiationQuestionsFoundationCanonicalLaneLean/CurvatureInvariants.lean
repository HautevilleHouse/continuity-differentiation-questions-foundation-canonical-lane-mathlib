import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundation

structure CurvatureInvariantsPackage where
  riemannCurvatureTensor : Prop
  ricciCurvature : Prop
  scalarCurvature : Prop
  sectionalCurvature : Prop
  curvatureContinuity : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  riemannCurvatureTensorClosed : C.riemannCurvatureTensor
  ricciCurvatureClosed : C.ricciCurvature
  scalarCurvatureClosed : C.scalarCurvature
  sectionalCurvatureClosed : C.sectionalCurvature
  curvatureContinuityClosed : C.curvatureContinuity

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.riemannCurvatureTensor ∧ C.ricciCurvature ∧ C.scalarCurvature ∧
  C.sectionalCurvature ∧ C.curvatureContinuity

theorem curvature_invariants_closed_from_evidence
    (C : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C :=
  And.intro E.riemannCurvatureTensorClosed
    (And.intro E.ricciCurvatureClosed
      (And.intro E.scalarCurvatureClosed
        (And.intro E.sectionalCurvatureClosed E.curvatureContinuityClosed)))

end ContinuityDifferentiationQuestionsFoundation
end HautevilleHouse