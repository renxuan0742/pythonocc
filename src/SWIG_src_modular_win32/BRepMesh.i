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
%module BRepMesh

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


%include BRepMesh_dependencies.i


%include BRepMesh_headers.i

typedef BRepMesh_DiscretRoot * BRepMesh_PDiscretRoot;

enum BRepMesh_FactoryError {
	BRepMesh_FE_NOERROR,
	BRepMesh_FE_LIBRARYNOTFOUND,
	BRepMesh_FE_FUNCTIONNOTFOUND,
	BRepMesh_FE_CANNOTCREATEALGO,
	};

enum BRepMesh_Status {
	BRepMesh_NoError,
	BRepMesh_OpenWire,
	BRepMesh_SelfIntersectingWire,
	BRepMesh_Failure,
	BRepMesh_ReMesh,
	};



%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY;
class Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY(const Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY(const BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY {
	BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun;
class Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun(const Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun(const BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun {
	BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun* GetObject() {
	return (BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_ListNodeOfListOfXY;
class Handle_BRepMesh_ListNodeOfListOfXY : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_ListNodeOfListOfXY();
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY();
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY(const Handle_BRepMesh_ListNodeOfListOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY(const BRepMesh_ListNodeOfListOfXY *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfXY const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_ListNodeOfListOfXY {
	BRepMesh_ListNodeOfListOfXY* GetObject() {
	return (BRepMesh_ListNodeOfListOfXY*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid;
class Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid(const Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid(const BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid {
	BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun;
class Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun(const Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun(const BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun {
	BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun* GetObject() {
	return (BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger;
class Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger(const Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger(const BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger {
	BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_EdgeDiscret;
class Handle_BRepMesh_EdgeDiscret : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_EdgeDiscret();
		%feature("autodoc", "1");
		Handle_BRepMesh_EdgeDiscret();
		%feature("autodoc", "1");
		Handle_BRepMesh_EdgeDiscret(const Handle_BRepMesh_EdgeDiscret &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_EdgeDiscret(const BRepMesh_EdgeDiscret *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_EdgeDiscret const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_EdgeDiscret {
	BRepMesh_EdgeDiscret* GetObject() {
	return (BRepMesh_EdgeDiscret*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_FastDiscret;
class Handle_BRepMesh_FastDiscret : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_FastDiscret();
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret();
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret(const Handle_BRepMesh_FastDiscret &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret(const BRepMesh_FastDiscret *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_FastDiscret const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_FastDiscret {
	BRepMesh_FastDiscret* GetObject() {
	return (BRepMesh_FastDiscret*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger;
class Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger(const Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger(const BRepMesh_DataMapNodeOfDataMapOfVertexInteger *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger {
	BRepMesh_DataMapNodeOfDataMapOfVertexInteger* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfVertexInteger*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal;
class Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal(const Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal(const BRepMesh_DataMapNodeOfDataMapOfShapeReal *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal {
	BRepMesh_DataMapNodeOfDataMapOfShapeReal* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfShapeReal*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_DataStructureOfDelaun;
class Handle_BRepMesh_DataStructureOfDelaun : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun(const Handle_BRepMesh_DataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun(const BRepMesh_DataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataStructureOfDelaun {
	BRepMesh_DataStructureOfDelaun* GetObject() {
	return (BRepMesh_DataStructureOfDelaun*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_ListNodeOfListOfSurfaceGrid;
class Handle_BRepMesh_ListNodeOfListOfSurfaceGrid : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_ListNodeOfListOfSurfaceGrid();
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfSurfaceGrid();
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfSurfaceGrid(const Handle_BRepMesh_ListNodeOfListOfSurfaceGrid &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfSurfaceGrid(const BRepMesh_ListNodeOfListOfSurfaceGrid *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfSurfaceGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_ListNodeOfListOfSurfaceGrid {
	BRepMesh_ListNodeOfListOfSurfaceGrid* GetObject() {
	return (BRepMesh_ListNodeOfListOfSurfaceGrid*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_ListNodeOfListOfVertex;
class Handle_BRepMesh_ListNodeOfListOfVertex : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_ListNodeOfListOfVertex();
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex();
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex(const Handle_BRepMesh_ListNodeOfListOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex(const BRepMesh_ListNodeOfListOfVertex *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_ListNodeOfListOfVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_ListNodeOfListOfVertex {
	BRepMesh_ListNodeOfListOfVertex* GetObject() {
	return (BRepMesh_ListNodeOfListOfVertex*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex;
class Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex(const Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex(const BRepMesh_IndexedMapNodeOfIndexedMapOfVertex *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex {
	BRepMesh_IndexedMapNodeOfIndexedMapOfVertex* GetObject() {
	return (BRepMesh_IndexedMapNodeOfIndexedMapOfVertex*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_SurfaceGrid;
class Handle_BRepMesh_SurfaceGrid : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_SurfaceGrid();
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid();
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid(const Handle_BRepMesh_SurfaceGrid &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid(const BRepMesh_SurfaceGrid *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_SurfaceGrid {
	BRepMesh_SurfaceGrid* GetObject() {
	return (BRepMesh_SurfaceGrid*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace;
class Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace(const Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace(const BRepMesh_DataMapNodeOfDataMapOfIntegerFace *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace {
	BRepMesh_DataMapNodeOfDataMapOfIntegerFace* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfIntegerFace*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_StdMapNodeOfMapOfAsciiString;
class Handle_BRepMesh_StdMapNodeOfMapOfAsciiString : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_StdMapNodeOfMapOfAsciiString();
		%feature("autodoc", "1");
		Handle_BRepMesh_StdMapNodeOfMapOfAsciiString();
		%feature("autodoc", "1");
		Handle_BRepMesh_StdMapNodeOfMapOfAsciiString(const Handle_BRepMesh_StdMapNodeOfMapOfAsciiString &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_StdMapNodeOfMapOfAsciiString(const BRepMesh_StdMapNodeOfMapOfAsciiString *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_StdMapNodeOfMapOfAsciiString const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_StdMapNodeOfMapOfAsciiString {
	BRepMesh_StdMapNodeOfMapOfAsciiString* GetObject() {
	return (BRepMesh_StdMapNodeOfMapOfAsciiString*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret;
class Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret(const Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret(const BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret {
	BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt;
class Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt();
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt(const Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt(const BRepMesh_DataMapNodeOfDataMapOfCouplePnt *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt {
	BRepMesh_DataMapNodeOfDataMapOfCouplePnt* GetObject() {
	return (BRepMesh_DataMapNodeOfDataMapOfCouplePnt*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_HArray1OfVertexOfDelaun;
class Handle_BRepMesh_HArray1OfVertexOfDelaun : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_HArray1OfVertexOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun(const Handle_BRepMesh_HArray1OfVertexOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun(const BRepMesh_HArray1OfVertexOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_HArray1OfVertexOfDelaun const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_HArray1OfVertexOfDelaun {
	BRepMesh_HArray1OfVertexOfDelaun* GetObject() {
	return (BRepMesh_HArray1OfVertexOfDelaun*)$self->Access();
	}
};

%nodefaultctor Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun;
class Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		~Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun(const Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun &aHandle);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun(const BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun *anItem);
		%feature("autodoc", "1");
		Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun {
	BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun* GetObject() {
	return (BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun*)$self->Access();
	}
};

%nodefaultctor BRepMesh_FastDiscret;
class BRepMesh_FastDiscret : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_FastDiscret(const Standard_Real defle, const Standard_Real angle, const Bnd_Box &B, const Standard_Boolean withShare=1, const Standard_Boolean inshape=0, const Standard_Boolean relative=0, const Standard_Boolean shapetrigu=0);
		%feature("autodoc", "1");
		BRepMesh_FastDiscret(const Standard_Real defle, const TopoDS_Shape &shape, const Bnd_Box &B, const Standard_Real angle, const Standard_Boolean withShare=1, const Standard_Boolean inshape=0, const Standard_Boolean relative=0, const Standard_Boolean shapetrigu=0);
		%feature("autodoc", "1");
		void Add(const TopoDS_Shape &shape);
		%feature("autodoc", "1");
		void Add(const TopoDS_Face &face);
		%feature("autodoc", "1");
		Standard_Boolean & InternalVerticesMode();
		%feature("autodoc", "1");
		BRepMesh_Status CurrentFaceStatus() const;
		%feature("autodoc", "1");
		Standard_Boolean Update(const TopoDS_Edge &Edge, const TopoDS_Face &Face, const Handle_Geom2d_Curve &C, const Standard_Real defedge, const Standard_Real first, const Standard_Real last);
		%feature("autodoc", "1");
		Standard_Real Control(const Handle_BRepAdaptor_HSurface &caro, const Standard_Real defface, BRepMesh_ListOfVertex & inter, TColStd_ListOfInteger & badTri, TColStd_ListOfInteger & nulTri, BRepMesh_Delaun & trigu, const Standard_Boolean isfirst);
		%feature("autodoc", "1");
		Standard_Integer Uindex(const MeshShape_SurfacePoint &P) const;
		%feature("autodoc", "1");
		Standard_Integer Vindex(const MeshShape_SurfacePoint &P) const;
		%feature("autodoc", "1");
		void Append(MeshShape_ListOfSurfacePoint & pntsOnSurf, const MeshShape_SurfacePoint &P);
		%feature("autodoc", "1");
		gp_XY FindUV(const TopoDS_Vertex &V, const gp_Pnt2d &XY, const Standard_Integer ip, const Handle_BRepAdaptor_HSurface &S, const Standard_Real mindist);
		%feature("autodoc", "1");
		Standard_Integer NbDomains() const;
		%feature("autodoc", "1");
		const TopoDS_Face & DomainFace(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbTriangles() const;
		%feature("autodoc", "1");
		const BRepMesh_Triangle & Triangle(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbEdges() const;
		%feature("autodoc", "1");
		const BRepMesh_Edge & Edge(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_Integer NbVertices() const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & Vertex(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt & Pnt(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void VerticesOfDomain(const Standard_Integer Index, MeshDS_MapOfInteger & Indices) const;
		%feature("autodoc", "1");
		void EdgesOfDomain(const Standard_Integer Index, MeshDS_MapOfInteger & Indices) const;
		%feature("autodoc", "1");
		void TrianglesOfDomain(const Standard_Integer Index, MeshDS_MapOfInteger & Indices) const;
		%feature("autodoc", "1");
		Standard_Integer NbPoint3d() const;
		%feature("autodoc", "1");
		const gp_Pnt & Point3d(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void Normal(const Standard_Integer Index, gp_Pnt & Pon, gp_Dir & Nor) const;
		%feature("autodoc", "1");
		Handle_BRepMesh_DataStructureOfDelaun Result() const;
		%feature("autodoc", "1");
		Standard_Real GetDeflection() const;
		%feature("autodoc", "1");
		Standard_Real GetAngle() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_FastDiscret();

};
%extend BRepMesh_FastDiscret {
	Handle_BRepMesh_FastDiscret GetHandle() {
	return *(Handle_BRepMesh_FastDiscret*) &$self;
	}
};

%nodefaultctor BRepMesh_DataStructureOfDelaun;
class BRepMesh_DataStructureOfDelaun : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataStructureOfDelaun(const MeshDS_BaseAllocator &theAllocator, const Standard_Integer NodeNumber=100);
		%feature("autodoc", "1");
		Standard_Integer AddNode(const BRepMesh_Vertex &theNode);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & GetNode(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & GetNodeList(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ForseRemoveNode(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ForseRemoveLink(const Standard_Integer Index);
		%feature("autodoc", "1");
		void ReplaceNodes(const BRepMesh_IDMapOfNodeOfDataStructureOfDelaun &NewNodes);
		%feature("autodoc", "1");
		void RemoveNode(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean MoveNode(const Standard_Integer Index, const BRepMesh_Vertex &newNode);
		%feature("autodoc", "1");
		Standard_Integer NbNodes() const;
		%feature("autodoc", "1");
		Standard_Integer AddLink(const BRepMesh_Edge &theLink);
		%feature("autodoc", "1");
		const BRepMesh_Edge & GetLink(const Standard_Integer Index);
		%feature("autodoc", "1");
		void RemoveLink(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean SubstituteLink(const Standard_Integer Index, const BRepMesh_Edge &newLink);
		%feature("autodoc", "1");
		Standard_Integer NbLinks() const;
		%feature("autodoc", "1");
		Standard_Integer AddElement(const BRepMesh_Triangle &theElement);
		%feature("autodoc", "1");
		const BRepMesh_Triangle & GetElement(const Standard_Integer Index);
		%feature("autodoc", "1");
		void RemoveElement(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_Boolean SubstituteElement(const Standard_Integer Index, const BRepMesh_Triangle &newElement);
		%feature("autodoc", "1");
		Standard_Integer NbElements() const;
		%feature("autodoc", "1");
		void NewDomain(const Standard_Integer domain);
		%feature("autodoc", "1");
		void ClearDomain(const Standard_Integer domain);
		%feature("autodoc", "1");
		Standard_Integer IndexOf(const BRepMesh_Vertex &aNode) const;
		%feature("autodoc", "1");
		Standard_Integer IndexOf(const BRepMesh_Edge &aLink) const;
		%feature("autodoc", "1");
		Standard_Integer IndexOf(const BRepMesh_Triangle &anElement) const;
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & LinkNeighboursOf(const Standard_Integer theNode) const;
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & ElemConnectedTo(const Standard_Integer theLink) const;
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & ElemOfDomain(const Standard_Integer theDomain) const;
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & LinkOfDomain(const Standard_Integer theDomain) const;
		%feature("autodoc", "1");
		void DomainList(TColStd_ListOfInteger & theDomains) const;
		%feature("autodoc", "1");
		void ClearDeleted();
		%feature("autodoc", "1");
		void Statistics(Standard_OStream & flot) const;
		%feature("autodoc", "1");
		const MeshDS_BaseAllocator & Allocator() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataStructureOfDelaun();

};
%extend BRepMesh_DataStructureOfDelaun {
	Handle_BRepMesh_DataStructureOfDelaun GetHandle() {
	return *(Handle_BRepMesh_DataStructureOfDelaun*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfShapeSurfaceGrid;
class BRepMesh_DataMapIteratorOfDataMapOfShapeSurfaceGrid : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_DataMapIteratorOfDataMapOfShapeSurfaceGrid();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapeSurfaceGrid();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapeSurfaceGrid(const BRepMesh_DataMapOfShapeSurfaceGrid &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfShapeSurfaceGrid &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Handle_BRepMesh_SurfaceGrid & Value() const;

};

%nodefaultctor BRepMesh_IndexedMapOfVertex;
class BRepMesh_IndexedMapOfVertex : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedMapOfVertex(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_IndexedMapOfVertex & Assign(const BRepMesh_IndexedMapOfVertex &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_IndexedMapOfVertex();
		%feature("autodoc", "1");
		Standard_Integer Add(const BRepMesh_Vertex &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BRepMesh_Vertex &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BRepMesh_Vertex &K) const;

};

%nodefaultctor BRepMesh_ComparatorOfIndexedVertexOfDelaun;
class BRepMesh_ComparatorOfIndexedVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_ComparatorOfIndexedVertexOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_ComparatorOfIndexedVertexOfDelaun(const gp_XY &theDir, const Standard_Real TheTol, const Handle_BRepMesh_DataStructureOfDelaun &HDS);
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const Standard_Integer Left, const Standard_Integer Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const Standard_Integer Left, const Standard_Integer Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const Standard_Integer Left, const Standard_Integer Right) const;

};

%nodefaultctor BRepMesh_NodeHasherOfDataStructureOfDelaun;
class BRepMesh_NodeHasherOfDataStructureOfDelaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_NodeHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_NodeHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const BRepMesh_Vertex &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Vertex &K1, const BRepMesh_Vertex &K2);

};

%nodefaultctor BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun;
class BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun(const BRepMesh_Triangle &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BRepMesh_Triangle & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun();

};
%extend BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun {
	Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun GetHandle() {
	return *(Handle_BRepMesh_IndexedMapNodeOfIMapOfElementOfDataStructureOfDelaun*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY;
class BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfIntegerListOfXY(const BRepMesh_DataMapOfIntegerListOfXY &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfIntegerListOfXY &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const BRepMesh_ListOfXY & Value() const;

};

%nodefaultctor BRepMesh_HeapSortIndexedVertexOfDelaun;
class BRepMesh_HeapSortIndexedVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_HeapSortIndexedVertexOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_HeapSortIndexedVertexOfDelaun();
		%feature("autodoc", "1");
		void Sort(TColStd_Array1OfInteger & TheArray, const BRepMesh_ComparatorOfIndexedVertexOfDelaun &Comp);

};

%nodefaultctor BRepMesh_MapIteratorOfMapOfAsciiString;
class BRepMesh_MapIteratorOfMapOfAsciiString : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_MapIteratorOfMapOfAsciiString();
		%feature("autodoc", "1");
		BRepMesh_MapIteratorOfMapOfAsciiString();
		%feature("autodoc", "1");
		BRepMesh_MapIteratorOfMapOfAsciiString(const BRepMesh_MapOfAsciiString &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_MapOfAsciiString &aMap);
		%feature("autodoc", "1");
		const TCollection_AsciiString & Key() const;

};

%nodefaultctor BRepMesh_BiPoint;
class BRepMesh_BiPoint {
	public:
		%feature("autodoc", "1");
		~BRepMesh_BiPoint();
		%feature("autodoc", "1");
		BRepMesh_BiPoint();
		%feature("autodoc", "1");
		BRepMesh_BiPoint(const Standard_Real X1, const Standard_Real Y1, const Standard_Real X2, const Standard_Real Y2);
		%feature("autodoc", "1");
		Standard_Address Indices() const;
		%feature("autodoc", "1");
		Standard_Address Coordinates() const;

};

%nodefaultctor BRepMesh_HArray1OfVertexOfDelaun;
class BRepMesh_HArray1OfVertexOfDelaun : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_HArray1OfVertexOfDelaun(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BRepMesh_HArray1OfVertexOfDelaun(const Standard_Integer Low, const Standard_Integer Up, const BRepMesh_Vertex &V);
		%feature("autodoc", "1");
		void Init(const BRepMesh_Vertex &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepMesh_Vertex &Value);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BRepMesh_Vertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const BRepMesh_Array1OfVertexOfDelaun & Array1() const;
		%feature("autodoc", "1");
		BRepMesh_Array1OfVertexOfDelaun & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_HArray1OfVertexOfDelaun();

};
%extend BRepMesh_HArray1OfVertexOfDelaun {
	Handle_BRepMesh_HArray1OfVertexOfDelaun GetHandle() {
	return *(Handle_BRepMesh_HArray1OfVertexOfDelaun*) &$self;
	}
};

%nodefaultctor BRepMesh_ListOfXY;
class BRepMesh_ListOfXY {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListOfXY();
		%feature("autodoc", "1");
		void Assign(const BRepMesh_ListOfXY &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_ListOfXY();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const gp_XY &I);
		%feature("autodoc", "1");
		void Prepend(const gp_XY &I, BRepMesh_ListIteratorOfListOfXY & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepMesh_ListOfXY & Other);
		%feature("autodoc", "1");
		void Append(const gp_XY &I);
		%feature("autodoc", "1");
		void Append(const gp_XY &I, BRepMesh_ListIteratorOfListOfXY & theIt);
		%feature("autodoc", "1");
		void Append(BRepMesh_ListOfXY & Other);
		%feature("autodoc", "1");
		gp_XY & First() const;
		%feature("autodoc", "1");
		gp_XY & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepMesh_ListIteratorOfListOfXY & It);
		%feature("autodoc", "1");
		void InsertBefore(const gp_XY &I, BRepMesh_ListIteratorOfListOfXY & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepMesh_ListOfXY & Other, BRepMesh_ListIteratorOfListOfXY & It);
		%feature("autodoc", "1");
		void InsertAfter(const gp_XY &I, BRepMesh_ListIteratorOfListOfXY & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepMesh_ListOfXY & Other, BRepMesh_ListIteratorOfListOfXY & It);

};

%nodefaultctor BRepMesh;
class BRepMesh {
	public:
		%feature("autodoc", "1");
		~BRepMesh();
		%feature("autodoc", "1");
		BRepMesh();
		%feature("autodoc", "1");
		void Mesh(const TopoDS_Shape &S, const Standard_Real d);

};

%nodefaultctor BRepMesh_ListIteratorOfListOfXY;
class BRepMesh_ListIteratorOfListOfXY {
	public:
		%feature("autodoc", "1");
		~BRepMesh_ListIteratorOfListOfXY();
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfXY();
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfXY(const BRepMesh_ListOfXY &L);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_ListOfXY &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		gp_XY & Value() const;

};

%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfVertexInteger;
class BRepMesh_DataMapIteratorOfDataMapOfVertexInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_DataMapIteratorOfDataMapOfVertexInteger();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfVertexInteger();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfVertexInteger(const BRepMesh_DataMapOfVertexInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfVertexInteger &aMap);
		%feature("autodoc", "1");
		const TopoDS_Vertex & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};

%nodefaultctor BRepMesh_DiscretRoot;
class BRepMesh_DiscretRoot {
	public:
		%feature("autodoc", "1");
		void SetDeflection(const Standard_Real theDeflection);
		%feature("autodoc", "1");
		Standard_Real Deflection() const;
		%feature("autodoc", "1");
		void SetAngle(const Standard_Real theAngle);
		%feature("autodoc", "1");
		Standard_Real Angle() const;
		%feature("autodoc", "1");
		void SetShape(const TopoDS_Shape &theShape);
		%feature("autodoc", "1");
		const TopoDS_Shape & Shape() const;
		%feature("autodoc", "1");
		virtual		void Perform();
		%feature("autodoc", "1");
		Standard_Boolean IsDone() const;

};

%nodefaultctor BRepMesh_IncrementalMesh;
class BRepMesh_IncrementalMesh : public BRepMesh_DiscretRoot {
	public:
		%feature("autodoc", "1");
		BRepMesh_IncrementalMesh();
		%feature("autodoc", "1");
		virtual		~BRepMesh_IncrementalMesh();
		%feature("autodoc", "1");
		BRepMesh_IncrementalMesh(const TopoDS_Shape &S, const Standard_Real D, const Standard_Boolean Relatif=0, const Standard_Real Ang=5.0e-1);
		%feature("autodoc", "1");
		void SetRelative(const Standard_Boolean theFlag);
		%feature("autodoc", "1");
		Standard_Boolean Relative() const;
		%feature("autodoc", "1");
		void Update(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean IsModified() const;

};

%nodefaultctor BRepMesh_Array1OfBiPoint;
class BRepMesh_Array1OfBiPoint {
	public:
		%feature("autodoc", "1");
		BRepMesh_Array1OfBiPoint(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BRepMesh_Array1OfBiPoint(const BRepMesh_BiPoint &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const BRepMesh_BiPoint &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~BRepMesh_Array1OfBiPoint();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const BRepMesh_Array1OfBiPoint & Assign(const BRepMesh_Array1OfBiPoint &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepMesh_BiPoint &Value);
		%feature("autodoc", "1");
		const BRepMesh_BiPoint & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepMesh_BiPoint & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BRepMesh_BiPoint & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepMesh_BiPoint & operator()(const Standard_Integer Index);

};

%nodefaultctor BRepMesh_EdgeDiscret;
class BRepMesh_EdgeDiscret : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_EdgeDiscret();
		%feature("autodoc", "1");
		BRepMesh_EdgeDiscret(const TopoDS_Edge &E, const BRepMesh_ListOfSurfaceGrid &L, const Standard_Real D, const Standard_Real An);
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & Parameters() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_EdgeDiscret();

};
%extend BRepMesh_EdgeDiscret {
	Handle_BRepMesh_EdgeDiscret GetHandle() {
	return *(Handle_BRepMesh_EdgeDiscret*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY;
class BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY(const Standard_Integer &K, const BRepMesh_ListOfXY &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		BRepMesh_ListOfXY & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY();

};
%extend BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY {
	Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerListOfXY*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid;
class BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid(const TopoDS_Shape &K, const Handle_BRepMesh_SurfaceGrid &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid();

};
%extend BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid {
	Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfShapeSurfaceGrid*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapOfShapeEdgeDiscret;
class BRepMesh_DataMapOfShapeEdgeDiscret : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeEdgeDiscret(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeEdgeDiscret & Assign(const BRepMesh_DataMapOfShapeEdgeDiscret &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_DataMapOfShapeEdgeDiscret();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Handle_BRepMesh_EdgeDiscret &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Handle_BRepMesh_EdgeDiscret & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Handle_BRepMesh_EdgeDiscret & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Handle_BRepMesh_EdgeDiscret & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Handle_BRepMesh_EdgeDiscret & operator()(const TopoDS_Shape &K);

};

%nodefaultctor BRepMesh_ListNodeOfListOfVertex;
class BRepMesh_ListNodeOfListOfVertex : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListNodeOfListOfVertex(const BRepMesh_Vertex &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BRepMesh_Vertex & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_ListNodeOfListOfVertex();

};
%extend BRepMesh_ListNodeOfListOfVertex {
	Handle_BRepMesh_ListNodeOfListOfVertex GetHandle() {
	return *(Handle_BRepMesh_ListNodeOfListOfVertex*) &$self;
	}
};

%nodefaultctor BRepMesh_ListNodeOfListOfSurfaceGrid;
class BRepMesh_ListNodeOfListOfSurfaceGrid : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListNodeOfListOfSurfaceGrid(const Handle_BRepMesh_SurfaceGrid &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_ListNodeOfListOfSurfaceGrid();

};
%extend BRepMesh_ListNodeOfListOfSurfaceGrid {
	Handle_BRepMesh_ListNodeOfListOfSurfaceGrid GetHandle() {
	return *(Handle_BRepMesh_ListNodeOfListOfSurfaceGrid*) &$self;
	}
};

%nodefaultctor BRepMesh_IDMapOfNodeOfDataStructureOfDelaun;
class BRepMesh_IDMapOfNodeOfDataStructureOfDelaun : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_IDMapOfNodeOfDataStructureOfDelaun(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_IDMapOfNodeOfDataStructureOfDelaun & Assign(const BRepMesh_IDMapOfNodeOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_IDMapOfNodeOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Standard_Integer Add(const BRepMesh_Vertex &K, const MeshDS_ListOfInteger &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BRepMesh_Vertex &K, const MeshDS_ListOfInteger &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & FindFromKey(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & ChangeFromKey(const BRepMesh_Vertex &K);

};

%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfShapeReal;
class BRepMesh_DataMapNodeOfDataMapOfShapeReal : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfShapeReal(const TopoDS_Shape &K, const Standard_Real &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Standard_Real & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataMapNodeOfDataMapOfShapeReal();

};
%extend BRepMesh_DataMapNodeOfDataMapOfShapeReal {
	Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfShapeReal*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfShapeReal;
class BRepMesh_DataMapIteratorOfDataMapOfShapeReal : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapeReal();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapeReal(const BRepMesh_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfShapeReal &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Standard_Real & Value() const;

};

%nodefaultctor BRepMesh_Array1OfVertexOfDelaun;
class BRepMesh_Array1OfVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		BRepMesh_Array1OfVertexOfDelaun(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		BRepMesh_Array1OfVertexOfDelaun(const BRepMesh_Vertex &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const BRepMesh_Vertex &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~BRepMesh_Array1OfVertexOfDelaun();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const BRepMesh_Array1OfVertexOfDelaun & Assign(const BRepMesh_Array1OfVertexOfDelaun &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const BRepMesh_Vertex &Value);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const BRepMesh_Vertex & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		BRepMesh_Vertex & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		BRepMesh_Vertex & operator()(const Standard_Integer Index);

};

%nodefaultctor BRepMesh_Vertex;
class BRepMesh_Vertex {
	public:
		%feature("autodoc", "1");
		~BRepMesh_Vertex();
		%feature("autodoc", "1");
		BRepMesh_Vertex();
		%feature("autodoc", "1");
		BRepMesh_Vertex(const gp_XY &UV, const Standard_Integer Dom, const Standard_Integer Locat3d, const MeshDS_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		BRepMesh_Vertex(const Standard_Real U, const Standard_Real V, const Standard_Integer Dom, const MeshDS_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		void Initialize(const gp_XY &UV, const Standard_Integer Dom, const Standard_Integer Locat3d, const MeshDS_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		const gp_XY & Coord() const;
		%feature("autodoc", "1");
		Standard_Integer Location3d() const;
		%feature("autodoc", "1");
		Standard_Integer Domain() const;
		%feature("autodoc", "1");
		MeshDS_DegreeOfFreedom Movability() const;
		%feature("autodoc", "1");
		void SetMovability(const MeshDS_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Vertex &Other) const;

};

%nodefaultctor BRepMesh_ShapeTool;
class BRepMesh_ShapeTool {
	public:
		%feature("autodoc", "1");
		~BRepMesh_ShapeTool();
		%feature("autodoc", "1");
		BRepMesh_ShapeTool();
		%feature("autodoc", "1");
		void Init(const TopoDS_Shape &S);
		%feature("autodoc", "1");
		Standard_Boolean MoreFace();
		%feature("autodoc", "1");
		void NextFace();
		%feature("autodoc", "1");
		const TopoDS_Face & CurrentFace();
		%feature("autodoc", "1");
		void Init(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Standard_Boolean MoreEdge();
		%feature("autodoc", "1");
		void NextEdge();
		%feature("autodoc", "1");
		const TopoDS_Edge & CurrentEdge();
		%feature("autodoc", "1");
		void Init(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Boolean MoreInternalVertex();
		%feature("autodoc", "1");
		void NextInternalVertex();
		%feature("autodoc", "1");
		const TopoDS_Vertex & CurrentInternalVertex();
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const TopoDS_Face &F);
		%feature("autodoc", "1");
		TopAbs_Orientation Orientation(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Bnd_Box Bound(const TopoDS_Face &F);
		%feature("autodoc", "1");
		Bnd_Box Bound(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		TopoDS_Vertex FirstVertex(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		TopoDS_Vertex LastVertex(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		void Vertices(const TopoDS_Edge &E, TopoDS_Vertex & Vfirst, TopoDS_Vertex & Vlast);
		%feature("autodoc", "1");
		void Range(const TopoDS_Edge &E, const TopoDS_Face &F, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void UVPoints(const TopoDS_Edge &E, const TopoDS_Face &F, gp_Pnt2d & uvFirst, gp_Pnt2d & uvLast);
		%feature("autodoc", "1");
		Standard_Boolean Degenerated(const TopoDS_Edge &E);
		%feature("autodoc", "1");
		Standard_Real Tolerance(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		Standard_Real Parameter(const TopoDS_Vertex &V, const TopoDS_Edge &E, const TopoDS_Face &F);
		%feature("autodoc", "1");
		void Parameters(const TopoDS_Edge &E, const TopoDS_Face &F, const Standard_Real W, gp_Pnt2d & UV);
		%feature("autodoc", "1");
		void Locate(const BRepAdaptor_Curve &C, const Standard_Real W, Standard_Real &OutValue, const gp_Pnt &p3d, gp_Pnt2d & UV);
		%feature("autodoc", "1");
		gp_Pnt Pnt(const TopoDS_Vertex &V);
		%feature("autodoc", "1");
		void AddInFace(const TopoDS_Face &F, Handle_Poly_Triangulation & T);

};

%nodefaultctor BRepMesh_ListNodeOfListOfXY;
class BRepMesh_ListNodeOfListOfXY : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListNodeOfListOfXY(const gp_XY &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		gp_XY & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_ListNodeOfListOfXY();

};
%extend BRepMesh_ListNodeOfListOfXY {
	Handle_BRepMesh_ListNodeOfListOfXY GetHandle() {
	return *(Handle_BRepMesh_ListNodeOfListOfXY*) &$self;
	}
};

%nodefaultctor BRepMesh_IndexedMapNodeOfIndexedMapOfVertex;
class BRepMesh_IndexedMapNodeOfIndexedMapOfVertex : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedMapNodeOfIndexedMapOfVertex(const BRepMesh_Vertex &K1, const Standard_Integer K2, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BRepMesh_Vertex & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_IndexedMapNodeOfIndexedMapOfVertex();

};
%extend BRepMesh_IndexedMapNodeOfIndexedMapOfVertex {
	Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex GetHandle() {
	return *(Handle_BRepMesh_IndexedMapNodeOfIndexedMapOfVertex*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfCouplePnt;
class BRepMesh_DataMapNodeOfDataMapOfCouplePnt : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfCouplePnt(const MeshShape_Couple &K, const gp_Pnt &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		MeshShape_Couple & Key() const;
		%feature("autodoc", "1");
		gp_Pnt & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataMapNodeOfDataMapOfCouplePnt();

};
%extend BRepMesh_DataMapNodeOfDataMapOfCouplePnt {
	Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfCouplePnt*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfCouplePnt;
class BRepMesh_DataMapIteratorOfDataMapOfCouplePnt : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_DataMapIteratorOfDataMapOfCouplePnt();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfCouplePnt();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfCouplePnt(const BRepMesh_DataMapOfCouplePnt &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfCouplePnt &aMap);
		%feature("autodoc", "1");
		const MeshShape_Couple & Key() const;
		%feature("autodoc", "1");
		const gp_Pnt & Value() const;

};

%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger;
class BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger(const BRepMesh_Vertex &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		BRepMesh_Vertex & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger();

};
%extend BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger {
	Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfMeshVertexInteger*) &$self;
	}
};

%nodefaultctor BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun;
class BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun(const BRepMesh_Edge &K1, const Standard_Integer K2, const MeshDS_ListOfInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BRepMesh_Edge & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun();

};
%extend BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun {
	Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun GetHandle() {
	return *(Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfLinkOfDataStructureOfDelaun*) &$self;
	}
};

%nodefaultctor BRepMesh_ListOfSurfaceGrid;
class BRepMesh_ListOfSurfaceGrid {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListOfSurfaceGrid();
		%feature("autodoc", "1");
		void Assign(const BRepMesh_ListOfSurfaceGrid &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_ListOfSurfaceGrid();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const Handle_BRepMesh_SurfaceGrid &I);
		%feature("autodoc", "1");
		void Prepend(const Handle_BRepMesh_SurfaceGrid &I, BRepMesh_ListIteratorOfListOfSurfaceGrid & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepMesh_ListOfSurfaceGrid & Other);
		%feature("autodoc", "1");
		void Append(const Handle_BRepMesh_SurfaceGrid &I);
		%feature("autodoc", "1");
		void Append(const Handle_BRepMesh_SurfaceGrid &I, BRepMesh_ListIteratorOfListOfSurfaceGrid & theIt);
		%feature("autodoc", "1");
		void Append(BRepMesh_ListOfSurfaceGrid & Other);
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid & First() const;
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepMesh_ListIteratorOfListOfSurfaceGrid & It);
		%feature("autodoc", "1");
		void InsertBefore(const Handle_BRepMesh_SurfaceGrid &I, BRepMesh_ListIteratorOfListOfSurfaceGrid & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepMesh_ListOfSurfaceGrid & Other, BRepMesh_ListIteratorOfListOfSurfaceGrid & It);
		%feature("autodoc", "1");
		void InsertAfter(const Handle_BRepMesh_SurfaceGrid &I, BRepMesh_ListIteratorOfListOfSurfaceGrid & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepMesh_ListOfSurfaceGrid & Other, BRepMesh_ListIteratorOfListOfSurfaceGrid & It);

};

%nodefaultctor BRepMesh_ListOfVertex;
class BRepMesh_ListOfVertex {
	public:
		%feature("autodoc", "1");
		BRepMesh_ListOfVertex();
		%feature("autodoc", "1");
		void Assign(const BRepMesh_ListOfVertex &Other);
		%feature("autodoc", "1");
		Standard_Integer Extent() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_ListOfVertex();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		void Prepend(const BRepMesh_Vertex &I);
		%feature("autodoc", "1");
		void Prepend(const BRepMesh_Vertex &I, BRepMesh_ListIteratorOfListOfVertex & theIt);
		%feature("autodoc", "1");
		void Prepend(BRepMesh_ListOfVertex & Other);
		%feature("autodoc", "1");
		void Append(const BRepMesh_Vertex &I);
		%feature("autodoc", "1");
		void Append(const BRepMesh_Vertex &I, BRepMesh_ListIteratorOfListOfVertex & theIt);
		%feature("autodoc", "1");
		void Append(BRepMesh_ListOfVertex & Other);
		%feature("autodoc", "1");
		BRepMesh_Vertex & First() const;
		%feature("autodoc", "1");
		BRepMesh_Vertex & Last() const;
		%feature("autodoc", "1");
		void RemoveFirst();
		%feature("autodoc", "1");
		void Remove(BRepMesh_ListIteratorOfListOfVertex & It);
		%feature("autodoc", "1");
		void InsertBefore(const BRepMesh_Vertex &I, BRepMesh_ListIteratorOfListOfVertex & It);
		%feature("autodoc", "1");
		void InsertBefore(BRepMesh_ListOfVertex & Other, BRepMesh_ListIteratorOfListOfVertex & It);
		%feature("autodoc", "1");
		void InsertAfter(const BRepMesh_Vertex &I, BRepMesh_ListIteratorOfListOfVertex & It);
		%feature("autodoc", "1");
		void InsertAfter(BRepMesh_ListOfVertex & Other, BRepMesh_ListIteratorOfListOfVertex & It);

};

%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfIntegerFace;
class BRepMesh_DataMapIteratorOfDataMapOfIntegerFace : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_DataMapIteratorOfDataMapOfIntegerFace();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfIntegerFace();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfIntegerFace(const BRepMesh_DataMapOfIntegerFace &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfIntegerFace &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const TopoDS_Face & Value() const;

};

%nodefaultctor BRepMesh_DataMapOfVertexInteger;
class BRepMesh_DataMapOfVertexInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfVertexInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfVertexInteger & Assign(const BRepMesh_DataMapOfVertexInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_DataMapOfVertexInteger();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Vertex &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Vertex &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Vertex &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const TopoDS_Vertex &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const TopoDS_Vertex &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const TopoDS_Vertex &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const TopoDS_Vertex &K);

};

%nodefaultctor BRepMesh_StdMapNodeOfMapOfAsciiString;
class BRepMesh_StdMapNodeOfMapOfAsciiString : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_StdMapNodeOfMapOfAsciiString(const TCollection_AsciiString &K, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TCollection_AsciiString & Key() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_StdMapNodeOfMapOfAsciiString();

};
%extend BRepMesh_StdMapNodeOfMapOfAsciiString {
	Handle_BRepMesh_StdMapNodeOfMapOfAsciiString GetHandle() {
	return *(Handle_BRepMesh_StdMapNodeOfMapOfAsciiString*) &$self;
	}
};

%nodefaultctor BRepMesh_ComparatorOfVertexOfDelaun;
class BRepMesh_ComparatorOfVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_ComparatorOfVertexOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_ComparatorOfVertexOfDelaun(const gp_XY &theDir, const Standard_Real TheTol);
		%feature("autodoc", "1");
		Standard_Boolean IsLower(const BRepMesh_Vertex &Left, const BRepMesh_Vertex &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsGreater(const BRepMesh_Vertex &Left, const BRepMesh_Vertex &Right) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Vertex &Left, const BRepMesh_Vertex &Right) const;

};

%nodefaultctor BRepMesh_GeomTool;
class BRepMesh_GeomTool {
	public:
		%feature("autodoc", "1");
		~BRepMesh_GeomTool();
		%feature("autodoc", "1");
		BRepMesh_GeomTool(BRepAdaptor_Curve & C, const Standard_Real Ufirst, const Standard_Real Ulast, const Standard_Real AngDefl, const Standard_Real Deflection, const Standard_Integer nbpointsmin=2);
		%feature("autodoc", "1");
		BRepMesh_GeomTool(const Handle_BRepAdaptor_HSurface &S, const Standard_Real ParamIso, const GeomAbs_IsoType Type, const Standard_Real Ufirst, const Standard_Real Ulast, const Standard_Real AngDefl, const Standard_Real Deflection, const Standard_Integer nbpointsmin=2);
		%feature("autodoc", "1");
		Standard_Integer NbPoints() const;
		%feature("autodoc", "1");
		void Value(const Standard_Real IsoParam, const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt & P, gp_Pnt2d & UV) const;
		%feature("autodoc", "1");
		void Value(const BRepAdaptor_Curve &C, const Handle_BRepAdaptor_HSurface &S, const Standard_Integer Index, Standard_Real &OutValue, gp_Pnt & P, gp_Pnt2d & UV) const;
		%feature("autodoc", "1");
		void D0(const Handle_BRepAdaptor_HSurface &F, const Standard_Real U, const Standard_Real V, gp_Pnt & P);
		%feature("autodoc", "1");
		Standard_Boolean Normal(const Handle_BRepAdaptor_HSurface &F, const Standard_Real U, const Standard_Real V, gp_Pnt & P, gp_Dir & Nor);
		%feature("autodoc", "1");
		MeshShape_CurvatureType CurvatureComplexity(const Handle_BRepAdaptor_HSurface &SF);

};

%nodefaultctor BRepMesh_IMapOfElementOfDataStructureOfDelaun;
class BRepMesh_IMapOfElementOfDataStructureOfDelaun : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_IMapOfElementOfDataStructureOfDelaun(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_IMapOfElementOfDataStructureOfDelaun & Assign(const BRepMesh_IMapOfElementOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_IMapOfElementOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Standard_Integer Add(const BRepMesh_Triangle &K);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BRepMesh_Triangle &K);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BRepMesh_Triangle &K) const;
		%feature("autodoc", "1");
		const BRepMesh_Triangle & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const BRepMesh_Triangle & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BRepMesh_Triangle &K) const;

};

%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfIntegerFace;
class BRepMesh_DataMapNodeOfDataMapOfIntegerFace : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfIntegerFace(const Standard_Integer &K, const TopoDS_Face &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		Standard_Integer & Key() const;
		%feature("autodoc", "1");
		TopoDS_Face & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataMapNodeOfDataMapOfIntegerFace();

};
%extend BRepMesh_DataMapNodeOfDataMapOfIntegerFace {
	Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfIntegerFace*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfShapeEdgeDiscret;
class BRepMesh_DataMapIteratorOfDataMapOfShapeEdgeDiscret : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_DataMapIteratorOfDataMapOfShapeEdgeDiscret();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapeEdgeDiscret();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfShapeEdgeDiscret(const BRepMesh_DataMapOfShapeEdgeDiscret &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfShapeEdgeDiscret &aMap);
		%feature("autodoc", "1");
		const TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		const Handle_BRepMesh_EdgeDiscret & Value() const;

};

%nodefaultctor BRepMesh_SelectorOfDataStructureOfDelaun;
class BRepMesh_SelectorOfDataStructureOfDelaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_SelectorOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_SelectorOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_SelectorOfDataStructureOfDelaun(const Handle_BRepMesh_DataStructureOfDelaun &theMesh);
		%feature("autodoc", "1");
		void Initialize(const Handle_BRepMesh_DataStructureOfDelaun &theMesh);
		%feature("autodoc", "1");
		void NeighboursOf(const BRepMesh_Vertex &theNode);
		%feature("autodoc", "1");
		void NeighboursOfNode(const Standard_Integer indexNode);
		%feature("autodoc", "1");
		void NeighboursOf(const BRepMesh_Edge &theLink);
		%feature("autodoc", "1");
		void NeighboursOfLink(const Standard_Integer indexLink);
		%feature("autodoc", "1");
		void NeighboursOf(const BRepMesh_Triangle &theElem);
		%feature("autodoc", "1");
		void NeighboursOfElement(const Standard_Integer indexElem);
		%feature("autodoc", "1");
		void NeighboursByEdgeOf(const BRepMesh_Triangle &theElem);
		%feature("autodoc", "1");
		void NeighboursOf(const BRepMesh_SelectorOfDataStructureOfDelaun &theSelector);
		%feature("autodoc", "1");
		void AddNeighbours();
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & Nodes() const;
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & Links() const;
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & Elements() const;
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & FrontierLinks() const;

};

%nodefaultctor BRepMesh_DataMapOfShapeReal;
class BRepMesh_DataMapOfShapeReal : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeReal(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeReal & Assign(const BRepMesh_DataMapOfShapeReal &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_DataMapOfShapeReal();
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

%nodefaultctor BRepMesh_SurfaceGrid;
class BRepMesh_SurfaceGrid : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		BRepMesh_SurfaceGrid(const TopoDS_Face &F, const Standard_Real def, const Standard_Real Ang);
		%feature("autodoc", "1");
		void Perform(const BRepMesh_Classifier &cl);
		%feature("autodoc", "1");
		void SetEquilateral();
		%feature("autodoc", "1");
		void SetEdgeDimension(const Standard_Real D);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Points() const;
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & Parameters() const;
		%feature("autodoc", "1");
		Standard_Real DeltaX() const;
		%feature("autodoc", "1");
		Standard_Real DeltaY() const;
		%feature("autodoc", "1");
		BRepMesh_Status Error() const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & UParameters() const;
		%feature("autodoc", "1");
		const TColStd_SequenceOfReal & VParameters() const;
		%feature("autodoc", "1");
		Handle_BRepAdaptor_HSurface Surface() const;
		%feature("autodoc", "1");
		TopoDS_Face Face() const;
		%feature("autodoc", "1");
		void Bounds(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_SurfaceGrid();

};
%extend BRepMesh_SurfaceGrid {
	Handle_BRepMesh_SurfaceGrid GetHandle() {
	return *(Handle_BRepMesh_SurfaceGrid*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapOfShapeSurfaceGrid;
class BRepMesh_DataMapOfShapeSurfaceGrid : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeSurfaceGrid(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfShapeSurfaceGrid & Assign(const BRepMesh_DataMapOfShapeSurfaceGrid &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_DataMapOfShapeSurfaceGrid();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const TopoDS_Shape &K, const Handle_BRepMesh_SurfaceGrid &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		const Handle_BRepMesh_SurfaceGrid & Find(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		const Handle_BRepMesh_SurfaceGrid & operator()(const TopoDS_Shape &K) const;
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid & ChangeFind(const TopoDS_Shape &K);
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid & operator()(const TopoDS_Shape &K);

};

%nodefaultctor BRepMesh_DataMapOfMeshVertexInteger;
class BRepMesh_DataMapOfMeshVertexInteger : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfMeshVertexInteger(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfMeshVertexInteger & Assign(const BRepMesh_DataMapOfMeshVertexInteger &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_DataMapOfMeshVertexInteger();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const BRepMesh_Vertex &K, const Standard_Integer &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const BRepMesh_Vertex &K);
		%feature("autodoc", "1");
		const Standard_Integer & Find(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		const Standard_Integer & operator()(const BRepMesh_Vertex &K) const;
		%feature("autodoc", "1");
		Standard_Integer & ChangeFind(const BRepMesh_Vertex &K);
		%feature("autodoc", "1");
		Standard_Integer & operator()(const BRepMesh_Vertex &K);

};

%nodefaultctor BRepMesh_HeapSortVertexOfDelaun;
class BRepMesh_HeapSortVertexOfDelaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_HeapSortVertexOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_HeapSortVertexOfDelaun();
		%feature("autodoc", "1");
		void Sort(BRepMesh_Array1OfVertexOfDelaun & TheArray, const BRepMesh_ComparatorOfVertexOfDelaun &Comp);

};

%nodefaultctor BRepMesh_ListIteratorOfListOfSurfaceGrid;
class BRepMesh_ListIteratorOfListOfSurfaceGrid {
	public:
		%feature("autodoc", "1");
		~BRepMesh_ListIteratorOfListOfSurfaceGrid();
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfSurfaceGrid();
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfSurfaceGrid(const BRepMesh_ListOfSurfaceGrid &L);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_ListOfSurfaceGrid &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		Handle_BRepMesh_SurfaceGrid & Value() const;

};

%nodefaultctor BRepMesh_Classifier;
class BRepMesh_Classifier {
	public:
		%feature("autodoc", "1");
		BRepMesh_Classifier(const TopoDS_Face &F, const Standard_Real Tol, const MeshShape_DataMapOfShapeListOfTransient &edges, const TColStd_IndexedMapOfInteger &themap, const BRepMesh_IndexedMapOfVertex &Str, const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax);
		%feature("autodoc", "1");
		BRepMesh_Classifier(const TopoDS_Face &F, const Standard_Real Tol, const MeshShape_DataMapOfShapeListOfTransient &edges, const TColStd_IndexedMapOfInteger &themap, const Handle_BRepMesh_DataStructureOfDelaun &Str, const Standard_Real Umin, const Standard_Real Umax, const Standard_Real Vmin, const Standard_Real Vmax);
		%feature("autodoc", "1");
		TopAbs_State Perform(const gp_Pnt2d &Puv) const;
		%feature("autodoc", "1");
		BRepMesh_Status State() const;
		%feature("autodoc", "1");
		Standard_Boolean NaturalRestriction() const;
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		~BRepMesh_Classifier();

};

%nodefaultctor BRepMesh_DataMapIteratorOfDataMapOfMeshVertexInteger;
class BRepMesh_DataMapIteratorOfDataMapOfMeshVertexInteger : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		~BRepMesh_DataMapIteratorOfDataMapOfMeshVertexInteger();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfMeshVertexInteger();
		%feature("autodoc", "1");
		BRepMesh_DataMapIteratorOfDataMapOfMeshVertexInteger(const BRepMesh_DataMapOfMeshVertexInteger &aMap);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_DataMapOfMeshVertexInteger &aMap);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & Key() const;
		%feature("autodoc", "1");
		const Standard_Integer & Value() const;

};

%nodefaultctor BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun;
class BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun(const BRepMesh_Vertex &K1, const Standard_Integer K2, const MeshDS_ListOfInteger &I, const TCollection_MapNodePtr &n1, const TCollection_MapNodePtr &n2);
		%feature("autodoc", "1");
		BRepMesh_Vertex & Key1() const;
		%feature("autodoc", "1");
		Standard_Integer & Key2() const;
		%feature("autodoc", "1");
		TCollection_MapNodePtr & Next2() const;
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun();

};
%extend BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun {
	Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun GetHandle() {
	return *(Handle_BRepMesh_IndexedDataMapNodeOfIDMapOfNodeOfDataStructureOfDelaun*) &$self;
	}
};

%nodefaultctor BRepMesh_DataMapOfIntegerFace;
class BRepMesh_DataMapOfIntegerFace : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerFace(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerFace & Assign(const BRepMesh_DataMapOfIntegerFace &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_DataMapOfIntegerFace();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const TopoDS_Face &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const TopoDS_Face & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const TopoDS_Face & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		TopoDS_Face & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		TopoDS_Face & operator()(const Standard_Integer &K);

};

%nodefaultctor BRepMesh_IDMapOfLinkOfDataStructureOfDelaun;
class BRepMesh_IDMapOfLinkOfDataStructureOfDelaun : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_IDMapOfLinkOfDataStructureOfDelaun(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_IDMapOfLinkOfDataStructureOfDelaun & Assign(const BRepMesh_IDMapOfLinkOfDataStructureOfDelaun &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_IDMapOfLinkOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Standard_Integer Add(const BRepMesh_Edge &K, const MeshDS_ListOfInteger &I);
		%feature("autodoc", "1");
		void Substitute(const Standard_Integer I, const BRepMesh_Edge &K, const MeshDS_ListOfInteger &T);
		%feature("autodoc", "1");
		void RemoveLast();
		%feature("autodoc", "1");
		Standard_Boolean Contains(const BRepMesh_Edge &K) const;
		%feature("autodoc", "1");
		const BRepMesh_Edge & FindKey(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & FindFromIndex(const Standard_Integer I) const;
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & operator()(const Standard_Integer I) const;
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & ChangeFromIndex(const Standard_Integer I);
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & operator()(const Standard_Integer I);
		%feature("autodoc", "1");
		Standard_Integer FindIndex(const BRepMesh_Edge &K) const;
		%feature("autodoc", "1");
		const MeshDS_ListOfInteger & FindFromKey(const BRepMesh_Edge &K) const;
		%feature("autodoc", "1");
		MeshDS_ListOfInteger & ChangeFromKey(const BRepMesh_Edge &K);

};

%nodefaultctor BRepMesh_DataMapOfIntegerListOfXY;
class BRepMesh_DataMapOfIntegerListOfXY : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerListOfXY(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfIntegerListOfXY & Assign(const BRepMesh_DataMapOfIntegerListOfXY &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_DataMapOfIntegerListOfXY();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const BRepMesh_ListOfXY &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const BRepMesh_ListOfXY & Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const BRepMesh_ListOfXY & operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		BRepMesh_ListOfXY & ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		BRepMesh_ListOfXY & operator()(const Standard_Integer &K);

};

%nodefaultctor BRepMesh_VertexHasher;
class BRepMesh_VertexHasher {
	public:
		%feature("autodoc", "1");
		~BRepMesh_VertexHasher();
		%feature("autodoc", "1");
		BRepMesh_VertexHasher();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const BRepMesh_Vertex &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Vertex &K1, const BRepMesh_Vertex &K2);

};

%nodefaultctor BRepMesh_LinkHasherOfDataStructureOfDelaun;
class BRepMesh_LinkHasherOfDataStructureOfDelaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_LinkHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_LinkHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const BRepMesh_Edge &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Edge &K1, const BRepMesh_Edge &K2);

};

%nodefaultctor BRepMesh_DataMapOfCouplePnt;
class BRepMesh_DataMapOfCouplePnt : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapOfCouplePnt(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_DataMapOfCouplePnt & Assign(const BRepMesh_DataMapOfCouplePnt &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_DataMapOfCouplePnt();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const MeshShape_Couple &K, const gp_Pnt &I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const MeshShape_Couple &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const MeshShape_Couple &K);
		%feature("autodoc", "1");
		const gp_Pnt & Find(const MeshShape_Couple &K) const;
		%feature("autodoc", "1");
		const gp_Pnt & operator()(const MeshShape_Couple &K) const;
		%feature("autodoc", "1");
		gp_Pnt & ChangeFind(const MeshShape_Couple &K);
		%feature("autodoc", "1");
		gp_Pnt & operator()(const MeshShape_Couple &K);

};

%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret;
class BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret(const TopoDS_Shape &K, const Handle_BRepMesh_EdgeDiscret &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Shape & Key() const;
		%feature("autodoc", "1");
		Handle_BRepMesh_EdgeDiscret & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret();

};
%extend BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret {
	Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfShapeEdgeDiscret*) &$self;
	}
};

%nodefaultctor BRepMesh_Delaun;
class BRepMesh_Delaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_Delaun();
		%feature("autodoc", "1");
		BRepMesh_Delaun(BRepMesh_Array1OfVertexOfDelaun & Vertices, const Standard_Boolean ZPositive=1);
		%feature("autodoc", "1");
		BRepMesh_Delaun(const Handle_BRepMesh_DataStructureOfDelaun &OldMesh, BRepMesh_Array1OfVertexOfDelaun & Vertices, const Standard_Boolean ZPositive=1);
		%feature("autodoc", "1");
		BRepMesh_Delaun(const Handle_BRepMesh_DataStructureOfDelaun &OldMesh, TColStd_Array1OfInteger & VertexIndices, const Standard_Boolean ZPositive=1);
		%feature("autodoc", "1");
		void AddVertex(const BRepMesh_Vertex &theVertex);
		%feature("autodoc", "1");
		void RemoveVertex(const BRepMesh_Vertex &theVertex);
		%feature("autodoc", "1");
		void AddVertices(BRepMesh_Array1OfVertexOfDelaun & Vertices);
		%feature("autodoc", "1");
		Standard_Boolean RevertDiagonal(const Standard_Integer theEdge);
		%feature("autodoc", "1");
		Standard_Boolean UseEdge(const Standard_Integer theEdge);
		%feature("autodoc", "1");
		void SmoothMesh(const Standard_Real Epsilon);
		%feature("autodoc", "1");
		const Handle_BRepMesh_DataStructureOfDelaun & Result() const;
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & Frontier(const Standard_Integer domain);
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & InternalEdges(const Standard_Integer domain);
		%feature("autodoc", "1");
		const MeshDS_MapOfInteger & FreeEdges(const Standard_Integer domain);
		%feature("autodoc", "1");
		const BRepMesh_Vertex & GetVertex(const Standard_Integer vIndex) const;
		%feature("autodoc", "1");
		const BRepMesh_Edge & GetEdge(const Standard_Integer eIndex) const;
		%feature("autodoc", "1");
		const BRepMesh_Triangle & GetTriangle(const Standard_Integer tIndex) const;
		%feature("autodoc", "1");
		void Init(BRepMesh_Array1OfVertexOfDelaun & Vertices);
		%feature("autodoc", "1");
		void Compute(TColStd_Array1OfInteger & VertexIndices);
		%feature("autodoc", "1");
		void ReCompute(TColStd_Array1OfInteger & VertexIndices);
		%feature("autodoc", "1");
		void SuperMesh(const Bnd_Box2d &theBox);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const Standard_Integer TrianIndex, const BRepMesh_Vertex &theVertex, Standard_Integer & edgeOn) const;
		%feature("autodoc", "1");
		Standard_Integer TriangleContaining(const BRepMesh_Vertex &theVertex);

};

%nodefaultctor BRepMesh_DataMapNodeOfDataMapOfVertexInteger;
class BRepMesh_DataMapNodeOfDataMapOfVertexInteger : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		BRepMesh_DataMapNodeOfDataMapOfVertexInteger(const TopoDS_Vertex &K, const Standard_Integer &I, const TCollection_MapNodePtr &n);
		%feature("autodoc", "1");
		TopoDS_Vertex & Key() const;
		%feature("autodoc", "1");
		Standard_Integer & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;
		%feature("autodoc", "1");
		virtual		~BRepMesh_DataMapNodeOfDataMapOfVertexInteger();

};
%extend BRepMesh_DataMapNodeOfDataMapOfVertexInteger {
	Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger GetHandle() {
	return *(Handle_BRepMesh_DataMapNodeOfDataMapOfVertexInteger*) &$self;
	}
};

%nodefaultctor BRepMesh_Edge;
class BRepMesh_Edge {
	public:
		%feature("autodoc", "1");
		~BRepMesh_Edge();
		%feature("autodoc", "1");
		BRepMesh_Edge(const Standard_Integer vDebut, const Standard_Integer vFin, const MeshDS_DegreeOfFreedom canMove, const Standard_Integer domain);
		%feature("autodoc", "1");
		Standard_Integer FirstNode() const;
		%feature("autodoc", "1");
		Standard_Integer LastNode() const;
		%feature("autodoc", "1");
		Standard_Integer Domain() const;
		%feature("autodoc", "1");
		MeshDS_DegreeOfFreedom Movability() const;
		%feature("autodoc", "1");
		void SetMovability(const MeshDS_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Boolean SameOrientation(const BRepMesh_Edge &Other) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Edge &Other) const;

};

%nodefaultctor BRepMesh_MapOfAsciiString;
class BRepMesh_MapOfAsciiString : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		BRepMesh_MapOfAsciiString(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		BRepMesh_MapOfAsciiString & Assign(const BRepMesh_MapOfAsciiString &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		~BRepMesh_MapOfAsciiString();
		%feature("autodoc", "1");
		Standard_Boolean Add(const TCollection_AsciiString &aKey);
		%feature("autodoc", "1");
		Standard_Boolean Contains(const TCollection_AsciiString &aKey) const;
		%feature("autodoc", "1");
		Standard_Boolean Remove(const TCollection_AsciiString &aKey);

};

%nodefaultctor BRepMesh_ElemHasherOfDataStructureOfDelaun;
class BRepMesh_ElemHasherOfDataStructureOfDelaun {
	public:
		%feature("autodoc", "1");
		~BRepMesh_ElemHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		BRepMesh_ElemHasherOfDataStructureOfDelaun();
		%feature("autodoc", "1");
		Standard_Integer HashCode(const BRepMesh_Triangle &K, const Standard_Integer Upper);
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Triangle &K1, const BRepMesh_Triangle &K2);

};

%nodefaultctor BRepMesh_Triangle;
class BRepMesh_Triangle {
	public:
		%feature("autodoc", "1");
		~BRepMesh_Triangle();
		%feature("autodoc", "1");
		BRepMesh_Triangle();
		%feature("autodoc", "1");
		BRepMesh_Triangle(const Standard_Integer e1, const Standard_Integer e2, const Standard_Integer e3, const Standard_Boolean o1, const Standard_Boolean o2, const Standard_Boolean o3, const MeshDS_DegreeOfFreedom canMove, const Standard_Integer domain=0);
		%feature("autodoc", "1");
		void Initialize(const Standard_Integer e1, const Standard_Integer e2, const Standard_Integer e3, const Standard_Boolean o1, const Standard_Boolean o2, const Standard_Boolean o3, const MeshDS_DegreeOfFreedom canMove, const Standard_Integer domain=0);
		%feature("autodoc", "1");
		void Edges(Standard_Integer & e1, Standard_Integer & e2, Standard_Integer & e3, Standard_Boolean & o1, Standard_Boolean & o2, Standard_Boolean & o3) const;
		%feature("autodoc", "1");
		MeshDS_DegreeOfFreedom Movability() const;
		%feature("autodoc", "1");
		void SetMovability(const MeshDS_DegreeOfFreedom Move);
		%feature("autodoc", "1");
		Standard_Integer Domain() const;
		%feature("autodoc", "1");
		Standard_Integer HashCode(const Standard_Integer Upper) const;
		%feature("autodoc", "1");
		Standard_Boolean IsEqual(const BRepMesh_Triangle &Other) const;

};

%nodefaultctor BRepMesh_ListIteratorOfListOfVertex;
class BRepMesh_ListIteratorOfListOfVertex {
	public:
		%feature("autodoc", "1");
		~BRepMesh_ListIteratorOfListOfVertex();
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfVertex();
		%feature("autodoc", "1");
		BRepMesh_ListIteratorOfListOfVertex(const BRepMesh_ListOfVertex &L);
		%feature("autodoc", "1");
		void Initialize(const BRepMesh_ListOfVertex &L);
		%feature("autodoc", "1");
		Standard_Boolean More() const;
		%feature("autodoc", "1");
		void Next();
		%feature("autodoc", "1");
		BRepMesh_Vertex & Value() const;

};