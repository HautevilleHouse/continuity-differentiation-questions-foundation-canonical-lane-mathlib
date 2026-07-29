import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean

structure MeanValueTheoremPackage where
  extremeValueTheorem : Prop
  rolleTheorem : Prop
  meanValueTheorem : Prop
  cauchyMeanValueTheorem : Prop

structure MeanValueTheoremEvidence (M : MeanValueTheoremPackage) where
  extremeValueTheoremClosed : M.extremeValueTheorem
  rolleTheoremClosed : M.rolleTheorem
  meanValueTheoremClosed : M.meanValueTheorem
  cauchyMeanValueTheoremClosed : M.cauchyMeanValueTheorem

def MeanValueTheoremClosed (M : MeanValueTheoremPackage) : Prop :=
  M.extremeValueTheorem ∧ M.rolleTheorem ∧
  M.meanValueTheorem ∧ M.cauchyMeanValueTheorem

theorem mean_value_theorem_closed_from_evidence (M : MeanValueTheoremPackage)
    (E : MeanValueTheoremEvidence M) : MeanValueTheoremClosed M := by
  exact And.intro E.extremeValueTheoremClosed
    (And.intro E.rolleTheoremClosed
      (And.intro E.meanValueTheoremClosed E.cauchyMeanValueTheoremClosed))

end ContinuityDifferentiationQuestionsFoundationCanonicalLaneLean
end HautevilleHouse