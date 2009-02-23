/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{
#include <Handle_TCollection_AVLBaseNode.hxx>
#include <Handle_TCollection_HAsciiString.hxx>
#include <Handle_TCollection_HExtendedString.hxx>
#include <Handle_TCollection_MapNode.hxx>
#include <Handle_TCollection_SeqNode.hxx>
#include <MMgt_StackManager.hxx>
#include <MMgt_TShared.hxx>
#include <Handle_MMgt_TShared.hxx>
#include <GeomPlate_Aij.hxx>
#include <GeomPlate_Array1OfHCurveOnSurface.hxx>
#include <GeomPlate_Array1OfSequenceOfReal.hxx>
#include <GeomPlate_BuildAveragePlane.hxx>
#include <GeomPlate_BuildPlateSurface.hxx>
#include <GeomPlate_CurveConstraint.hxx>
#include <GeomPlate_HArray1OfHCurveOnSurface.hxx>
#include <GeomPlate_HArray1OfSequenceOfReal.hxx>
#include <GeomPlate_HSequenceOfCurveConstraint.hxx>
#include <GeomPlate_HSequenceOfPointConstraint.hxx>
#include <GeomPlate_MakeApprox.hxx>
#include <GeomPlate_PlateG0Criterion.hxx>
#include <GeomPlate_PlateG1Criterion.hxx>
#include <GeomPlate_PointConstraint.hxx>
#include <GeomPlate_SequenceNodeOfSequenceOfAij.hxx>
#include <GeomPlate_SequenceNodeOfSequenceOfCurveConstraint.hxx>
#include <GeomPlate_SequenceNodeOfSequenceOfPointConstraint.hxx>
#include <GeomPlate_SequenceOfAij.hxx>
#include <GeomPlate_SequenceOfCurveConstraint.hxx>
#include <GeomPlate_SequenceOfPointConstraint.hxx>
#include <GeomPlate_Surface.hxx>
#include <Handle_GeomPlate_CurveConstraint.hxx>
#include <Handle_GeomPlate_HArray1OfHCurveOnSurface.hxx>
#include <Handle_GeomPlate_HArray1OfSequenceOfReal.hxx>
#include <Handle_GeomPlate_HSequenceOfCurveConstraint.hxx>
#include <Handle_GeomPlate_HSequenceOfPointConstraint.hxx>
#include <Handle_GeomPlate_PointConstraint.hxx>
#include <Handle_GeomPlate_SequenceNodeOfSequenceOfAij.hxx>
#include <Handle_GeomPlate_SequenceNodeOfSequenceOfCurveConstraint.hxx>
#include <Handle_GeomPlate_SequenceNodeOfSequenceOfPointConstraint.hxx>
#include <Handle_GeomPlate_Surface.hxx>
#include <Standard_AbortiveTransaction.hxx>
#include <Standard_Address.hxx>
#include <Standard_AncestorIterator.hxx>
#include <Standard_Boolean.hxx>
#include <Standard_Byte.hxx>
#include <Standard_Character.hxx>
#include <Standard_ConstructionError.hxx>
#include <Standard_CString.hxx>
#include <Standard_ctype.hxx>
#include <Standard_DefineHandle.hxx>
#include <Standard_DimensionError.hxx>
#include <Standard_DimensionMismatch.hxx>
#include <Standard_DivideByZero.hxx>
#include <Standard_DomainError.hxx>
#include <Standard_ErrorHandler.hxx>
#include <Standard_ErrorHandlerCallback.hxx>
#include <Standard_ExtCharacter.hxx>
#include <Standard_ExtString.hxx>
#include <Standard_Failure.hxx>
#include <Standard_GUID.hxx>
#include <Standard_HandlerStatus.hxx>
#include <Standard_ImmutableObject.hxx>
#include <Standard_Integer.hxx>
#include <Standard_InternalType.hxx>
#include <Standard_IStream.hxx>
#include <Standard_JmpBuf.hxx>
#include <Standard_KindOfType.hxx>
#include <Standard_LicenseError.hxx>
#include <Standard_LicenseNotFound.hxx>
#include <Standard_Macro.hxx>
#include <Standard_math.hxx>
#include <Standard_MMgrOpt.hxx>
#include <Standard_MMgrRaw.hxx>
#include <Standard_MMgrRoot.hxx>
#include <Standard_MultiplyDefined.hxx>
#include <Standard_Mutex.hxx>
#include <Standard_NegativeValue.hxx>
#include <Standard_NoMoreObject.hxx>
#include <Standard_NoSuchObject.hxx>
#include <Standard_NotImplemented.hxx>
#include <Standard_NullObject.hxx>
#include <Standard_NullValue.hxx>
#include <Standard_NumericError.hxx>
#include <Standard_OId.hxx>
#include <Standard_OStream.hxx>
#include <Standard_OutOfMemory.hxx>
#include <Standard_OutOfRange.hxx>
#include <Standard_Overflow.hxx>
#include <Standard_PCharacter.hxx>
#include <Standard_PErrorHandler.hxx>
#include <Standard_Persistent.hxx>
#include <Standard_Persistent_proto.hxx>
#include <Standard_PExtCharacter.hxx>
#include <Standard_PrimitiveTypes.hxx>
#include <Standard_ProgramError.hxx>
#include <Standard_RangeError.hxx>
#include <Standard_Real.hxx>
#include <Standard_ShortReal.hxx>
#include <Standard_Size.hxx>
#include <Standard_SStream.hxx>
#include <Standard_Static.hxx>
#include <Standard_Storable.hxx>
#include <Standard_Stream.hxx>
#include <Standard_String.hxx>
#include <Standard_ThreadId.hxx>
#include <Standard_TooManyUsers.hxx>
#include <Standard_Transient.hxx>
#include <Standard_Type.hxx>
#include <Standard_TypeDef.hxx>
#include <Standard_TypeMismatch.hxx>
#include <Standard_Underflow.hxx>
#include <Standard_UUID.hxx>
#include <Standard_Version.hxx>
#include <Standard_WayOfLife.hxx>
#include <Handle_Standard_AbortiveTransaction.hxx>
#include <Handle_Standard_ConstructionError.hxx>
#include <Handle_Standard_DimensionError.hxx>
#include <Handle_Standard_DimensionMismatch.hxx>
#include <Handle_Standard_DivideByZero.hxx>
#include <Handle_Standard_DomainError.hxx>
#include <Handle_Standard_Failure.hxx>
#include <Handle_Standard_ImmutableObject.hxx>
#include <Handle_Standard_LicenseError.hxx>
#include <Handle_Standard_LicenseNotFound.hxx>
#include <Handle_Standard_MultiplyDefined.hxx>
#include <Handle_Standard_NegativeValue.hxx>
#include <Handle_Standard_NoMoreObject.hxx>
#include <Handle_Standard_NoSuchObject.hxx>
#include <Handle_Standard_NotImplemented.hxx>
#include <Handle_Standard_NullObject.hxx>
#include <Handle_Standard_NullValue.hxx>
#include <Handle_Standard_NumericError.hxx>
#include <Handle_Standard_OutOfMemory.hxx>
#include <Handle_Standard_OutOfRange.hxx>
#include <Handle_Standard_Overflow.hxx>
#include <Handle_Standard_Persistent.hxx>
#include <Handle_Standard_ProgramError.hxx>
#include <Handle_Standard_RangeError.hxx>
#include <Handle_Standard_TooManyUsers.hxx>
#include <Handle_Standard_Transient.hxx>
#include <Handle_Standard_Type.hxx>
#include <Handle_Standard_TypeMismatch.hxx>
#include <Handle_Standard_Underflow.hxx>
#include <GeomAbs_BSplKnotDistribution.hxx>
#include <GeomAbs_CurveForm.hxx>
#include <GeomAbs_CurveType.hxx>
#include <GeomAbs_IsoType.hxx>
#include <GeomAbs_JoinType.hxx>
#include <GeomAbs_Shape.hxx>
#include <GeomAbs_SurfaceForm.hxx>
#include <GeomAbs_SurfaceType.hxx>
#include <GeomAbs_UVSense.hxx>
#include <GeomFill_ApproxStyle.hxx>
#include <GeomFill_AppSurf.hxx>
#include <GeomFill_AppSweep.hxx>
#include <GeomFill_Array1OfLocationLaw.hxx>
#include <GeomFill_Array1OfSectionLaw.hxx>
#include <GeomFill_BezierCurves.hxx>
#include <GeomFill_Boundary.hxx>
#include <GeomFill_BoundWithSurf.hxx>
#include <GeomFill_BSplineCurves.hxx>
#include <GeomFill_CircularBlendFunc.hxx>
#include <GeomFill_ConstantBiNormal.hxx>
#include <GeomFill_ConstrainedFilling.hxx>
#include <GeomFill_Coons.hxx>
#include <GeomFill_CoonsAlgPatch.hxx>
#include <GeomFill_CornerState.hxx>
#include <GeomFill_CorrectedFrenet.hxx>
#include <GeomFill_CurveAndTrihedron.hxx>
#include <GeomFill_Curved.hxx>
#include <GeomFill_Darboux.hxx>
#include <GeomFill_DegeneratedBound.hxx>
#include <GeomFill_DraftTrihedron.hxx>
#include <GeomFill_EvolvedSection.hxx>
#include <GeomFill_Filling.hxx>
#include <GeomFill_FillingStyle.hxx>
#include <GeomFill_Fixed.hxx>
#include <GeomFill_Frenet.hxx>
#include <GeomFill_FunctionDraft.hxx>
#include <GeomFill_FunctionGuide.hxx>
#include <GeomFill_Generator.hxx>
#include <GeomFill_GuideTrihedronAC.hxx>
#include <GeomFill_GuideTrihedronPlan.hxx>
#include <GeomFill_HArray1OfLocationLaw.hxx>
#include <GeomFill_HArray1OfSectionLaw.hxx>
#include <GeomFill_Line.hxx>
#include <GeomFill_LocationDraft.hxx>
#include <GeomFill_LocationGuide.hxx>
#include <GeomFill_LocationLaw.hxx>
#include <GeomFill_LocFunction.hxx>
#include <GeomFill_NSections.hxx>
#include <GeomFill_Pipe.hxx>
#include <GeomFill_PipeError.hxx>
#include <GeomFill_PlanFunc.hxx>
#include <GeomFill_PolynomialConvertor.hxx>
#include <GeomFill_Profiler.hxx>
#include <GeomFill_QuasiAngularConvertor.hxx>
#include <GeomFill_SectionGenerator.hxx>
#include <GeomFill_SectionLaw.hxx>
#include <GeomFill_SectionPlacement.hxx>
#include <GeomFill_SequenceNodeOfSequenceOfCurve.hxx>
#include <GeomFill_SequenceNodeOfSequenceOfTrsf.hxx>
#include <GeomFill_SequenceOfCurve.hxx>
#include <GeomFill_SequenceOfTrsf.hxx>
#include <GeomFill_SimpleBound.hxx>
#include <GeomFill_SnglrFunc.hxx>
#include <GeomFill_Stretch.hxx>
#include <GeomFill_Sweep.hxx>
#include <GeomFill_SweepFunction.hxx>
#include <GeomFill_SweepSectionGenerator.hxx>
#include <GeomFill_Tensor.hxx>
#include <GeomFill_TgtField.hxx>
#include <GeomFill_TgtOnCoons.hxx>
#include <GeomFill_Trihedron.hxx>
#include <GeomFill_TrihedronLaw.hxx>
#include <GeomFill_TrihedronWithGuide.hxx>
#include <GeomFill_UniformSection.hxx>
#include <Handle_GeomFill_Boundary.hxx>
#include <Handle_GeomFill_BoundWithSurf.hxx>
#include <Handle_GeomFill_CircularBlendFunc.hxx>
#include <Handle_GeomFill_ConstantBiNormal.hxx>
#include <Handle_GeomFill_CoonsAlgPatch.hxx>
#include <Handle_GeomFill_CorrectedFrenet.hxx>
#include <Handle_GeomFill_CurveAndTrihedron.hxx>
#include <Handle_GeomFill_Darboux.hxx>
#include <Handle_GeomFill_DegeneratedBound.hxx>
#include <Handle_GeomFill_DraftTrihedron.hxx>
#include <Handle_GeomFill_EvolvedSection.hxx>
#include <Handle_GeomFill_Fixed.hxx>
#include <Handle_GeomFill_Frenet.hxx>
#include <Handle_GeomFill_GuideTrihedronAC.hxx>
#include <Handle_GeomFill_GuideTrihedronPlan.hxx>
#include <Handle_GeomFill_HArray1OfLocationLaw.hxx>
#include <Handle_GeomFill_HArray1OfSectionLaw.hxx>
#include <Handle_GeomFill_Line.hxx>
#include <Handle_GeomFill_LocationDraft.hxx>
#include <Handle_GeomFill_LocationGuide.hxx>
#include <Handle_GeomFill_LocationLaw.hxx>
#include <Handle_GeomFill_NSections.hxx>
#include <Handle_GeomFill_SectionLaw.hxx>
#include <Handle_GeomFill_SequenceNodeOfSequenceOfCurve.hxx>
#include <Handle_GeomFill_SequenceNodeOfSequenceOfTrsf.hxx>
#include <Handle_GeomFill_SimpleBound.hxx>
#include <Handle_GeomFill_SweepFunction.hxx>
#include <Handle_GeomFill_TgtField.hxx>
#include <Handle_GeomFill_TgtOnCoons.hxx>
#include <Handle_GeomFill_TrihedronLaw.hxx>
#include <Handle_GeomFill_TrihedronWithGuide.hxx>
#include <Handle_GeomFill_UniformSection.hxx>
#include <AppParCurves_Array1OfConstraintCouple.hxx>
#include <AppParCurves_Array1OfMultiBSpCurve.hxx>
#include <AppParCurves_Array1OfMultiCurve.hxx>
#include <AppParCurves_Array1OfMultiPoint.hxx>
#include <AppParCurves_Constraint.hxx>
#include <AppParCurves_ConstraintCouple.hxx>
#include <AppParCurves_HArray1OfConstraintCouple.hxx>
#include <AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include <AppParCurves_HArray1OfMultiCurve.hxx>
#include <AppParCurves_HArray1OfMultiPoint.hxx>
#include <AppParCurves_MultiBSpCurve.hxx>
#include <AppParCurves_MultiCurve.hxx>
#include <AppParCurves_MultiPoint.hxx>
#include <AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve.hxx>
#include <AppParCurves_SequenceNodeOfSequenceOfMultiCurve.hxx>
#include <AppParCurves_SequenceOfMultiBSpCurve.hxx>
#include <AppParCurves_SequenceOfMultiCurve.hxx>
#include <AppParCurves_SmoothCriterion.hxx>
#include <Handle_AppParCurves_HArray1OfConstraintCouple.hxx>
#include <Handle_AppParCurves_HArray1OfMultiBSpCurve.hxx>
#include <Handle_AppParCurves_HArray1OfMultiCurve.hxx>
#include <Handle_AppParCurves_HArray1OfMultiPoint.hxx>
#include <Handle_AppParCurves_SequenceNodeOfSequenceOfMultiBSpCurve.hxx>
#include <Handle_AppParCurves_SequenceNodeOfSequenceOfMultiCurve.hxx>
#include <Handle_AppParCurves_SmoothCriterion.hxx>
%};

%import TCollection.i
%import MMgt.i
%import GeomPlate.i
%import Standard.i
%import GeomAbs.i
%import GeomFill.i
%import AppParCurves.i