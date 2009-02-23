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
%module VrmlConverter

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


%include VrmlConverter_dependencies.i


%include VrmlConverter_headers.i


enum VrmlConverter_TypeOfLight {
	VrmlConverter_NoLight,
	VrmlConverter_DirectionLight,
	VrmlConverter_PointLight,
	VrmlConverter_SpotLight,
	};

enum VrmlConverter_TypeOfCamera {
	VrmlConverter_NoCamera,
	VrmlConverter_PerspectiveCamera,
	VrmlConverter_OrthographicCamera,
	};



%nodefaultctor Handle_VrmlConverter_ShadingAspect;
class Handle_VrmlConverter_ShadingAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_VrmlConverter_ShadingAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect(const Handle_VrmlConverter_ShadingAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect(const VrmlConverter_ShadingAspect *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_ShadingAspect {
	VrmlConverter_ShadingAspect* GetObject() {
	return (VrmlConverter_ShadingAspect*)$self->Access();
	}
};

%nodefaultctor Handle_VrmlConverter_LineAspect;
class Handle_VrmlConverter_LineAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_VrmlConverter_LineAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect(const Handle_VrmlConverter_LineAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect(const VrmlConverter_LineAspect *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_LineAspect {
	VrmlConverter_LineAspect* GetObject() {
	return (VrmlConverter_LineAspect*)$self->Access();
	}
};

%nodefaultctor Handle_VrmlConverter_PointAspect;
class Handle_VrmlConverter_PointAspect : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_VrmlConverter_PointAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect(const Handle_VrmlConverter_PointAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect(const VrmlConverter_PointAspect *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_PointAspect {
	VrmlConverter_PointAspect* GetObject() {
	return (VrmlConverter_PointAspect*)$self->Access();
	}
};

%nodefaultctor Handle_VrmlConverter_Projector;
class Handle_VrmlConverter_Projector : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_VrmlConverter_Projector();
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector();
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector(const Handle_VrmlConverter_Projector &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector(const VrmlConverter_Projector *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Projector const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_Projector {
	VrmlConverter_Projector* GetObject() {
	return (VrmlConverter_Projector*)$self->Access();
	}
};

%nodefaultctor Handle_VrmlConverter_IsoAspect;
class Handle_VrmlConverter_IsoAspect : public Handle_VrmlConverter_LineAspect {
	public:
		%feature("autodoc", "1");
		~Handle_VrmlConverter_IsoAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect();
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect(const Handle_VrmlConverter_IsoAspect &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect(const VrmlConverter_IsoAspect *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_IsoAspect {
	VrmlConverter_IsoAspect* GetObject() {
	return (VrmlConverter_IsoAspect*)$self->Access();
	}
};

%nodefaultctor Handle_VrmlConverter_Drawer;
class Handle_VrmlConverter_Drawer : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_VrmlConverter_Drawer();
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer();
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer(const Handle_VrmlConverter_Drawer &aHandle);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer(const VrmlConverter_Drawer *anItem);
		%feature("autodoc", "1");
		Handle_VrmlConverter_Drawer const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_VrmlConverter_Drawer {
	VrmlConverter_Drawer* GetObject() {
	return (VrmlConverter_Drawer*)$self->Access();
	}
};

%nodefaultctor VrmlConverter_WFShape;
class VrmlConverter_WFShape {
	public:
		%feature("autodoc", "1");
		~VrmlConverter_WFShape();
		%feature("autodoc", "1");
		VrmlConverter_WFShape();
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, const TopoDS_Shape &aShape, const Handle_VrmlConverter_Drawer &aDrawer);

};

%nodefaultctor VrmlConverter_WFDeflectionShape;
class VrmlConverter_WFDeflectionShape {
	public:
		%feature("autodoc", "1");
		~VrmlConverter_WFDeflectionShape();
		%feature("autodoc", "1");
		VrmlConverter_WFDeflectionShape();
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, const TopoDS_Shape &aShape, const Handle_VrmlConverter_Drawer &aDrawer);

};

%nodefaultctor VrmlConverter_LineAspect;
class VrmlConverter_LineAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_LineAspect();
		%feature("autodoc", "1");
		VrmlConverter_LineAspect(const Handle_Vrml_Material &aMaterial, const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		void SetMaterial(const Handle_Vrml_Material &aMaterial);
		%feature("autodoc", "1");
		Handle_Vrml_Material Material() const;
		%feature("autodoc", "1");
		void SetHasMaterial(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean HasMaterial() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~VrmlConverter_LineAspect();

};
%extend VrmlConverter_LineAspect {
	Handle_VrmlConverter_LineAspect GetHandle() {
	return *(Handle_VrmlConverter_LineAspect*) &$self;
	}
};

%nodefaultctor VrmlConverter_WFRestrictedFace;
class VrmlConverter_WFRestrictedFace {
	public:
		%feature("autodoc", "1");
		~VrmlConverter_WFRestrictedFace();
		%feature("autodoc", "1");
		VrmlConverter_WFRestrictedFace();
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void AddUIso(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void AddVIso(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Standard_Boolean DrawUIso, const Standard_Boolean DrawVIso, const Standard_Integer NBUiso, const Standard_Integer NBViso, const Handle_VrmlConverter_Drawer &aDrawer);

};

%nodefaultctor VrmlConverter_ShadedShape;
class VrmlConverter_ShadedShape {
	public:
		%feature("autodoc", "1");
		~VrmlConverter_ShadedShape();
		%feature("autodoc", "1");
		VrmlConverter_ShadedShape();
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, const TopoDS_Shape &aShape, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void ComputeNormal(const TopoDS_Face &aFace, Poly_Connect & pc, TColgp_Array1OfDir & Nor);

};

%nodefaultctor VrmlConverter_Projector;
class VrmlConverter_Projector : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_Projector(const TopTools_Array1OfShape &Shapes, const Quantity_Length Focus, const Quantity_Length DX, const Quantity_Length DY, const Quantity_Length DZ, const Quantity_Length XUp, const Quantity_Length YUp, const Quantity_Length ZUp, const VrmlConverter_TypeOfCamera Camera=VrmlConverter_NoCamera, const VrmlConverter_TypeOfLight Light=VrmlConverter_NoLight);
		%feature("autodoc", "1");
		void SetCamera(const VrmlConverter_TypeOfCamera aCamera);
		%feature("autodoc", "1");
		VrmlConverter_TypeOfCamera Camera() const;
		%feature("autodoc", "1");
		void SetLight(const VrmlConverter_TypeOfLight aLight);
		%feature("autodoc", "1");
		VrmlConverter_TypeOfLight Light() const;
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream) const;
		%feature("autodoc", "1");
		HLRAlgo_Projector Projector() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~VrmlConverter_Projector();

};
%extend VrmlConverter_Projector {
	Handle_VrmlConverter_Projector GetHandle() {
	return *(Handle_VrmlConverter_Projector*) &$self;
	}
};

%nodefaultctor VrmlConverter_IsoAspect;
class VrmlConverter_IsoAspect : public VrmlConverter_LineAspect {
	public:
		%feature("autodoc", "1");
		VrmlConverter_IsoAspect();
		%feature("autodoc", "1");
		VrmlConverter_IsoAspect(const Handle_Vrml_Material &aMaterial, const Standard_Boolean OnOff, const Standard_Integer aNumber);
		%feature("autodoc", "1");
		void SetNumber(const Standard_Integer aNumber);
		%feature("autodoc", "1");
		Standard_Integer Number() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~VrmlConverter_IsoAspect();

};
%extend VrmlConverter_IsoAspect {
	Handle_VrmlConverter_IsoAspect GetHandle() {
	return *(Handle_VrmlConverter_IsoAspect*) &$self;
	}
};

%nodefaultctor VrmlConverter_WFDeflectionRestrictedFace;
class VrmlConverter_WFDeflectionRestrictedFace {
	public:
		%feature("autodoc", "1");
		~VrmlConverter_WFDeflectionRestrictedFace();
		%feature("autodoc", "1");
		VrmlConverter_WFDeflectionRestrictedFace();
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void AddUIso(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void AddVIso(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, const Handle_BRepAdaptor_HSurface &aFace, const Standard_Boolean DrawUIso, const Standard_Boolean DrawVIso, const Quantity_Length Deflection, const Standard_Integer NBUiso, const Standard_Integer NBViso, const Handle_VrmlConverter_Drawer &aDrawer);

};

%nodefaultctor VrmlConverter_Curve;
class VrmlConverter_Curve {
	public:
		%feature("autodoc", "1");
		~VrmlConverter_Curve();
		%feature("autodoc", "1");
		VrmlConverter_Curve();
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &aCurve, const Handle_VrmlConverter_Drawer &aDrawer, Standard_OStream & anOStream);
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &aCurve, const Standard_Real U1, const Standard_Real U2, const Handle_VrmlConverter_Drawer &aDrawer, Standard_OStream & anOStream);
		%feature("autodoc", "1");
		void Add(const Adaptor3d_Curve &aCurve, const Standard_Real U1, const Standard_Real U2, Standard_OStream & anOStream, const Standard_Integer aNbPoints);

};

%nodefaultctor VrmlConverter_PointAspect;
class VrmlConverter_PointAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_PointAspect();
		%feature("autodoc", "1");
		VrmlConverter_PointAspect(const Handle_Vrml_Material &aMaterial, const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		void SetMaterial(const Handle_Vrml_Material &aMaterial);
		%feature("autodoc", "1");
		Handle_Vrml_Material Material() const;
		%feature("autodoc", "1");
		void SetHasMaterial(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean HasMaterial() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~VrmlConverter_PointAspect();

};
%extend VrmlConverter_PointAspect {
	Handle_VrmlConverter_PointAspect GetHandle() {
	return *(Handle_VrmlConverter_PointAspect*) &$self;
	}
};

%nodefaultctor VrmlConverter_Drawer;
class VrmlConverter_Drawer : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_Drawer();
		%feature("autodoc", "1");
		void SetTypeOfDeflection(const Aspect_TypeOfDeflection aTypeOfDeflection);
		%feature("autodoc", "1");
		Aspect_TypeOfDeflection TypeOfDeflection() const;
		%feature("autodoc", "1");
		void SetMaximalChordialDeviation(const Quantity_Length aChordialDeviation);
		%feature("autodoc", "1");
		Quantity_Length MaximalChordialDeviation() const;
		%feature("autodoc", "1");
		void SetDeviationCoefficient(const Standard_Real aCoefficient);
		%feature("autodoc", "1");
		Standard_Real DeviationCoefficient() const;
		%feature("autodoc", "1");
		void SetDiscretisation(const Standard_Integer d);
		%feature("autodoc", "1");
		Standard_Integer Discretisation() const;
		%feature("autodoc", "1");
		void SetMaximalParameterValue(const Standard_Real Value);
		%feature("autodoc", "1");
		Standard_Real MaximalParameterValue() const;
		%feature("autodoc", "1");
		void SetIsoOnPlane(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean IsoOnPlane() const;
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect UIsoAspect();
		%feature("autodoc", "1");
		void SetUIsoAspect(const Handle_VrmlConverter_IsoAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_IsoAspect VIsoAspect();
		%feature("autodoc", "1");
		void SetVIsoAspect(const Handle_VrmlConverter_IsoAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect FreeBoundaryAspect();
		%feature("autodoc", "1");
		void SetFreeBoundaryAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		void SetFreeBoundaryDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean FreeBoundaryDraw() const;
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect WireAspect();
		%feature("autodoc", "1");
		void SetWireAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		void SetWireDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean WireDraw() const;
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect UnFreeBoundaryAspect();
		%feature("autodoc", "1");
		void SetUnFreeBoundaryAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		void SetUnFreeBoundaryDraw(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean UnFreeBoundaryDraw() const;
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect LineAspect();
		%feature("autodoc", "1");
		void SetLineAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_PointAspect PointAspect();
		%feature("autodoc", "1");
		void SetPointAspect(const Handle_VrmlConverter_PointAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_ShadingAspect ShadingAspect();
		%feature("autodoc", "1");
		void SetShadingAspect(const Handle_VrmlConverter_ShadingAspect &anAspect);
		%feature("autodoc", "1");
		Standard_Boolean DrawHiddenLine() const;
		%feature("autodoc", "1");
		void EnableDrawHiddenLine();
		%feature("autodoc", "1");
		void DisableDrawHiddenLine();
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect HiddenLineAspect();
		%feature("autodoc", "1");
		void SetHiddenLineAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		Handle_VrmlConverter_LineAspect SeenLineAspect();
		%feature("autodoc", "1");
		void SetSeenLineAspect(const Handle_VrmlConverter_LineAspect &anAspect);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~VrmlConverter_Drawer();

};
%extend VrmlConverter_Drawer {
	Handle_VrmlConverter_Drawer GetHandle() {
	return *(Handle_VrmlConverter_Drawer*) &$self;
	}
};

%nodefaultctor VrmlConverter_DeflectionCurve;
class VrmlConverter_DeflectionCurve {
	public:
		%feature("autodoc", "1");
		~VrmlConverter_DeflectionCurve();
		%feature("autodoc", "1");
		VrmlConverter_DeflectionCurve();
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Standard_Real U1, const Standard_Real U2, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Standard_Real aDeflection, const Standard_Real aLimit);
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Standard_Real aDeflection, const Handle_VrmlConverter_Drawer &aDrawer);
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, Adaptor3d_Curve & aCurve, const Standard_Real U1, const Standard_Real U2, const Standard_Real aDeflection);

};

%nodefaultctor VrmlConverter_ShadingAspect;
class VrmlConverter_ShadingAspect : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		VrmlConverter_ShadingAspect();
		%feature("autodoc", "1");
		void SetFrontMaterial(const Handle_Vrml_Material &aMaterial);
		%feature("autodoc", "1");
		Handle_Vrml_Material FrontMaterial() const;
		%feature("autodoc", "1");
		void SetShapeHints(const Vrml_ShapeHints &aShapeHints);
		%feature("autodoc", "1");
		Vrml_ShapeHints ShapeHints() const;
		%feature("autodoc", "1");
		void SetHasNormals(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean HasNormals() const;
		%feature("autodoc", "1");
		void SetHasMaterial(const Standard_Boolean OnOff);
		%feature("autodoc", "1");
		Standard_Boolean HasMaterial() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~VrmlConverter_ShadingAspect();

};
%extend VrmlConverter_ShadingAspect {
	Handle_VrmlConverter_ShadingAspect GetHandle() {
	return *(Handle_VrmlConverter_ShadingAspect*) &$self;
	}
};

%nodefaultctor VrmlConverter_HLRShape;
class VrmlConverter_HLRShape {
	public:
		%feature("autodoc", "1");
		~VrmlConverter_HLRShape();
		%feature("autodoc", "1");
		VrmlConverter_HLRShape();
		%feature("autodoc", "1");
		void Add(Standard_OStream & anOStream, const TopoDS_Shape &aShape, const Handle_VrmlConverter_Drawer &aDrawer, const Handle_VrmlConverter_Projector &aProjector);

};