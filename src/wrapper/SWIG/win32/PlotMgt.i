/*

Copyright 2008-2009 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

*/
%module PlotMgt

%include PlotMgt_renames.i

%include typemaps.i
%include cmalloc.i
%include cpointer.i
%include carrays.i
%include exception.i
%include std_list.i
%include std_string.i
%include <python/std_basic_string.i>

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

/*
Standard_Integer & function transformation
*/
%typemap(argout) Standard_Integer &OutValue {
    PyObject *o, *o2, *o3;
    o = PyInt_FromLong(*$1);
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

%typemap(in,numinputs=0) Standard_Integer &OutValue(Standard_Integer temp) {
    $1 = &temp;
}

/*
Renaming operator = that can't be wrapped in Python
*/
%rename(Set) *::operator=;


%include PlotMgt_dependencies.i


%include PlotMgt_headers.i

typedef PlotMgt_PlotterDriver * PlotMgt_PlotterDriverPtr;

enum PlotMgt_PaperFormat {
	PlotMgt_PF_USERDEFINED,
	PlotMgt_PF_A0,
	PlotMgt_PF_A1,
	PlotMgt_PF_A2,
	PlotMgt_PF_A3,
	PlotMgt_PF_A4,
	PlotMgt_PF_A5,
	PlotMgt_PF_LETTER,
	PlotMgt_PF_LEGAL,
	PlotMgt_PF_STATEMENT,
	PlotMgt_PF_EXCLUSIVE,
	PlotMgt_PF_FOLIO,
	PlotMgt_PF_QUARTO,
	PlotMgt_PF_ENVELOPE,
	PlotMgt_PF_MONARCH,
	};

enum PlotMgt_TypeOfPlotterParameter {
	PlotMgt_TOPP_Undefined,
	PlotMgt_TOPP_Boolean,
	PlotMgt_TOPP_Integer,
	PlotMgt_TOPP_Real,
	PlotMgt_TOPP_String,
	PlotMgt_TOPP_ListString,
	};

enum PlotMgt_TypeOfOrigin {
	PlotMgt_TOO_CENTER,
	PlotMgt_TOO_BOTTOMLEFT,
	PlotMgt_TOO_BOTTOMRIGHT,
	PlotMgt_TOO_TOPLEFT,
	PlotMgt_TOO_TOPRIGHT,
	};

enum PlotMgt_ImageFormat {
	PlotMgt_IF_DISABLE,
	PlotMgt_IF_ENABLE,
	PlotMgt_IF_XWD,
	PlotMgt_IF_BMP,
	PlotMgt_IF_GIF,
	};

enum PlotMgt_TypeOfQuality {
	PlotMgt_TOQ_DRAFT,
	PlotMgt_TOQ_NORMAL,
	PlotMgt_TOQ_HIGH,
	PlotMgt_TOQ_BEST,
	};

enum PlotMgt_PlottingType {
	PlotMgt_PT_RASTER,
	PlotMgt_PT_PENEMULATOR,
	};



%nodefaultctor Handle_PlotMgt_PlotterParameter;
class Handle_PlotMgt_PlotterParameter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter();
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter(const Handle_PlotMgt_PlotterParameter &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter(const PlotMgt_PlotterParameter *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter & operator=(const Handle_PlotMgt_PlotterParameter &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter & operator=(const PlotMgt_PlotterParameter *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_PlotterParameter {
	PlotMgt_PlotterParameter* GetObject() {
	return (PlotMgt_PlotterParameter*)$self->Access();
	}
};
%extend Handle_PlotMgt_PlotterParameter {
	~Handle_PlotMgt_PlotterParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_PlotterParameter\n");}
	}
};


%nodefaultctor Handle_PlotMgt_PlotterDefinitionError;
class Handle_PlotMgt_PlotterDefinitionError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDefinitionError();
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDefinitionError(const Handle_PlotMgt_PlotterDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDefinitionError(const PlotMgt_PlotterDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDefinitionError & operator=(const Handle_PlotMgt_PlotterDefinitionError &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDefinitionError & operator=(const PlotMgt_PlotterDefinitionError *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDefinitionError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_PlotterDefinitionError {
	PlotMgt_PlotterDefinitionError* GetObject() {
	return (PlotMgt_PlotterDefinitionError*)$self->Access();
	}
};
%extend Handle_PlotMgt_PlotterDefinitionError {
	~Handle_PlotMgt_PlotterDefinitionError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_PlotterDefinitionError\n");}
	}
};


%nodefaultctor Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter;
class Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter();
		%feature("autodoc", "1");
		Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter(const Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter(const PlotMgt_SequenceNodeOfListOfPlotterParameter *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter & operator=(const Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter & operator=(const PlotMgt_SequenceNodeOfListOfPlotterParameter *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter {
	PlotMgt_SequenceNodeOfListOfPlotterParameter* GetObject() {
	return (PlotMgt_SequenceNodeOfListOfPlotterParameter*)$self->Access();
	}
};
%extend Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter {
	~Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter\n");}
	}
};


%nodefaultctor Handle_PlotMgt_HListOfMFTFonts;
class Handle_PlotMgt_HListOfMFTFonts : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTFonts();
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTFonts(const Handle_PlotMgt_HListOfMFTFonts &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTFonts(const PlotMgt_HListOfMFTFonts *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTFonts & operator=(const Handle_PlotMgt_HListOfMFTFonts &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTFonts & operator=(const PlotMgt_HListOfMFTFonts *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTFonts const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_HListOfMFTFonts {
	PlotMgt_HListOfMFTFonts* GetObject() {
	return (PlotMgt_HListOfMFTFonts*)$self->Access();
	}
};
%extend Handle_PlotMgt_HListOfMFTFonts {
	~Handle_PlotMgt_HListOfMFTFonts() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_HListOfMFTFonts\n");}
	}
};


%nodefaultctor Handle_PlotMgt_HListOfPlotterParameter;
class Handle_PlotMgt_HListOfPlotterParameter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfPlotterParameter();
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfPlotterParameter(const Handle_PlotMgt_HListOfPlotterParameter &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfPlotterParameter(const PlotMgt_HListOfPlotterParameter *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfPlotterParameter & operator=(const Handle_PlotMgt_HListOfPlotterParameter &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfPlotterParameter & operator=(const PlotMgt_HListOfPlotterParameter *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfPlotterParameter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_HListOfPlotterParameter {
	PlotMgt_HListOfPlotterParameter* GetObject() {
	return (PlotMgt_HListOfPlotterParameter*)$self->Access();
	}
};
%extend Handle_PlotMgt_HListOfPlotterParameter {
	~Handle_PlotMgt_HListOfPlotterParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_HListOfPlotterParameter\n");}
	}
};


%nodefaultctor Handle_PlotMgt_Plotter;
class Handle_PlotMgt_Plotter : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_Plotter();
		%feature("autodoc", "1");
		Handle_PlotMgt_Plotter(const Handle_PlotMgt_Plotter &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_Plotter(const PlotMgt_Plotter *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_Plotter & operator=(const Handle_PlotMgt_Plotter &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_Plotter & operator=(const PlotMgt_Plotter *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_Plotter const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_Plotter {
	PlotMgt_Plotter* GetObject() {
	return (PlotMgt_Plotter*)$self->Access();
	}
};
%extend Handle_PlotMgt_Plotter {
	~Handle_PlotMgt_Plotter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_Plotter\n");}
	}
};


%nodefaultctor Handle_PlotMgt_TextManager;
class Handle_PlotMgt_TextManager : public Handle_MFT_TextManager {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_TextManager();
		%feature("autodoc", "1");
		Handle_PlotMgt_TextManager(const Handle_PlotMgt_TextManager &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_TextManager(const PlotMgt_TextManager *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_TextManager & operator=(const Handle_PlotMgt_TextManager &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_TextManager & operator=(const PlotMgt_TextManager *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_TextManager const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_TextManager {
	PlotMgt_TextManager* GetObject() {
	return (PlotMgt_TextManager*)$self->Access();
	}
};
%extend Handle_PlotMgt_TextManager {
	~Handle_PlotMgt_TextManager() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_TextManager\n");}
	}
};


%nodefaultctor Handle_PlotMgt_PlotterAccessError;
class Handle_PlotMgt_PlotterAccessError : public Handle_Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterAccessError();
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterAccessError(const Handle_PlotMgt_PlotterAccessError &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterAccessError(const PlotMgt_PlotterAccessError *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterAccessError & operator=(const Handle_PlotMgt_PlotterAccessError &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterAccessError & operator=(const PlotMgt_PlotterAccessError *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterAccessError const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_PlotterAccessError {
	PlotMgt_PlotterAccessError* GetObject() {
	return (PlotMgt_PlotterAccessError*)$self->Access();
	}
};
%extend Handle_PlotMgt_PlotterAccessError {
	~Handle_PlotMgt_PlotterAccessError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_PlotterAccessError\n");}
	}
};


%nodefaultctor Handle_PlotMgt_HListOfMFTSizes;
class Handle_PlotMgt_HListOfMFTSizes : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTSizes();
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTSizes(const Handle_PlotMgt_HListOfMFTSizes &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTSizes(const PlotMgt_HListOfMFTSizes *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTSizes & operator=(const Handle_PlotMgt_HListOfMFTSizes &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTSizes & operator=(const PlotMgt_HListOfMFTSizes *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfMFTSizes const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_HListOfMFTSizes {
	PlotMgt_HListOfMFTSizes* GetObject() {
	return (PlotMgt_HListOfMFTSizes*)$self->Access();
	}
};
%extend Handle_PlotMgt_HListOfMFTSizes {
	~Handle_PlotMgt_HListOfMFTSizes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_HListOfMFTSizes\n");}
	}
};


%nodefaultctor Handle_PlotMgt_PlotterDriver;
class Handle_PlotMgt_PlotterDriver : public Handle_Aspect_Driver {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDriver();
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDriver(const Handle_PlotMgt_PlotterDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDriver(const PlotMgt_PlotterDriver *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDriver & operator=(const Handle_PlotMgt_PlotterDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDriver & operator=(const PlotMgt_PlotterDriver *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_PlotterDriver {
	PlotMgt_PlotterDriver* GetObject() {
	return (PlotMgt_PlotterDriver*)$self->Access();
	}
};
%extend Handle_PlotMgt_PlotterDriver {
	~Handle_PlotMgt_PlotterDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_PlotterDriver\n");}
	}
};


%nodefaultctor Handle_PlotMgt_ImageDriver;
class Handle_PlotMgt_ImageDriver : public Handle_PlotMgt_PlotterDriver {
	public:
		%feature("autodoc", "1");
		Handle_PlotMgt_ImageDriver();
		%feature("autodoc", "1");
		Handle_PlotMgt_ImageDriver(const Handle_PlotMgt_ImageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_ImageDriver(const PlotMgt_ImageDriver *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_ImageDriver & operator=(const Handle_PlotMgt_ImageDriver &aHandle);
		%feature("autodoc", "1");
		Handle_PlotMgt_ImageDriver & operator=(const PlotMgt_ImageDriver *anItem);
		%feature("autodoc", "1");
		Handle_PlotMgt_ImageDriver const DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_PlotMgt_ImageDriver {
	PlotMgt_ImageDriver* GetObject() {
	return (PlotMgt_ImageDriver*)$self->Access();
	}
};
%extend Handle_PlotMgt_ImageDriver {
	~Handle_PlotMgt_ImageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of Handle_PlotMgt_ImageDriver\n");}
	}
};


%nodefaultctor PlotMgt_PlotterDefinitionError;
class PlotMgt_PlotterDefinitionError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		PlotMgt_PlotterDefinitionError();
		%feature("autodoc", "1");
		PlotMgt_PlotterDefinitionError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterDefinitionError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_PlotterDefinitionError {
	Handle_PlotMgt_PlotterDefinitionError GetHandle() {
	return *(Handle_PlotMgt_PlotterDefinitionError*) &$self;
	}
};
%extend PlotMgt_PlotterDefinitionError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_PlotterDefinitionError {
	~PlotMgt_PlotterDefinitionError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_PlotterDefinitionError\n");}
	}
};


%nodefaultctor PlotMgt_TextManager;
class PlotMgt_TextManager : public MFT_TextManager {
	public:
		%feature("autodoc", "1");
		PlotMgt_TextManager(const Handle_PlotMgt_PlotterDriver &aDriver);
		%feature("autodoc", "1");
		virtual		void BeginString(const Quantity_Length X, const Quantity_Length Y, const Quantity_PlaneAngle anOrientation, const Quantity_Length aWidth, const Quantity_Length aHeight, const Quantity_PlaneAngle aSlant, const Standard_Integer aPaintType);
		%feature("autodoc", "1");
		virtual		Standard_Boolean BeginChar(const Standard_Integer aCharCode, const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetCharBoundingBox(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2, const Quantity_Length X3, const Quantity_Length Y3, const Quantity_Length X4, const Quantity_Length Y4);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SetCharEncoding(const char * anEncoding);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Moveto(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Lineto(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		Standard_Boolean Curveto(const Quantity_Length X1, const Quantity_Length Y1, const Quantity_Length X2, const Quantity_Length Y2, const Quantity_Length X3, const Quantity_Length Y3, const Quantity_Length X4, const Quantity_Length Y4);
		%feature("autodoc", "1");
		virtual		void ClosePath();
		%feature("autodoc", "1");
		virtual		Standard_Boolean EndChar(const Quantity_Length X, const Quantity_Length Y);
		%feature("autodoc", "1");
		virtual		void EndString();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_TextManager {
	Handle_PlotMgt_TextManager GetHandle() {
	return *(Handle_PlotMgt_TextManager*) &$self;
	}
};
%extend PlotMgt_TextManager {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_TextManager {
	~PlotMgt_TextManager() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_TextManager\n");}
	}
};


%nodefaultctor PlotMgt_PlotterDriver;
class PlotMgt_PlotterDriver : public Aspect_Driver {
	public:
		%feature("autodoc", "1");
		virtual		void BeginDraw();
		%feature("autodoc", "1");
		virtual		void Close();
		%feature("autodoc", "1");
		virtual		Standard_Boolean Spool(const Aspect_PlotMode aPlotMode=Aspect_PM_FILEONLY, const char * aReserved1=0, const Standard_Boolean aReserved2=0);
		%feature("autodoc", "1");
		virtual		void SetLineAttrib(const Standard_Integer ColorIndex, const Standard_Integer TypeIndex, const Standard_Integer WidthIndex);
		%feature("autodoc", "1");
		virtual		void SetTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FontIndex);
		%feature("autodoc", "1");
		virtual		void SetTextAttrib(const Standard_Integer ColorIndex, const Standard_Integer FontIndex, const Quantity_PlaneAngle aSlant, const Quantity_Factor aHScale, const Quantity_Factor aWScale, const Standard_Boolean isUnderlined=0);
		%feature("autodoc", "1");
		virtual		void SetPolyAttrib(const Standard_Integer ColorIndex, const Standard_Integer TileIndex, const Standard_Boolean DrawEdge=0);
		%feature("autodoc", "1");
		virtual		void SetMarkerAttrib(const Standard_Integer ColorIndex, const Standard_Integer WidthIndex, const Standard_Boolean FillMarker=0);
		%feature("autodoc", "1");
		void SetPixelSize(const Standard_Real aSize);
		%feature("autodoc", "1");
		virtual		void BeginPolyline(const Standard_Integer aNumber);
		%feature("autodoc", "1");
		virtual		void BeginPolygon(const Standard_Integer aNumber);
		%feature("autodoc", "1");
		virtual		void BeginSegments();
		%feature("autodoc", "1");
		virtual		void BeginArcs();
		%feature("autodoc", "1");
		virtual		void BeginPolyArcs();
		%feature("autodoc", "1");
		virtual		void BeginMarkers();
		%feature("autodoc", "1");
		virtual		void BeginPoints();
		%feature("autodoc", "1");
		virtual		void ClosePrimitive();
		%feature("autodoc", "1");
		virtual		Standard_Boolean IsKnownImage(const Handle_Standard_Transient &anImage);
		%feature("autodoc", "1");
		virtual		Standard_Boolean SizeOfImageFile(const char * anImageFile, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		virtual		void ClearImage(const Handle_Standard_Transient &anImageId);
		%feature("autodoc", "1");
		virtual		void ClearImageFile(const char * anImageFile);
		%feature("autodoc", "1");
		virtual		void DrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY);
		%feature("autodoc", "1");
		virtual		void DrawImageFile(const char * anImageFile, const Standard_ShortReal aX, const Standard_ShortReal aY, const Quantity_Factor aScale=1.0e+0);
		%feature("autodoc", "1");
		virtual		void FillAndDrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY, const Standard_Integer aWidth, const Standard_Integer aHeight, const Standard_Address anArrayOfPixels);
		%feature("autodoc", "1");
		virtual		void FillAndDrawImage(const Handle_Standard_Transient &anImageId, const Standard_ShortReal aX, const Standard_ShortReal aY, const Standard_Integer anIndexOfLine, const Standard_Integer aWidth, const Standard_Integer aHeight, const Standard_Address anArrayOfPixels);
		%feature("autodoc", "1");
		virtual		void DrawPoint(const Standard_ShortReal X, const Standard_ShortReal Y);
		%feature("autodoc", "1");
		virtual		void DrawSegment(const Standard_ShortReal X1, const Standard_ShortReal Y1, const Standard_ShortReal X2, const Standard_ShortReal Y2);
		%feature("autodoc", "1");
		void DrawRectangle(const Standard_ShortReal aX, const Standard_ShortReal aY, const Standard_ShortReal aDX, const Standard_ShortReal aDY);
		%feature("autodoc", "1");
		virtual		void DrawPolyline(const TShort_Array1OfShortReal &aListX, const TShort_Array1OfShortReal &aListY);
		%feature("autodoc", "1");
		virtual		void DrawPolygon(const TShort_Array1OfShortReal &aListX, const TShort_Array1OfShortReal &aListY);
		%feature("autodoc", "1");
		virtual		Standard_Boolean DrawArc(const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal anXradius, const Standard_ShortReal anYradius, const Standard_ShortReal aStartAngle=0.0, const Standard_ShortReal anOpenAngle=6.28318499999999957594809529837220907211303710938e+0);
		%feature("autodoc", "1");
		virtual		Standard_Boolean DrawPolyArc(const Standard_ShortReal X, const Standard_ShortReal Y, const Standard_ShortReal anXradius, const Standard_ShortReal anYradius, const Standard_ShortReal aStartAngle=0.0, const Standard_ShortReal anOpenAngle=6.28318499999999957594809529837220907211303710938e+0);
		%feature("autodoc", "1");
		virtual		void DrawMarker(const Standard_Integer aMarker, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Standard_ShortReal Width, const Standard_ShortReal Height, const Standard_ShortReal Angle=0.0);
		%feature("autodoc", "1");
		virtual		void DrawText(const TCollection_ExtendedString &aText, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Standard_ShortReal anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID);
		%feature("autodoc", "1");
		void DrawText(const char * aText, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Standard_ShortReal anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID);
		%feature("autodoc", "1");
		virtual		void DrawPolyText(const TCollection_ExtendedString &aText, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Quantity_Ratio aMargin=1.00000000000000005551115123125782702118158340454e-1, const Standard_ShortReal anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID);
		%feature("autodoc", "1");
		void DrawPolyText(const char * aText, const Standard_ShortReal Xpos, const Standard_ShortReal Ypos, const Quantity_Ratio aMargin=1.00000000000000005551115123125782702118158340454e-1, const Standard_ShortReal anAngle=0.0, const Aspect_TypeOfText aType=Aspect_TOT_SOLID);
		%feature("autodoc", "1");
		Handle_PlotMgt_Plotter Plotter() const;
		%feature("autodoc", "1");
		TCollection_AsciiString PlotFileName() const;
		%feature("autodoc", "1");
		TCollection_AsciiString DrawingName() const;
		%feature("autodoc", "1");
		TCollection_AsciiString SpoolDirectory() const;
		%feature("autodoc", "1");
		virtual		void WorkSpace(Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		Quantity_Length Convert(const Standard_Integer PV) const;
		%feature("autodoc", "1");
		virtual		Standard_Integer Convert(const Quantity_Length DV) const;
		%feature("autodoc", "1");
		virtual		void Convert(const Standard_Integer PX, const Standard_Integer PY, Standard_Real &OutValue, Standard_Real &OutValue) const;
		%feature("autodoc", "1");
		virtual		void Convert(const Quantity_Length DX, const Quantity_Length DY, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void LineAttrib(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Integer &OutValue) const;
		%feature("autodoc", "1");
		void PolyAttrib(Standard_Integer &OutValue, Standard_Integer &OutValue, Standard_Boolean & EdgeFlag) const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_PlotterDriver {
	Handle_PlotMgt_PlotterDriver GetHandle() {
	return *(Handle_PlotMgt_PlotterDriver*) &$self;
	}
};
%extend PlotMgt_PlotterDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_PlotterDriver {
	~PlotMgt_PlotterDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_PlotterDriver\n");}
	}
};


%nodefaultctor PlotMgt_SequenceNodeOfListOfPlotterParameter;
class PlotMgt_SequenceNodeOfListOfPlotterParameter : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		PlotMgt_SequenceNodeOfListOfPlotterParameter(const Handle_PlotMgt_PlotterParameter &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_SequenceNodeOfListOfPlotterParameter {
	Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter GetHandle() {
	return *(Handle_PlotMgt_SequenceNodeOfListOfPlotterParameter*) &$self;
	}
};
%extend PlotMgt_SequenceNodeOfListOfPlotterParameter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_SequenceNodeOfListOfPlotterParameter {
	~PlotMgt_SequenceNodeOfListOfPlotterParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_SequenceNodeOfListOfPlotterParameter\n");}
	}
};


%nodefaultctor PlotMgt_ListOfPlotterParameter;
class PlotMgt_ListOfPlotterParameter : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		PlotMgt_ListOfPlotterParameter();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const PlotMgt_ListOfPlotterParameter & Assign(const PlotMgt_ListOfPlotterParameter &Other);
		%feature("autodoc", "1");
		const PlotMgt_ListOfPlotterParameter & operator=(const PlotMgt_ListOfPlotterParameter &Other);
		%feature("autodoc", "1");
		void Append(const Handle_PlotMgt_PlotterParameter &T);
		%feature("autodoc", "1");
		void Append(PlotMgt_ListOfPlotterParameter & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_PlotMgt_PlotterParameter &T);
		%feature("autodoc", "1");
		void Prepend(PlotMgt_ListOfPlotterParameter & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_PlotMgt_PlotterParameter &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, PlotMgt_ListOfPlotterParameter & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_PlotMgt_PlotterParameter &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, PlotMgt_ListOfPlotterParameter & S);
		%feature("autodoc", "1");
		const Handle_PlotMgt_PlotterParameter & First() const;
		%feature("autodoc", "1");
		const Handle_PlotMgt_PlotterParameter & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, PlotMgt_ListOfPlotterParameter & S);
		%feature("autodoc", "1");
		const Handle_PlotMgt_PlotterParameter & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_PlotMgt_PlotterParameter & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_PlotMgt_PlotterParameter &I);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%extend PlotMgt_ListOfPlotterParameter {
	~PlotMgt_ListOfPlotterParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_ListOfPlotterParameter\n");}
	}
};


%nodefaultctor PlotMgt_HListOfPlotterParameter;
class PlotMgt_HListOfPlotterParameter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		PlotMgt_HListOfPlotterParameter();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const Handle_PlotMgt_PlotterParameter &anItem);
		%feature("autodoc", "1");
		void Append(const Handle_PlotMgt_HListOfPlotterParameter &aSequence);
		%feature("autodoc", "1");
		void Prepend(const Handle_PlotMgt_PlotterParameter &anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_PlotMgt_HListOfPlotterParameter &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_PlotMgt_PlotterParameter &anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_PlotMgt_HListOfPlotterParameter &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_PlotMgt_PlotterParameter &anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_PlotMgt_HListOfPlotterParameter &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfPlotterParameter Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const Handle_PlotMgt_PlotterParameter &anItem);
		%feature("autodoc", "1");
		const Handle_PlotMgt_PlotterParameter & Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterParameter & ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const PlotMgt_ListOfPlotterParameter & Sequence() const;
		%feature("autodoc", "1");
		PlotMgt_ListOfPlotterParameter & ChangeSequence();
		%feature("autodoc", "1");
		Handle_PlotMgt_HListOfPlotterParameter ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_HListOfPlotterParameter {
	Handle_PlotMgt_HListOfPlotterParameter GetHandle() {
	return *(Handle_PlotMgt_HListOfPlotterParameter*) &$self;
	}
};
%extend PlotMgt_HListOfPlotterParameter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_HListOfPlotterParameter {
	~PlotMgt_HListOfPlotterParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_HListOfPlotterParameter\n");}
	}
};


%nodefaultctor PlotMgt_ListOfMFTFonts;
class PlotMgt_ListOfMFTFonts {
	public:
		%feature("autodoc", "1");
		PlotMgt_ListOfMFTFonts(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PlotMgt_ListOfMFTFonts(const Handle_MFT_FontManager &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Handle_MFT_FontManager &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const PlotMgt_ListOfMFTFonts & Assign(const PlotMgt_ListOfMFTFonts &Other);
		%feature("autodoc", "1");
		const PlotMgt_ListOfMFTFonts & operator=(const PlotMgt_ListOfMFTFonts &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MFT_FontManager &Value);
		%feature("autodoc", "1");
		const Handle_MFT_FontManager & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_MFT_FontManager & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MFT_FontManager & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_MFT_FontManager & operator()(const Standard_Integer Index);

};
%extend PlotMgt_ListOfMFTFonts {
	~PlotMgt_ListOfMFTFonts() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_ListOfMFTFonts\n");}
	}
};


%nodefaultctor PlotMgt_Plotter;
class PlotMgt_Plotter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		PlotMgt_Plotter(const TCollection_AsciiString &theName, const Standard_Boolean fDirectDevice=0);
		%feature("autodoc", "1");
		Standard_Boolean CheckConfig(const Standard_Boolean theViewIs2D);
		%feature("autodoc", "1");
		Standard_Boolean Load();
		%feature("autodoc", "1");
		Standard_Boolean Save();
		%feature("autodoc", "1");
		Standard_Boolean SaveAs(const TCollection_AsciiString &aNewName);
		%feature("autodoc", "1");
		Standard_Boolean NeedToBeSaved() const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ListPlotters(const Standard_Boolean anActiveOnly=1);
		%feature("autodoc", "1");
		void Dump();
		%feature("autodoc", "1");
		Standard_Integer NumberOfParameters();
		%feature("autodoc", "1");
		const Handle_PlotMgt_PlotterParameter & Parameter(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		TCollection_AsciiString Name();
		%feature("autodoc", "1");
		TCollection_AsciiString Model();
		%feature("autodoc", "1");
		TCollection_AsciiString Title();
		%feature("autodoc", "1");
		TCollection_AsciiString FileExtension();
		%feature("autodoc", "1");
		TCollection_AsciiString PrintCommand();
		%feature("autodoc", "1");
		TCollection_AsciiString BeforePrintCommand();
		%feature("autodoc", "1");
		TCollection_AsciiString AfterPrintCommand();
		%feature("autodoc", "1");
		TCollection_AsciiString Comments();
		%feature("autodoc", "1");
		TCollection_AsciiString BackDraw();
		%feature("autodoc", "1");
		TCollection_AsciiString ColorMapping();
		%feature("autodoc", "1");
		TCollection_AsciiString OutputFormat();
		%feature("autodoc", "1");
		TCollection_AsciiString DriverType();
		%feature("autodoc", "1");
		Standard_Boolean MirrorPlot();
		%feature("autodoc", "1");
		Standard_Boolean MultiSheet();
		%feature("autodoc", "1");
		Standard_Boolean FramePlot();
		%feature("autodoc", "1");
		Standard_Boolean PlotTitle();
		%feature("autodoc", "1");
		Standard_Boolean PlotComments();
		%feature("autodoc", "1");
		Standard_Boolean PlotBackDraw();
		%feature("autodoc", "1");
		Standard_Boolean PlotterColor();
		%feature("autodoc", "1");
		Standard_Boolean EndOfPlotDriven();
		%feature("autodoc", "1");
		Standard_Boolean DryTimeDriven();
		%feature("autodoc", "1");
		Standard_Boolean PaperFeedDriven();
		%feature("autodoc", "1");
		Standard_Boolean MirrorDriven();
		%feature("autodoc", "1");
		Standard_Boolean CheckSumDriven();
		%feature("autodoc", "1");
		Standard_Boolean MediaSaverDriven();
		%feature("autodoc", "1");
		Standard_Boolean QualityDriven();
		%feature("autodoc", "1");
		Standard_Boolean CopyDriven();
		%feature("autodoc", "1");
		Standard_Boolean PaperCutDriven();
		%feature("autodoc", "1");
		Standard_Boolean RotateDriven();
		%feature("autodoc", "1");
		Standard_Boolean CircleDriven();
		%feature("autodoc", "1");
		Standard_Boolean EllipseDriven();
		%feature("autodoc", "1");
		Standard_Boolean CurveDriven();
		%feature("autodoc", "1");
		Standard_Boolean TextDriven();
		%feature("autodoc", "1");
		Standard_Boolean MarkerDriven();
		%feature("autodoc", "1");
		Standard_Boolean RectangleDriven();
		%feature("autodoc", "1");
		Standard_Boolean FillDriven();
		%feature("autodoc", "1");
		Standard_Boolean PlottingColor();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ListOfPaperFormats();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ListOfOrigins();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ListOfQualities();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ListOfImageFormats();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ListOfColorMappings();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ListOfOutputFormats();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString ListOfDriverTypes();
		%feature("autodoc", "1");
		Standard_Real PaperWidth();
		%feature("autodoc", "1");
		Standard_Real PaperLength();
		%feature("autodoc", "1");
		void PaperSize(Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void HardMargins(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void Margins(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		void HardMappings(Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue, Standard_Real &OutValue);
		%feature("autodoc", "1");
		Standard_Real SpaceDrawing();
		%feature("autodoc", "1");
		Standard_Real PhysicalStep();
		%feature("autodoc", "1");
		Standard_Real MinWidthOfLine();
		%feature("autodoc", "1");
		Standard_Real WidthMaxGap();
		%feature("autodoc", "1");
		Standard_Real LineTypeMaxGap();
		%feature("autodoc", "1");
		Standard_Real Resolution();
		%feature("autodoc", "1");
		Standard_Real ColorResolution();
		%feature("autodoc", "1");
		Standard_Real FillWidth();
		%feature("autodoc", "1");
		Standard_Integer MediaSaverDelay();
		%feature("autodoc", "1");
		Standard_Integer NumberOfCopies();
		%feature("autodoc", "1");
		Standard_Integer DryTime();
		%feature("autodoc", "1");
		Standard_Integer EndOfPlotTimer();
		%feature("autodoc", "1");
		Standard_Integer MaxColors();
		%feature("autodoc", "1");
		Standard_Integer MaxPatterns();
		%feature("autodoc", "1");
		Standard_Integer ColorMaxGap();
		%feature("autodoc", "1");
		Standard_Integer LinearDensity();
		%feature("autodoc", "1");
		Standard_Integer StylusNumber();
		%feature("autodoc", "1");
		Standard_Integer PenMaxNumber();
		%feature("autodoc", "1");
		Standard_Integer NumberInCarrousel();
		%feature("autodoc", "1");
		PlotMgt_TypeOfOrigin Origin();
		%feature("autodoc", "1");
		PlotMgt_TypeOfQuality Quality();
		%feature("autodoc", "1");
		PlotMgt_ImageFormat ImageFormat();
		%feature("autodoc", "1");
		PlotMgt_PlottingType PlottingType();
		%feature("autodoc", "1");
		PlotMgt_PaperFormat PaperFormat();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger PenColorIndex();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger PenWidthIndex();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfInteger PenTypeIndex();
		%feature("autodoc", "1");
		Handle_Aspect_ColorMap ColorMap();
		%feature("autodoc", "1");
		Handle_Aspect_WidthMap WidthMap();
		%feature("autodoc", "1");
		Handle_Aspect_TypeMap TypeMap();
		%feature("autodoc", "1");
		Handle_Aspect_FontMap FontMap();
		%feature("autodoc", "1");
		Handle_Aspect_FontMap AllFonts();
		%feature("autodoc", "1");
		void SetModel(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetTitle(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetFileExtension(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetPrintCommand(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetBeforePrintCommand(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetAfterPrintCommand(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetComments(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetBackDraw(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetColorMapping(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetOutputFormat(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetDriverType(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetMirrorPlot(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetMultiSheet(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetFramePlot(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetPlotTitle(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetPlotComments(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetPlotBackDraw(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetPlotterColor(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetEndOfPlotDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetDryTimeDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetPaperFeedDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetMirrorDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetCheckSumDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetMediaSaverDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetQualityDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetCopyDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetPaperCutDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetRotateDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetCircleDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetEllipseDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetCurveDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetTextDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetMarkerDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetRectangleDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetFillDriven(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetPlottingColor(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetPaperWidth(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetPaperLength(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetPaperSize(const Standard_Real aWidth, const Standard_Real aLength);
		%feature("autodoc", "1");
		void SetHardMargins(const Standard_Real aLeft, const Standard_Real aTop, const Standard_Real aRight, const Standard_Real aBottom);
		%feature("autodoc", "1");
		void SetMargins(const Standard_Real aLeft, const Standard_Real aTop, const Standard_Real aRight, const Standard_Real aBottom);
		%feature("autodoc", "1");
		void SetHardMappings(const Standard_Real aWOffset, const Standard_Real aWScale, const Standard_Real anLOffset, const Standard_Real anLScale);
		%feature("autodoc", "1");
		void SetSpaceDrawing(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetPhysicalStep(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetMinWidthOfLine(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetWidthMaxGap(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetLineTypeMaxGap(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetResolution(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetColorResolution(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetFillWidth(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetMediaSaverDelay(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetNumberOfCopies(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetDryTime(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetEndOfPlotTimer(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetMaxColors(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetMaxPatterns(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetColorMaxGap(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetLinearDensity(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetStylusNumber(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetPenMaxNumber(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetNumberInCarrousel(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetOrigin(const PlotMgt_TypeOfOrigin anOrigin);
		%feature("autodoc", "1");
		void SetQuality(const PlotMgt_TypeOfQuality aQuality);
		%feature("autodoc", "1");
		void SetImageFormat(const PlotMgt_ImageFormat anImageFormat);
		%feature("autodoc", "1");
		void SetPlottingType(const PlotMgt_PlottingType aPlottingType);
		%feature("autodoc", "1");
		void SetPenColorIndex(const Handle_TColStd_HSequenceOfInteger &aTable);
		%feature("autodoc", "1");
		void SetPenWidthIndex(const Handle_TColStd_HSequenceOfInteger &aTable);
		%feature("autodoc", "1");
		void SetPenTypeIndex(const Handle_TColStd_HSequenceOfInteger &aTable);
		%feature("autodoc", "1");
		void SetColorMap(const Handle_Aspect_ColorMap &aColorMap);
		%feature("autodoc", "1");
		void SetWidthMap(const Handle_Aspect_WidthMap &aWidthMap);
		%feature("autodoc", "1");
		void SetTypeMap(const Handle_Aspect_TypeMap &aTypeMap);
		%feature("autodoc", "1");
		void SetFontMap(const Handle_Aspect_FontMap &aFontMap);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_Plotter {
	Handle_PlotMgt_Plotter GetHandle() {
	return *(Handle_PlotMgt_Plotter*) &$self;
	}
};
%extend PlotMgt_Plotter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_Plotter {
	~PlotMgt_Plotter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_Plotter\n");}
	}
};


%nodefaultctor PlotMgt_HListOfMFTSizes;
class PlotMgt_HListOfMFTSizes : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		PlotMgt_HListOfMFTSizes(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PlotMgt_HListOfMFTSizes(const Standard_Integer Low, const Standard_Integer Up, const Standard_ShortReal &V);
		%feature("autodoc", "1");
		void Init(const Standard_ShortReal &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		const Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ShortReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const PlotMgt_ListOfMFTSizes & Array1() const;
		%feature("autodoc", "1");
		PlotMgt_ListOfMFTSizes & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_HListOfMFTSizes {
	Handle_PlotMgt_HListOfMFTSizes GetHandle() {
	return *(Handle_PlotMgt_HListOfMFTSizes*) &$self;
	}
};
%extend PlotMgt_HListOfMFTSizes {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_HListOfMFTSizes {
	~PlotMgt_HListOfMFTSizes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_HListOfMFTSizes\n");}
	}
};


%nodefaultctor PlotMgt_ImageDriver;
class PlotMgt_ImageDriver : public PlotMgt_PlotterDriver {
	public:
		%feature("autodoc", "1");
		PlotMgt_ImageDriver(const Handle_PlotMgt_Plotter &aPlotter, const char * aName);
		%feature("autodoc", "1");
		PlotMgt_ImageDriver(const char * aName);
		%feature("autodoc", "1");
		virtual		void BeginDraw();
		%feature("autodoc", "1");
		virtual		void EndDraw(const Standard_Boolean dontFlush=0);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_ImageDriver {
	Handle_PlotMgt_ImageDriver GetHandle() {
	return *(Handle_PlotMgt_ImageDriver*) &$self;
	}
};
%extend PlotMgt_ImageDriver {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_ImageDriver {
	~PlotMgt_ImageDriver() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_ImageDriver\n");}
	}
};


%nodefaultctor PlotMgt;
class PlotMgt {
	public:
		%feature("autodoc", "1");
		PlotMgt();
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString DeviceList();
		%feature("autodoc", "1");
		PlotMgt_TypeOfPlotterParameter TypeFromString(TCollection_AsciiString & aTypeString);
		%feature("autodoc", "1");
		TCollection_AsciiString StringFromType(const PlotMgt_TypeOfPlotterParameter aType);
		%feature("autodoc", "1");
		PlotMgt_TypeOfOrigin OriginFromString(TCollection_AsciiString & anOriginString);
		%feature("autodoc", "1");
		TCollection_AsciiString StringFromOrigin(const PlotMgt_TypeOfOrigin anOrigin);
		%feature("autodoc", "1");
		PlotMgt_TypeOfQuality QualityFromString(TCollection_AsciiString & aQualityString);
		%feature("autodoc", "1");
		TCollection_AsciiString StringFromQuality(const PlotMgt_TypeOfQuality aQuality);
		%feature("autodoc", "1");
		PlotMgt_ImageFormat ImageFormatFromString(TCollection_AsciiString & anImageFormatString);
		%feature("autodoc", "1");
		TCollection_AsciiString StringFromImageFormat(const PlotMgt_ImageFormat anImageFormat);
		%feature("autodoc", "1");
		PlotMgt_PlottingType PlottingTypeFromString(TCollection_AsciiString & aPlottingTypeString);
		%feature("autodoc", "1");
		TCollection_AsciiString StringFromPlottingType(const PlotMgt_PlottingType aPlottingType);
		%feature("autodoc", "1");
		PlotMgt_PaperFormat PaperFormatFromString(TCollection_AsciiString & aPaperFormatString);
		%feature("autodoc", "1");
		TCollection_AsciiString StringFromPaperFormat(const PlotMgt_PaperFormat aPaperFormat);
		%feature("autodoc", "1");
		void PaperSize(TCollection_AsciiString & aFormat, Standard_Real &OutValue, Standard_Real &OutValue);

};
%extend PlotMgt {
	~PlotMgt() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt\n");}
	}
};


%nodefaultctor PlotMgt_PlotterAccessError;
class PlotMgt_PlotterAccessError : public Standard_OutOfRange {
	public:
		%feature("autodoc", "1");
		PlotMgt_PlotterAccessError();
		%feature("autodoc", "1");
		PlotMgt_PlotterAccessError(const char * AString);
		%feature("autodoc", "1");
		void Raise(const char * aMessage="");
		%feature("autodoc", "1");
		void Raise(Standard_SStream & aReason);
		%feature("autodoc", "1");
		Handle_PlotMgt_PlotterAccessError NewInstance(const char * aMessage);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_PlotterAccessError {
	Handle_PlotMgt_PlotterAccessError GetHandle() {
	return *(Handle_PlotMgt_PlotterAccessError*) &$self;
	}
};
%extend PlotMgt_PlotterAccessError {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_PlotterAccessError {
	~PlotMgt_PlotterAccessError() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_PlotterAccessError\n");}
	}
};


%nodefaultctor PlotMgt_PlotterParameter;
class PlotMgt_PlotterParameter : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		PlotMgt_PlotterParameter(const TCollection_AsciiString &aName);
		%feature("autodoc", "1");
		Standard_Boolean Save(OSD_File & aFile);
		%feature("autodoc", "1");
		void SetState(const Standard_Boolean aState);
		%feature("autodoc", "1");
		void SetType(const PlotMgt_TypeOfPlotterParameter aType);
		%feature("autodoc", "1");
		void SValue(TCollection_AsciiString & aValue) const;
		%feature("autodoc", "1");
		Standard_Boolean BValue() const;
		%feature("autodoc", "1");
		Standard_Integer IValue() const;
		%feature("autodoc", "1");
		Standard_Real RValue() const;
		%feature("autodoc", "1");
		void LValues(Handle_TColStd_HSequenceOfAsciiString & aList) const;
		%feature("autodoc", "1");
		Handle_TColStd_HSequenceOfAsciiString MValue() const;
		%feature("autodoc", "1");
		TCollection_AsciiString Name() const;
		%feature("autodoc", "1");
		TCollection_AsciiString OldName() const;
		%feature("autodoc", "1");
		Standard_Boolean NeedToBeSaved() const;
		%feature("autodoc", "1");
		void Dump() const;
		%feature("autodoc", "1");
		void PutCommandInfo(const Aspect_FStream &outStream) const;
		%feature("autodoc", "1");
		void SetSValue(const TCollection_AsciiString &aValue);
		%feature("autodoc", "1");
		void SetBValue(const Standard_Boolean aValue);
		%feature("autodoc", "1");
		void SetIValue(const Standard_Integer aValue);
		%feature("autodoc", "1");
		void SetRValue(const Standard_Real aValue);
		%feature("autodoc", "1");
		void SetMValue(const Handle_TColStd_HSequenceOfAsciiString &aMap);
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_PlotterParameter {
	Handle_PlotMgt_PlotterParameter GetHandle() {
	return *(Handle_PlotMgt_PlotterParameter*) &$self;
	}
};
%extend PlotMgt_PlotterParameter {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_PlotterParameter {
	~PlotMgt_PlotterParameter() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_PlotterParameter\n");}
	}
};


%nodefaultctor PlotMgt_HListOfMFTFonts;
class PlotMgt_HListOfMFTFonts : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		PlotMgt_HListOfMFTFonts(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PlotMgt_HListOfMFTFonts(const Standard_Integer Low, const Standard_Integer Up, const Handle_MFT_FontManager &V);
		%feature("autodoc", "1");
		void Init(const Handle_MFT_FontManager &V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_MFT_FontManager &Value);
		%feature("autodoc", "1");
		const Handle_MFT_FontManager & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Handle_MFT_FontManager & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const PlotMgt_ListOfMFTFonts & Array1() const;
		%feature("autodoc", "1");
		PlotMgt_ListOfMFTFonts & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend PlotMgt_HListOfMFTFonts {
	Handle_PlotMgt_HListOfMFTFonts GetHandle() {
	return *(Handle_PlotMgt_HListOfMFTFonts*) &$self;
	}
};
%extend PlotMgt_HListOfMFTFonts {
	Standard_Integer __hash__() {
	return $self->HashCode(__PYTHONOCC_MAXINT__);
	}
};
%extend PlotMgt_HListOfMFTFonts {
	~PlotMgt_HListOfMFTFonts() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_HListOfMFTFonts\n");}
	}
};


%nodefaultctor PlotMgt_ListOfMFTSizes;
class PlotMgt_ListOfMFTSizes {
	public:
		%feature("autodoc", "1");
		PlotMgt_ListOfMFTSizes(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		PlotMgt_ListOfMFTSizes(const Standard_ShortReal &Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const Standard_ShortReal &V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const PlotMgt_ListOfMFTSizes & Assign(const PlotMgt_ListOfMFTSizes &Other);
		%feature("autodoc", "1");
		const PlotMgt_ListOfMFTSizes & operator=(const PlotMgt_ListOfMFTSizes &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Standard_ShortReal &Value);
		%feature("autodoc", "1");
		const Standard_ShortReal & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Standard_ShortReal & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		Standard_ShortReal & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Standard_ShortReal & operator()(const Standard_Integer Index);

};
%extend PlotMgt_ListOfMFTSizes {
	~PlotMgt_ListOfMFTSizes() {
	char *__env=getenv("PYTHONOCC_VERBOSE");
	if (__env){printf("## Call custom destructor for instance of PlotMgt_ListOfMFTSizes\n");}
	}
};