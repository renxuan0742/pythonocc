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
%module ShapeAnalysis

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i

#ifndef _Standard_TypeDef_HeaderFile
#define _Standard_TypeDef_HeaderFile
#define Standard_False (Standard_Boolean) 0
#define Standard_True  (Standard_Boolean) 1
#endif

/*
Exception handling
*/
%{#include <Standard_Failure.hxx>%}
%exception
{
    try
    {
        $action
    } 
    catch(Standard_Failure)
    {
        SWIG_exception(SWIG_RuntimeError,Standard_Failure::Caught()->DynamicType()->Name());
    }
}

/*
Standard_Real & function transformation
*/
%typemap(argout) Standard_Real &OutValue {
    PyObject *o, *o2, *o3;
    o = PyFloat_FromDouble(*$1);
    if ((!$result) || ($result == Py_None)) {
        $result = o;
    } else {
        if (!PyTuple_Check($result)) {
            PyObject *o2 = $result;
            $result = PyTuple_New(1);
            PyTuple_SetItem($result,0,o2);
        }
        o3 = PyTuple_New(1);
        PyTuple_SetItem(o3,0,o);
        o2 = $result;
        $result = PySequence_Concat(o2,o3);
        Py_DECREF(o2);
        Py_DECREF(o3);
    }
}

%typemap(in,numinputs=0) Standard_Real &OutValue(Standard_Real temp) {
    $1 = &temp;
}


%include ShapeAnalysis_dependencies.i


%include ShapeAnalysis_headers.i

typedef NCollection_UBTree<int, Bnd_Box> ShapeAnalysis_BoxBndTree;



%nodefaultctor Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds;
class Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds(const Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds(const ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds {
	ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds* GetObject() {
	return (ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeAnalysis_FreeBoundData;
class Handle_ShapeAnalysis_FreeBoundData : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_FreeBoundData();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData(const Handle_ShapeAnalysis_FreeBoundData &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData(const ShapeAnalysis_FreeBoundData *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_FreeBoundData {
	ShapeAnalysis_FreeBoundData* GetObject() {
	return (ShapeAnalysis_FreeBoundData*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeAnalysis_Wire;
class Handle_ShapeAnalysis_Wire : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_Wire();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Wire();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Wire(const Handle_ShapeAnalysis_Wire &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Wire(const ShapeAnalysis_Wire *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Wire const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_Wire {
	ShapeAnalysis_Wire* GetObject() {
	return (ShapeAnalysis_Wire*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeAnalysis_TransferParameters;
class Handle_ShapeAnalysis_TransferParameters : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_TransferParameters();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParameters();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParameters(const Handle_ShapeAnalysis_TransferParameters &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParameters(const ShapeAnalysis_TransferParameters *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParameters const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_TransferParameters {
	ShapeAnalysis_TransferParameters* GetObject() {
	return (ShapeAnalysis_TransferParameters*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeAnalysis_TransferParametersProj;
class Handle_ShapeAnalysis_TransferParametersProj : public Handle_ShapeAnalysis_TransferParameters {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_TransferParametersProj();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParametersProj();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParametersProj(const Handle_ShapeAnalysis_TransferParametersProj &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParametersProj(const ShapeAnalysis_TransferParametersProj *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_TransferParametersProj const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_TransferParametersProj {
	ShapeAnalysis_TransferParametersProj* GetObject() {
	return (ShapeAnalysis_TransferParametersProj*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal;
class Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal(const Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal(const ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal {
	ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal* GetObject() {
	return (ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeAnalysis_HSequenceOfFreeBounds;
class Handle_ShapeAnalysis_HSequenceOfFreeBounds : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_HSequenceOfFreeBounds();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_HSequenceOfFreeBounds();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_HSequenceOfFreeBounds(const Handle_ShapeAnalysis_HSequenceOfFreeBounds &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_HSequenceOfFreeBounds(const ShapeAnalysis_HSequenceOfFreeBounds *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_HSequenceOfFreeBounds const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_HSequenceOfFreeBounds {
	ShapeAnalysis_HSequenceOfFreeBounds* GetObject() {
	return (ShapeAnalysis_HSequenceOfFreeBounds*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal;
class Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal(const Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal(const ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal {
	ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};

%nodefaultctor Handle_ShapeAnalysis_Surface;
class Handle_ShapeAnalysis_Surface : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_ShapeAnalysis_Surface();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Surface();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Surface(const Handle_ShapeAnalysis_Surface &aHandle);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Surface(const ShapeAnalysis_Surface *anItem);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_Surface const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_ShapeAnalysis_Surface {
	ShapeAnalysis_Surface* GetObject() {
	return (ShapeAnalysis_Surface*)$self->Access();
	}
};

%nodefaultctor ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal;
class ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal();

};
%extend ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal {
	Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_ShapeTolerance;
class ShapeAnalysis_ShapeTolerance {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_ShapeTolerance();
		%feature("autodoc", "1");
		ShapeAnalysis_ShapeTolerance();
		%feature("autodoc", "1");
		Standard_Real Tolerance(const TopoDS_Shape &shape, const Standard_Integer mode, const TopAbs_ShapeEnum type=TopAbs_SHAPE);
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape OverTolerance(const TopoDS_Shape &shape, const Standard_Real value, const TopAbs_ShapeEnum type=TopAbs_SHAPE) const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape InTolerance(const TopoDS_Shape &shape, const Standard_Real valmin, const Standard_Real valmax, const TopAbs_ShapeEnum type=TopAbs_SHAPE) const;
		%feature("autodoc", "1");
		void InitTolerance();
		%feature("autodoc", "1");
		void AddTolerance(const TopoDS_Shape &shape, const TopAbs_ShapeEnum type=TopAbs_SHAPE);
		%feature("autodoc", "1");
		Standard_Real GlobalTolerance(const Standard_Integer mode) const;

};

%nodefaultctor ShapeAnalysis_FreeBounds;
class ShapeAnalysis_FreeBounds {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_FreeBounds();
		%feature("autodoc", "1");
		ShapeAnalysis_FreeBounds();
		%feature("autodoc", "1");
		ShapeAnalysis_FreeBounds(const TopoDS_Shape &shape, const Standard_Real toler, const Standard_Boolean splitclosed=0, const Standard_Boolean splitopen=1);
		%feature("autodoc", "1");
		ShapeAnalysis_FreeBounds(const TopoDS_Shape &shape, const Standard_Boolean splitclosed=0, const Standard_Boolean splitopen=1);
		%feature("autodoc", "1");
		const TopoDS_Compound & GetClosedWires() const;
		%feature("autodoc", "1");
		const TopoDS_Compound & GetOpenWires() const;
		%feature("autodoc", "1");
		void ConnectEdgesToWires(Handle_TopTools_HSequenceOfShape & edges, const Standard_Real toler, const Standard_Boolean shared, Handle_TopTools_HSequenceOfShape & wires);
		%feature("autodoc", "1");
		void ConnectWiresToWires(Handle_TopTools_HSequenceOfShape & iwires, const Standard_Real toler, const Standard_Boolean shared, Handle_TopTools_HSequenceOfShape & owires);
		%feature("autodoc", "1");
		void ConnectWiresToWires(Handle_TopTools_HSequenceOfShape & iwires, const Standard_Real toler, const Standard_Boolean shared, Handle_TopTools_HSequenceOfShape & owires, TopTools_DataMapOfShapeShape & vertices);
		%feature("autodoc", "1");
		void SplitWires(const Handle_TopTools_HSequenceOfShape &wires, const Standard_Real toler, const Standard_Boolean shared, Handle_TopTools_HSequenceOfShape & closed, Handle_TopTools_HSequenceOfShape & open);
		%feature("autodoc", "1");
		void DispatchWires(const Handle_TopTools_HSequenceOfShape &wires, TopoDS_Compound & closed, TopoDS_Compound & open);

};

%nodefaultctor ShapeAnalysis_TransferParameters;
class ShapeAnalysis_TransferParameters : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_TransferParameters();
		%feature("autodoc", "1");
		ShapeAnalysis_TransferParameters(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void SetMaxTolerance(const Standard_Real maxtol);
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HSequenceOfReal Perform(const Handle_TColStd_HSequenceOfReal &Params, const Standard_Boolean To2d);
		%feature("autodoc", "1");
		virtual		Standard_Real Perform(const Standard_Real Param, const Standard_Boolean To2d);
		%feature("autodoc", "1");
		virtual		void TransferRange(TopoDS_Edge & newEdge, const Standard_Real prevPar, const Standard_Real currPar, const Standard_Boolean To2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSameRange() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_TransferParameters();

};
%extend ShapeAnalysis_TransferParameters {
	Handle_ShapeAnalysis_TransferParameters GetHandle() {
	return *(Handle_ShapeAnalysis_TransferParameters*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_ShapeContents;
class ShapeAnalysis_ShapeContents {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_ShapeContents();
		%feature("autodoc", "1");
		ShapeAnalysis_ShapeContents();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void ClearFlags();
		%feature("autodoc", "1");
		void Perform(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Standard_Boolean & ModifyBigSplineMode();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyIndirectMode();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyOffestSurfaceMode();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyTrimmed3dMode();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyOffsetCurveMode();
		%feature("autodoc", "1");
		Standard_Boolean & ModifyTrimmed2dMode();
		%feature("autodoc", "1");
		Standard_Integer NbSolids() const;
		%feature("autodoc", "1");
		Standard_Integer NbShells() const;
		%feature("autodoc", "1");
		Standard_Integer NbFaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbWires() const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		Standard_Integer NbSolidsWithVoids() const;
		%feature("autodoc", "1");
		Standard_Integer NbBigSplines() const;
		%feature("autodoc", "1");
		Standard_Integer NbC0Surfaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbC0Curves() const;
		%feature("autodoc", "1");
		Standard_Integer NbOffsetSurf() const;
		%feature("autodoc", "1");
		Standard_Integer NbIndirectSurf() const;
		%feature("autodoc", "1");
		Standard_Integer NbOffsetCurves() const;
		%feature("autodoc", "1");
		Standard_Integer NbTrimmedCurve2d() const;
		%feature("autodoc", "1");
		Standard_Integer NbTrimmedCurve3d() const;
		%feature("autodoc", "1");
		Standard_Integer NbBSplibeSurf() const;
		%feature("autodoc", "1");
		Standard_Integer NbBezierSurf() const;
		%feature("autodoc", "1");
		Standard_Integer NbTrimSurf() const;
		%feature("autodoc", "1");
		Standard_Integer NbWireWitnSeam() const;
		%feature("autodoc", "1");
		Standard_Integer NbWireWithSevSeams() const;
		%feature("autodoc", "1");
		Standard_Integer NbFaceWithSevWires() const;
		%feature("autodoc", "1");
		Standard_Integer NbNoPCurve() const;
		%feature("autodoc", "1");
		Standard_Integer NbFreeFaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbFreeWires() const;
		%feature("autodoc", "1");
		Standard_Integer NbFreeEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbSharedSolids() const;
		%feature("autodoc", "1");
		Standard_Integer NbSharedShells() const;
		%feature("autodoc", "1");
		Standard_Integer NbSharedFaces() const;
		%feature("autodoc", "1");
		Standard_Integer NbSharedWires() const;
		%feature("autodoc", "1");
		Standard_Integer NbSharedFreeWires() const;
		%feature("autodoc", "1");
		Standard_Integer NbSharedFreeEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbSharedEdges() const;
		%feature("autodoc", "1");
		Standard_Integer NbSharedVertices() const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape BigSplineSec() const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape IndirectSec() const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape OffsetSurfaceSec() const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape Trimmed3dSec() const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape OffsetCurveSec() const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape Trimmed2dSec() const;

};

%nodefaultctor ShapeAnalysis_Curve;
class ShapeAnalysis_Curve {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_Curve();
		%feature("autodoc", "1");
		ShapeAnalysis_Curve();
		%feature("autodoc", "1");
		Standard_Real Project(const Handle_Geom_Curve &C3D, const gp_Pnt &P3D, const Standard_Real preci, gp_Pnt & proj, Standard_Real &OutValue, const Standard_Boolean AdjustToEnds=1) const;
		%feature("autodoc", "1");
		Standard_Real Project(const Adaptor3d_Curve &C3D, const gp_Pnt &P3D, const Standard_Real preci, gp_Pnt & proj, Standard_Real &OutValue, const Standard_Boolean AdjustToEnds=1) const;
		%feature("autodoc", "1");
		Standard_Real Project(const Handle_Geom_Curve &C3D, const gp_Pnt &P3D, const Standard_Real preci, gp_Pnt & proj, Standard_Real &OutValue, const Standard_Real cf, const Standard_Real cl, const Standard_Boolean AdjustToEnds=1) const;
		%feature("autodoc", "1");
		Standard_Real ProjectAct(const Adaptor3d_Curve &C3D, const gp_Pnt &P3D, const Standard_Real preci, gp_Pnt & proj, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Real NextProject(const Standard_Real paramPrev, const Handle_Geom_Curve &C3D, const gp_Pnt &P3D, const Standard_Real preci, gp_Pnt & proj, Standard_Real &OutValue, const Standard_Real cf, const Standard_Real cl, const Standard_Boolean AdjustToEnds=1) const;
		%feature("autodoc", "1");
		Standard_Real NextProject(const Standard_Real paramPrev, const Adaptor3d_Curve &C3D, const gp_Pnt &P3D, const Standard_Real preci, gp_Pnt & proj, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean ValidateRange(const Handle_Geom_Curve &Crv, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Real prec) const;
		%feature("autodoc", "1");
		void FillBndBox(const Handle_Geom2d_Curve &C2d, const Standard_Real First, const Standard_Real Last, const Standard_Integer NPoints, const Standard_Boolean Exact, Bnd_Box2d & Box) const;
		%feature("autodoc", "1");
		Standard_Integer SelectForwardSeam(const Handle_Geom2d_Curve &C1, const Handle_Geom2d_Curve &C2) const;
		%feature("autodoc", "1");
		Standard_Boolean IsPlanar(const TColgp_Array1OfPnt &pnts, gp_XYZ & Normal, const Standard_Real preci=0);
		%feature("autodoc", "1");
		Standard_Boolean IsPlanar(const Handle_Geom_Curve &curve, gp_XYZ & Normal, const Standard_Real preci=0);
		%feature("autodoc", "1");
		Standard_Boolean GetSamplePoints(const Handle_Geom2d_Curve &curve, const Standard_Real first, const Standard_Real last, TColgp_SequenceOfPnt2d & seq);
		%feature("autodoc", "1");
		Standard_Boolean GetSamplePoints(const Handle_Geom_Curve &curve, const Standard_Real first, const Standard_Real last, TColgp_SequenceOfPnt & seq);
		%feature("autodoc", "1");
		Standard_Boolean IsClosed(const Handle_Geom_Curve &curve, const Standard_Real preci=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic(const Handle_Geom_Curve &curve);
		%feature("autodoc", "1");
		Standard_Boolean IsPeriodic(const Handle_Geom2d_Curve &curve);

};

%nodefaultctor ShapeAnalysis_Edge;
class ShapeAnalysis_Edge {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_Edge();
		%feature("autodoc", "1");
		ShapeAnalysis_Edge();
		%feature("autodoc", "1");
		Standard_Boolean HasCurve3d(const TopoDS_Edge &edge) const;
		%feature("autodoc", "1");
		Standard_Boolean Curve3d(const TopoDS_Edge &edge, Handle_Geom_Curve & C3d, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean orient=1) const;
		%feature("autodoc", "1");
		Standard_Boolean IsClosed3d(const TopoDS_Edge &edge) const;
		%feature("autodoc", "1");
		Standard_Boolean HasPCurve(const TopoDS_Edge &edge, const TopoDS_Face &face) const;
		%feature("autodoc", "1");
		Standard_Boolean HasPCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location) const;
		%feature("autodoc", "1");
		Standard_Boolean PCurve(const TopoDS_Edge &edge, const TopoDS_Face &face, Handle_Geom2d_Curve & C2d, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean orient=1) const;
		%feature("autodoc", "1");
		Standard_Boolean PCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location, Handle_Geom2d_Curve & C2d, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean orient=1) const;
		%feature("autodoc", "1");
		Standard_Boolean BoundUV(const TopoDS_Edge &edge, const TopoDS_Face &face, gp_Pnt2d & first, gp_Pnt2d & last) const;
		%feature("autodoc", "1");
		Standard_Boolean BoundUV(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location, gp_Pnt2d & first, gp_Pnt2d & last) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSeam(const TopoDS_Edge &edge, const TopoDS_Face &face) const;
		%feature("autodoc", "1");
		Standard_Boolean IsSeam(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location) const;
		%feature("autodoc", "1");
		TopoDS_Vertex FirstVertex(const TopoDS_Edge &edge) const;
		%feature("autodoc", "1");
		TopoDS_Vertex LastVertex(const TopoDS_Edge &edge) const;
		%feature("autodoc", "1");
		Standard_Boolean GetEndTangent2d(const TopoDS_Edge &edge, const TopoDS_Face &face, const Standard_Boolean atEnd, gp_Pnt2d & pos, gp_Vec2d & tang, const Standard_Real dparam=0.0) const;
		%feature("autodoc", "1");
		Standard_Boolean GetEndTangent2d(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location, const Standard_Boolean atEnd, gp_Pnt2d & pos, gp_Vec2d & tang, const Standard_Real dparam=0.0) const;
		%feature("autodoc", "1");
		Standard_Boolean CheckVerticesWithCurve3d(const TopoDS_Edge &edge, const Standard_Real preci=-0x000000001, const Standard_Integer vtx=0);
		%feature("autodoc", "1");
		Standard_Boolean CheckVerticesWithPCurve(const TopoDS_Edge &edge, const TopoDS_Face &face, const Standard_Real preci=-0x000000001, const Standard_Integer vtx=0);
		%feature("autodoc", "1");
		Standard_Boolean CheckVerticesWithPCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location, const Standard_Real preci=-0x000000001, const Standard_Integer vtx=0);
		%feature("autodoc", "1");
		Standard_Boolean CheckVertexTolerance(const TopoDS_Edge &edge, const TopoDS_Face &face, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean CheckVertexTolerance(const TopoDS_Edge &edge, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean CheckCurve3dWithPCurve(const TopoDS_Edge &edge, const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Boolean CheckCurve3dWithPCurve(const TopoDS_Edge &edge, const Handle_Geom_Surface &surface, const TopLoc_Location &location);
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean CheckSameParameter(const TopoDS_Edge &edge, Standard_Real &OutValue, const Standard_Integer NbControl=23);
		%feature("autodoc", "1");
		Standard_Boolean CheckOverlapping(const TopoDS_Edge &theEdge1, const TopoDS_Edge &theEdge2, Standard_Real &OutValue, const Standard_Real theDomainDist=0.0);

};

%nodefaultctor ShapeAnalysis_DataMapIteratorOfDataMapOfShapeReal;
class ShapeAnalysis_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapIteratorOfDataMapOfShapeReal(const ShapeAnalysis_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const ShapeAnalysis_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};

%nodefaultctor ShapeAnalysis_DataMapOfShapeReal;
class ShapeAnalysis_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapOfShapeReal & Assign(const ShapeAnalysis_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~ShapeAnalysis_DataMapOfShapeReal();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Standard_Real &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Standard_Real & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Standard_Real & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Real & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Standard_Real & operator()(const TopoDS_Shape &K);

};

%nodefaultctor ShapeAnalysis;
class ShapeAnalysis {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis();
		%feature("autodoc", "1");
		ShapeAnalysis();
		%feature("autodoc", "1");
		TopoDS_Wire OuterWire(const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Real TotCross2D(const Handle_ShapeExtend_WireData &sewd, const TopoDS_Face &aFace);
		%feature("autodoc", "1");
		Standard_Real ContourArea(const TopoDS_Wire &theWire);
		%feature("autodoc", "1");
		Standard_Boolean IsOuterBound(const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Real AdjustByPeriod(const Standard_Real Val, const Standard_Real ToVal, const Standard_Real Period);
		%feature("autodoc", "1");
		Standard_Real AdjustToPeriod(const Standard_Real Val, const Standard_Real ValMin, const Standard_Real ValMax);
		%feature("autodoc", "1");
		void FindBounds(const TopoDS_Shape &shape, TopoDS_Vertex & V1, TopoDS_Vertex & V2);
		%feature("autodoc", "1");
		void GetFaceUVBounds(const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);

};

%nodefaultctor ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal;
class ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal(const TopoDS_Shape &K, const TColStd_ListOfReal &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		TColStd_ListOfReal & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal();

};
%extend ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal {
	Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal GetHandle() {
	return *(Handle_ShapeAnalysis_DataMapNodeOfDataMapOfShapeListOfReal*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_FreeBoundData;
class ShapeAnalysis_FreeBoundData : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_FreeBoundData();
		%feature("autodoc", "1");
		ShapeAnalysis_FreeBoundData(const TopoDS_Wire &freebound);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void SetFreeBound(const TopoDS_Wire &freebound);
		%feature("autodoc", "1");
		void SetArea(const Standard_Real area);
		%feature("autodoc", "1");
		void SetPerimeter(const Standard_Real perimeter);
		%feature("autodoc", "1");
		void SetRatio(const Standard_Real ratio);
		%feature("autodoc", "1");
		void SetWidth(const Standard_Real width);
		%feature("autodoc", "1");
		void AddNotch(const TopoDS_Wire &notch, const Standard_Real width);
		%feature("autodoc", "1");
		TopoDS_Wire FreeBound() const;
		%feature("autodoc", "1");
		Standard_Real Area() const;
		%feature("autodoc", "1");
		Standard_Real Perimeter() const;
		%feature("autodoc", "1");
		Standard_Real Ratio() const;
		%feature("autodoc", "1");
		Standard_Real Width() const;
		%feature("autodoc", "1");
		Standard_Integer NbNotches() const;
		%feature("autodoc", "1");
		Handle_TopTools_HSequenceOfShape Notches() const;
		%feature("autodoc", "1");
		TopoDS_Wire Notch(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Real NotchWidth(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Real NotchWidth(const TopoDS_Wire &notch) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_FreeBoundData();

};
%extend ShapeAnalysis_FreeBoundData {
	Handle_ShapeAnalysis_FreeBoundData GetHandle() {
	return *(Handle_ShapeAnalysis_FreeBoundData*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_HSequenceOfFreeBounds;
class ShapeAnalysis_HSequenceOfFreeBounds : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_HSequenceOfFreeBounds();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_ShapeAnalysis_FreeBoundData &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_ShapeAnalysis_HSequenceOfFreeBounds &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_ShapeAnalysis_FreeBoundData &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_ShapeAnalysis_HSequenceOfFreeBounds &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_ShapeAnalysis_FreeBoundData &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_ShapeAnalysis_HSequenceOfFreeBounds &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_ShapeAnalysis_FreeBoundData &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_ShapeAnalysis_HSequenceOfFreeBounds &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_HSequenceOfFreeBounds Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_ShapeAnalysis_FreeBoundData &anItem);
		%feature("autodoc", "1");
		const Handle_ShapeAnalysis_FreeBoundData & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const ShapeAnalysis_SequenceOfFreeBounds & Sequence() const;
		%feature("autodoc", "1");
		ShapeAnalysis_SequenceOfFreeBounds & ChangeSequence();
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_HSequenceOfFreeBounds ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_HSequenceOfFreeBounds();

};
%extend ShapeAnalysis_HSequenceOfFreeBounds {
	Handle_ShapeAnalysis_HSequenceOfFreeBounds GetHandle() {
	return *(Handle_ShapeAnalysis_HSequenceOfFreeBounds*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_DataMapOfShapeListOfReal;
class ShapeAnalysis_DataMapOfShapeListOfReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapOfShapeListOfReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapOfShapeListOfReal & Assign(const ShapeAnalysis_DataMapOfShapeListOfReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~ShapeAnalysis_DataMapOfShapeListOfReal();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const TColStd_ListOfReal &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const TColStd_ListOfReal & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const TColStd_ListOfReal & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		TColStd_ListOfReal & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		TColStd_ListOfReal & operator()(const TopoDS_Shape &K);

};

%nodefaultctor ShapeAnalysis_CheckSmallFace;
class ShapeAnalysis_CheckSmallFace {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_CheckSmallFace();
		%feature("autodoc", "1");
		ShapeAnalysis_CheckSmallFace();
		%feature("autodoc", "1");
		Standard_Integer IsSpotFace(const TopoDS_Face &F, gp_Pnt & spot, Standard_Real &OutValue, const Standard_Real tol=-1.0e+0) const;
		%feature("autodoc", "1");
		Standard_Boolean CheckSpotFace(const TopoDS_Face &F, const Standard_Real tol=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean IsStripSupport(const TopoDS_Face &F, const Standard_Real tol=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean CheckStripEdges(const TopoDS_Edge &E1, const TopoDS_Edge &E2, const Standard_Real tol, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Boolean FindStripEdges(const TopoDS_Face &F, TopoDS_Edge & E1, TopoDS_Edge & E2, const Standard_Real tol, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean CheckSingleStrip(const TopoDS_Face &F, TopoDS_Edge & E1, TopoDS_Edge & E2, const Standard_Real tol=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean CheckStripFace(const TopoDS_Face &F, TopoDS_Edge & E1, TopoDS_Edge & E2, const Standard_Real tol=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Integer CheckSplittingVertices(const TopoDS_Face &F, TopTools_DataMapOfShapeListOfShape & MapEdges, ShapeAnalysis_DataMapOfShapeListOfReal & MapParam, TopoDS_Compound & theAllVert);
		%feature("autodoc", "1");
		Standard_Boolean CheckPin(const TopoDS_Face &F, Standard_Integer & whatrow, Standard_Integer & sence);
		%feature("autodoc", "1");
		Standard_Boolean CheckTwisted(const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean CheckPinFace(const TopoDS_Face &F, TopTools_DataMapOfShapeShape & mapEdges, const Standard_Real toler=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Boolean CheckPinEdges(const TopoDS_Edge &theFirstEdge, const TopoDS_Edge &theSecondEdge, const Standard_Real coef1, const Standard_Real coef2, const Standard_Real toler) const;
		%feature("autodoc", "1");
		Standard_Boolean Status(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		void SetTolerance(const Standard_Real tol);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSpot(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusStrip(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusPin(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusTwisted(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSplitVert(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusPinFace(const ShapeExtend_Status status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusPinEdges(const ShapeExtend_Status status) const;

};

%nodefaultctor ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds;
class ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds(const Handle_ShapeAnalysis_FreeBoundData &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds();

};
%extend ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds {
	Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds GetHandle() {
	return *(Handle_ShapeAnalysis_SequenceNodeOfSequenceOfFreeBounds*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_WireVertex;
class ShapeAnalysis_WireVertex {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_WireVertex();
		%feature("autodoc", "1");
		ShapeAnalysis_WireVertex();
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &wire, const Standard_Real preci);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeExtend_WireData &swbd, const Standard_Real preci);
		%feature("autodoc", "1");
		void Load(const TopoDS_Wire &wire);
		%feature("autodoc", "1");
		void Load(const Handle_ShapeExtend_WireData &sbwd);
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real preci);
		%feature("autodoc", "1");
		void Analyze();
		%feature("autodoc", "1");
		void SetSameVertex(const Standard_Integer num);
		%feature("autodoc", "1");
		void SetSameCoords(const Standard_Integer num);
		%feature("autodoc", "1");
		void SetClose(const Standard_Integer num);
		%feature("autodoc", "1");
		void SetEnd(const Standard_Integer num, const gp_XYZ &pos, const Standard_Real ufol);
		%feature("autodoc", "1");
		void SetStart(const Standard_Integer num, const gp_XYZ &pos, const Standard_Real upre);
		%feature("autodoc", "1");
		void SetInters(const Standard_Integer num, const gp_XYZ &pos, const Standard_Real upre, const Standard_Real ufol);
		%feature("autodoc", "1");
		void SetDisjoined(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Real Precision() const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_WireData & WireData() const;
		%feature("autodoc", "1");
		Standard_Integer Status(const Standard_Integer num) const;
		%feature("autodoc", "1");
		gp_XYZ Position(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Real UPrevious(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Real UFollowing(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Integer Data(const Standard_Integer num, gp_XYZ & pos, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		Standard_Integer NextStatus(const Standard_Integer stat, const Standard_Integer num=0) const;
		%feature("autodoc", "1");
		Standard_Integer NextCriter(const Standard_Integer crit, const Standard_Integer num=0) const;

};

%nodefaultctor ShapeAnalysis_SequenceOfFreeBounds;
class ShapeAnalysis_SequenceOfFreeBounds : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_SequenceOfFreeBounds();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~ShapeAnalysis_SequenceOfFreeBounds();
		%feature("autodoc", "1");
		const ShapeAnalysis_SequenceOfFreeBounds & Assign(const ShapeAnalysis_SequenceOfFreeBounds &Other);
		%feature("autodoc", "1");
		void Append(const Handle_ShapeAnalysis_FreeBoundData &T);
		%feature("autodoc", "1");
		void Append(ShapeAnalysis_SequenceOfFreeBounds & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_ShapeAnalysis_FreeBoundData &T);
		%feature("autodoc", "1");
		void Prepend(ShapeAnalysis_SequenceOfFreeBounds & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_ShapeAnalysis_FreeBoundData &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, ShapeAnalysis_SequenceOfFreeBounds & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_ShapeAnalysis_FreeBoundData &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, ShapeAnalysis_SequenceOfFreeBounds & S);
		%feature("autodoc", "1");
		const Handle_ShapeAnalysis_FreeBoundData & First() const;
		%feature("autodoc", "1");
		const Handle_ShapeAnalysis_FreeBoundData & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, ShapeAnalysis_SequenceOfFreeBounds & S);
		%feature("autodoc", "1");
		const Handle_ShapeAnalysis_FreeBoundData & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_ShapeAnalysis_FreeBoundData & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_ShapeAnalysis_FreeBoundData &I);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};

%nodefaultctor ShapeAnalysis_WireOrder;
class ShapeAnalysis_WireOrder {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_WireOrder();
		%feature("autodoc", "1");
		ShapeAnalysis_WireOrder();
		%feature("autodoc", "1");
		ShapeAnalysis_WireOrder(const Standard_Boolean mode3d, const Standard_Real tol);
		%feature("autodoc", "1");
		void SetMode(const Standard_Boolean mode3d, const Standard_Real tol);
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Add(const gp_XYZ &start3d, const gp_XYZ &end3d);
		%feature("autodoc", "1");
		void Add(const gp_XY &start2d, const gp_XY &end2d);
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		Standard_Boolean & KeepLoopsMode();
		%feature("autodoc", "1");
		void Perform(const Standard_Boolean closed=1);
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;
		%feature("autodoc", "1");
		Standard_Integer Status() const;
		%feature("autodoc", "1");
		Standard_Integer Ordered(const Standard_Integer n) const;
		%feature("autodoc", "1");
		void XYZ(const Standard_Integer num, gp_XYZ & start3d, gp_XYZ & end3d) const;
		%feature("autodoc", "1");
		void XY(const Standard_Integer num, gp_XY & start2d, gp_XY & end2d) const;
		%feature("autodoc", "1");
		Standard_Real Gap(const Standard_Integer num=0) const;
		%feature("autodoc", "1");
		void SetChains(const Standard_Real gap);
		%feature("autodoc", "1");
		Standard_Integer NbChains() const;
		%feature("autodoc", "1");
		void Chain(const Standard_Integer num, Standard_Integer & n1, Standard_Integer & n2) const;
		%feature("autodoc", "1");
		void SetCouples(const Standard_Real gap);
		%feature("autodoc", "1");
		Standard_Integer NbCouples() const;
		%feature("autodoc", "1");
		void Couple(const Standard_Integer num, Standard_Integer & n1, Standard_Integer & n2) const;

};

%nodefaultctor ShapeAnalysis_Wire;
class ShapeAnalysis_Wire : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_Wire();
		%feature("autodoc", "1");
		ShapeAnalysis_Wire(const TopoDS_Wire &wire, const TopoDS_Face &face, const Standard_Real precision);
		%feature("autodoc", "1");
		ShapeAnalysis_Wire(const Handle_ShapeExtend_WireData &sbwd, const TopoDS_Face &face, const Standard_Real precision);
		%feature("autodoc", "1");
		void Init(const TopoDS_Wire &wire, const TopoDS_Face &face, const Standard_Real precision);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeExtend_WireData &sbwd, const TopoDS_Face &face, const Standard_Real precision);
		%feature("autodoc", "1");
		void Load(const TopoDS_Wire &wire);
		%feature("autodoc", "1");
		void Load(const Handle_ShapeExtend_WireData &sbwd);
		%feature("autodoc", "1");
		void SetFace(const TopoDS_Face &face);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &surface);
		%feature("autodoc", "1");
		void SetSurface(const Handle_Geom_Surface &surface, const TopLoc_Location &location);
		%feature("autodoc", "1");
		void SetPrecision(const Standard_Real precision);
		%feature("autodoc", "1");
		void ClearStatuses();
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded() const;
		%feature("autodoc", "1");
		Standard_Boolean IsReady() const;
		%feature("autodoc", "1");
		Standard_Real Precision() const;
		%feature("autodoc", "1");
		const Handle_ShapeExtend_WireData & WireData() const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Face() const;
		%feature("autodoc", "1");
		const Handle_ShapeAnalysis_Surface & Surface() const;
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean CheckOrder(const Standard_Boolean isClosed=1, const Standard_Boolean mode3d=1);
		%feature("autodoc", "1");
		Standard_Boolean CheckConnected(const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckSmall(const Standard_Real precsmall=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckEdgeCurves();
		%feature("autodoc", "1");
		Standard_Boolean CheckDegenerated();
		%feature("autodoc", "1");
		Standard_Boolean CheckClosed(const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckSelfIntersection();
		%feature("autodoc", "1");
		Standard_Boolean CheckLacking();
		%feature("autodoc", "1");
		Standard_Boolean CheckGaps3d();
		%feature("autodoc", "1");
		Standard_Boolean CheckGaps2d();
		%feature("autodoc", "1");
		Standard_Boolean CheckCurveGaps();
		%feature("autodoc", "1");
		Standard_Boolean CheckOrder(ShapeAnalysis_WireOrder & sawo, const Standard_Boolean isClosed=1, const Standard_Boolean mode3d=1);
		%feature("autodoc", "1");
		Standard_Boolean CheckConnected(const Standard_Integer num, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckSmall(const Standard_Integer num, const Standard_Real precsmall=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckSeam(const Standard_Integer num, Handle_Geom2d_Curve & C1, Handle_Geom2d_Curve & C2, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean CheckSeam(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean CheckDegenerated(const Standard_Integer num, gp_Pnt2d & dgnr1, gp_Pnt2d & dgnr2);
		%feature("autodoc", "1");
		Standard_Boolean CheckDegenerated(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean CheckGap3d(const Standard_Integer num=0);
		%feature("autodoc", "1");
		Standard_Boolean CheckGap2d(const Standard_Integer num=0);
		%feature("autodoc", "1");
		Standard_Boolean CheckCurveGap(const Standard_Integer num=0);
		%feature("autodoc", "1");
		Standard_Boolean CheckSelfIntersectingEdge(const Standard_Integer num, IntRes2d_SequenceOfIntersectionPoint & points2d, TColgp_SequenceOfPnt & points3d);
		%feature("autodoc", "1");
		Standard_Boolean CheckSelfIntersectingEdge(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean CheckIntersectingEdges(const Standard_Integer num, IntRes2d_SequenceOfIntersectionPoint & points2d, TColgp_SequenceOfPnt & points3d, TColStd_SequenceOfReal & errors);
		%feature("autodoc", "1");
		Standard_Boolean CheckIntersectingEdges(const Standard_Integer num);
		%feature("autodoc", "1");
		Standard_Boolean CheckIntersectingEdges(const Standard_Integer num1, const Standard_Integer num2, IntRes2d_SequenceOfIntersectionPoint & points2d, TColgp_SequenceOfPnt & points3d, TColStd_SequenceOfReal & errors);
		%feature("autodoc", "1");
		Standard_Boolean CheckIntersectingEdges(const Standard_Integer num1, const Standard_Integer num2);
		%feature("autodoc", "1");
		Standard_Boolean CheckLacking(const Standard_Integer num, const Standard_Real Tolerance, gp_Pnt2d & p2d1, gp_Pnt2d & p2d2);
		%feature("autodoc", "1");
		Standard_Boolean CheckLacking(const Standard_Integer num, const Standard_Real Tolerance=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckOuterBound(const Standard_Boolean APIMake=1);
		%feature("autodoc", "1");
		Standard_Boolean CheckNotchedEdges(const Standard_Integer num, Standard_Integer & shortNum, Standard_Real &OutValue, const Standard_Real Tolerance=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckSmallArea(const Standard_Real prec2d=0);
		%feature("autodoc", "1");
		Standard_Boolean CheckShapeConnect(const TopoDS_Shape &shape, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckShapeConnect(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, const TopoDS_Shape &shape, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckLoop(TopTools_IndexedMapOfShape & aMapLoopVertices, TopTools_DataMapOfShapeListOfShape & aMapVertexEdges, TopTools_MapOfShape & aMapSmallEdges, TopTools_MapOfShape & aMapSeemEdges);
		%feature("autodoc", "1");
		Standard_Boolean StatusOrder(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusConnected(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusEdgeCurves(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusDegenerated(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusClosed(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSmall(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusSelfIntersection(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusLacking(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusGaps3d(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusGaps2d(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusCurveGaps(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean StatusLoop(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Boolean LastCheckStatus(const ShapeExtend_Status Status) const;
		%feature("autodoc", "1");
		Standard_Real MinDistance3d() const;
		%feature("autodoc", "1");
		Standard_Real MinDistance2d() const;
		%feature("autodoc", "1");
		Standard_Real MaxDistance3d() const;
		%feature("autodoc", "1");
		Standard_Real MaxDistance2d() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_Wire();

};
%extend ShapeAnalysis_Wire {
	Handle_ShapeAnalysis_Wire GetHandle() {
	return *(Handle_ShapeAnalysis_Wire*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_DataMapIteratorOfDataMapOfShapeListOfReal;
class ShapeAnalysis_DataMapIteratorOfDataMapOfShapeListOfReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_DataMapIteratorOfDataMapOfShapeListOfReal();
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapIteratorOfDataMapOfShapeListOfReal();
		%feature("autodoc", "1");
		ShapeAnalysis_DataMapIteratorOfDataMapOfShapeListOfReal(const ShapeAnalysis_DataMapOfShapeListOfReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const ShapeAnalysis_DataMapOfShapeListOfReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const TColStd_ListOfReal & Value() const;

};

%nodefaultctor ShapeAnalysis_Geom;
class ShapeAnalysis_Geom {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_Geom();
		%feature("autodoc", "1");
		ShapeAnalysis_Geom();
		%feature("autodoc", "1");
		Standard_Boolean NearestPlane(const TColgp_Array1OfPnt &Pnts, gp_Pln & aPln, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Boolean PositionTrsf(const Handle_TColStd_HArray2OfReal &coefs, gp_Trsf & trsf, const Standard_Real unit, const Standard_Real prec);

};

%nodefaultctor ShapeAnalysis_Surface;
class ShapeAnalysis_Surface : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_Surface(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const Handle_Geom_Surface &S);
		%feature("autodoc", "1");
		void Init(const Handle_ShapeAnalysis_Surface &other);
		%feature("autodoc", "1");
		void SetDomain(const Standard_Real U1, const Standard_Real U2, const Standard_Real V1, const Standard_Real V2);
		%feature("autodoc", "1");
		const Handle_Geom_Surface & Surface() const;
		%feature("autodoc", "1");
		const Handle_GeomAdaptor_HSurface & Adaptor3d();
		%feature("autodoc", "1");
		const Handle_GeomAdaptor_HSurface & TrueAdaptor3d() const;
		%feature("autodoc", "1");
		Standard_Real Gap() const;
		%feature("autodoc", "1");
		gp_Pnt Value(const Standard_Real u, const Standard_Real v);
		%feature("autodoc", "1");
		gp_Pnt Value(const gp_Pnt2d &p2d);
		%feature("autodoc", "1");
		Standard_Boolean HasSingularities(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Integer NbSingularities(const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Boolean Singularity(const Standard_Integer num, Standard_Real &OutValue, gp_Pnt & P3d, gp_Pnt2d & firstP2d, gp_Pnt2d & lastP2d, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Boolean & uisodeg);
		%feature("autodoc", "1");
		Standard_Boolean IsDegenerated(const gp_Pnt &P3d, const Standard_Real preci);
		%feature("autodoc", "1");
		Standard_Boolean DegeneratedValues(const gp_Pnt &P3d, const Standard_Real preci, gp_Pnt2d & firstP2d, gp_Pnt2d & lastP2d, Standard_Real &OutValue, Standard_Real &OutValue, const Standard_Boolean forward=1);
		%feature("autodoc", "1");
		Standard_Boolean ProjectDegenerated(const gp_Pnt &P3d, const Standard_Real preci, const gp_Pnt2d &neighbour, gp_Pnt2d & result);
		%feature("autodoc", "1");
		Standard_Boolean ProjectDegenerated(const Standard_Integer nbrPnt, const TColgp_Array1OfPnt &points, TColgp_Array1OfPnt2d & pnt2d, const Standard_Real preci, const Standard_Boolean direct);
		%feature("autodoc", "1");
		Standard_Boolean IsDegenerated(const gp_Pnt2d &p2d1, const gp_Pnt2d &p2d2, const Standard_Real tol, const Standard_Real ratio);
		%feature("autodoc", "1");
		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		void ComputeBoundIsos();
		%feature("autodoc", "1");
		Handle_Geom_Curve UIso(const Standard_Real U);
		%feature("autodoc", "1");
		Handle_Geom_Curve VIso(const Standard_Real V);
		%feature("autodoc", "1");
		Standard_Boolean IsUClosed(const Standard_Real preci=-0x000000001);
		%feature("autodoc", "1");
		Standard_Boolean IsVClosed(const Standard_Real preci=-0x000000001);
		%feature("autodoc", "1");
		gp_Pnt2d ValueOfUV(const gp_Pnt &P3D, const Standard_Real preci);
		%feature("autodoc", "1");
		gp_Pnt2d NextValueOfUV(const gp_Pnt2d &p2dPrev, const gp_Pnt &P3D, const Standard_Real preci, const Standard_Real maxpreci=-1.0e+0);
		%feature("autodoc", "1");
		Standard_Real UVFromIso(const gp_Pnt &P3D, const Standard_Real preci, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real UCloseVal() const;
		%feature("autodoc", "1");
		Standard_Real VCloseVal() const;
		%feature("autodoc", "1");
		const Bnd_Box & GetBoxUF();
		%feature("autodoc", "1");
		const Bnd_Box & GetBoxUL();
		%feature("autodoc", "1");
		const Bnd_Box & GetBoxVF();
		%feature("autodoc", "1");
		const Bnd_Box & GetBoxVL();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_Surface();

};
%extend ShapeAnalysis_Surface {
	Handle_ShapeAnalysis_Surface GetHandle() {
	return *(Handle_ShapeAnalysis_Surface*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_Shell;
class ShapeAnalysis_Shell {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_Shell();
		%feature("autodoc", "1");
		ShapeAnalysis_Shell();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void LoadShells(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		Standard_Boolean CheckOrientedShells(const TopoDS_Shape &shape, const Standard_Boolean alsofree=0);
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded(const TopoDS_Shape &shape) const;
		%feature("autodoc", "1");
		Standard_Integer NbLoaded() const;
		%feature("autodoc", "1");
		TopoDS_Shape Loaded(const Standard_Integer num) const;
		%feature("autodoc", "1");
		Standard_Boolean HasBadEdges() const;
		%feature("autodoc", "1");
		TopoDS_Compound BadEdges() const;
		%feature("autodoc", "1");
		Standard_Boolean HasFreeEdges() const;
		%feature("autodoc", "1");
		TopoDS_Compound FreeEdges() const;
		%feature("autodoc", "1");
		Standard_Boolean HasConnectedEdges() const;

};

%nodefaultctor ShapeAnalysis_TransferParametersProj;
class ShapeAnalysis_TransferParametersProj : public ShapeAnalysis_TransferParameters {
	public:
		%feature("autodoc", "1");
		ShapeAnalysis_TransferParametersProj();
		%feature("autodoc", "1");
		ShapeAnalysis_TransferParametersProj(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		virtual		void Init(const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		virtual		Handle_TColStd_HSequenceOfReal Perform(const Handle_TColStd_HSequenceOfReal &Papams, const Standard_Boolean To2d);
		%feature("autodoc", "1");
		virtual		Standard_Real Perform(const Standard_Real Param, const Standard_Boolean To2d);
		%feature("autodoc", "1");
		Standard_Boolean & ForceProjection();
		%feature("autodoc", "1");
		virtual		void TransferRange(TopoDS_Edge & newEdge, const Standard_Real prevPar, const Standard_Real currPar, const Standard_Boolean Is2d);
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsSameRange() const;
		%feature("autodoc", "1");
		TopoDS_Vertex CopyNMVertex(const TopoDS_Vertex &theVert, const TopoDS_Edge &toedge, const TopoDS_Edge &fromedge);
		%feature("autodoc", "1");
		TopoDS_Vertex CopyNMVertex(const TopoDS_Vertex &theVert, const TopoDS_Face &toFace, const TopoDS_Face &fromFace);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~ShapeAnalysis_TransferParametersProj();

};
%extend ShapeAnalysis_TransferParametersProj {
	Handle_ShapeAnalysis_TransferParametersProj GetHandle() {
	return *(Handle_ShapeAnalysis_TransferParametersProj*) &$self;
	}
};

%nodefaultctor ShapeAnalysis_FreeBoundsProperties;
class ShapeAnalysis_FreeBoundsProperties {
	public:
		%feature("autodoc", "1");
		~ShapeAnalysis_FreeBoundsProperties();
		%feature("autodoc", "1");
		ShapeAnalysis_FreeBoundsProperties();
		%feature("autodoc", "1");
		ShapeAnalysis_FreeBoundsProperties(const TopoDS_Shape &shape, const Standard_Real tolerance, const Standard_Boolean splitclosed=0, const Standard_Boolean splitopen=0);
		%feature("autodoc", "1");
		ShapeAnalysis_FreeBoundsProperties(const TopoDS_Shape &shape, const Standard_Boolean splitclosed=0, const Standard_Boolean splitopen=0);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &shape, const Standard_Real tolerance, const Standard_Boolean splitclosed=0, const Standard_Boolean splitopen=0);
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &shape, const Standard_Boolean splitclosed=0, const Standard_Boolean splitopen=0);
		%feature("autodoc", "1");
		Standard_Boolean Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsLoaded() const;
		%feature("autodoc", "1");
		TopoDS_Shape Shape() const;
		%feature("autodoc", "1");
		Standard_Real Tolerance() const;
		%feature("autodoc", "1");
		Standard_Integer NbFreeBounds() const;
		%feature("autodoc", "1");
		Standard_Integer NbClosedFreeBounds() const;
		%feature("autodoc", "1");
		Standard_Integer NbOpenFreeBounds() const;
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_HSequenceOfFreeBounds ClosedFreeBounds() const;
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_HSequenceOfFreeBounds OpenFreeBounds() const;
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData ClosedFreeBound(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Handle_ShapeAnalysis_FreeBoundData OpenFreeBound(const Standard_Integer index) const;
		%feature("autodoc", "1");
		Standard_Boolean DispatchBounds();
		%feature("autodoc", "1");
		Standard_Boolean CheckContours(const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckNotches(const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckNotches(Handle_ShapeAnalysis_FreeBoundData & fbData, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean CheckNotches(const TopoDS_Wire &freebound, const Standard_Integer num, TopoDS_Wire & notch, Standard_Real &OutValue, const Standard_Real prec=0.0);
		%feature("autodoc", "1");
		Standard_Boolean FillProperties(Handle_ShapeAnalysis_FreeBoundData & fbData, const Standard_Real prec=0.0);

};