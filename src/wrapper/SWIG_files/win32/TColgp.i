/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/


%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%module TColgp
%include ../CommonIncludes.i
%include ../StandardDefines.i
%include ../ExceptionCatcher.i
%include ../FunctionTransformers.i
%include ../Operators.i

%include TColgp_renames.i


%include TColgp_required_python_modules.i


%include TColgp_dependencies.i


%include TColgp_headers.i




%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d;
class Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d(const Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d(const TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d & operator=(const TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d {
	TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d::~Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HSequenceOfXYZ;
class Handle_TColgp_HSequenceOfXYZ : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXYZ();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXYZ(const Handle_TColgp_HSequenceOfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXYZ(const TColgp_HSequenceOfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXYZ & operator=(const Handle_TColgp_HSequenceOfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXYZ & operator=(const TColgp_HSequenceOfXYZ *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HSequenceOfXYZ DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HSequenceOfXYZ {
	TColgp_HSequenceOfXYZ* GetObject() {
	return (TColgp_HSequenceOfXYZ*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HSequenceOfXYZ::~Handle_TColgp_HSequenceOfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HSequenceOfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfXY;
class Handle_TColgp_HArray2OfXY : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXY();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXY(const Handle_TColgp_HArray2OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXY(const TColgp_HArray2OfXY *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXY & operator=(const Handle_TColgp_HArray2OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXY & operator=(const TColgp_HArray2OfXY *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfXY DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfXY {
	TColgp_HArray2OfXY* GetObject() {
	return (TColgp_HArray2OfXY*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfXY::~Handle_TColgp_HArray2OfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfDir2d;
class Handle_TColgp_HArray2OfDir2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir2d(const Handle_TColgp_HArray2OfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir2d(const TColgp_HArray2OfDir2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir2d & operator=(const Handle_TColgp_HArray2OfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir2d & operator=(const TColgp_HArray2OfDir2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfDir2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfDir2d {
	TColgp_HArray2OfDir2d* GetObject() {
	return (TColgp_HArray2OfDir2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfDir2d::~Handle_TColgp_HArray2OfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfLin2d;
class Handle_TColgp_HArray2OfLin2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfLin2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfLin2d(const Handle_TColgp_HArray2OfLin2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfLin2d(const TColgp_HArray2OfLin2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfLin2d & operator=(const Handle_TColgp_HArray2OfLin2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfLin2d & operator=(const TColgp_HArray2OfLin2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfLin2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfLin2d {
	TColgp_HArray2OfLin2d* GetObject() {
	return (TColgp_HArray2OfLin2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfLin2d::~Handle_TColgp_HArray2OfLin2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfLin2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfXYZ;
class Handle_TColgp_HArray2OfXYZ : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXYZ();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXYZ(const Handle_TColgp_HArray2OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXYZ(const TColgp_HArray2OfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXYZ & operator=(const Handle_TColgp_HArray2OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfXYZ & operator=(const TColgp_HArray2OfXYZ *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfXYZ DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfXYZ {
	TColgp_HArray2OfXYZ* GetObject() {
	return (TColgp_HArray2OfXYZ*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfXYZ::~Handle_TColgp_HArray2OfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfXY;
class Handle_TColgp_HArray1OfXY : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY(const Handle_TColgp_HArray1OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY(const TColgp_HArray1OfXY *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY & operator=(const Handle_TColgp_HArray1OfXY &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXY & operator=(const TColgp_HArray1OfXY *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfXY DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfXY {
	TColgp_HArray1OfXY* GetObject() {
	return (TColgp_HArray1OfXY*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfXY::~Handle_TColgp_HArray1OfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfPnt;
class Handle_TColgp_HArray2OfPnt : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt(const Handle_TColgp_HArray2OfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt(const TColgp_HArray2OfPnt *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt & operator=(const Handle_TColgp_HArray2OfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt & operator=(const TColgp_HArray2OfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfPnt DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfPnt {
	TColgp_HArray2OfPnt* GetObject() {
	return (TColgp_HArray2OfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfPnt::~Handle_TColgp_HArray2OfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfDir2d;
class Handle_TColgp_SequenceNodeOfSequenceOfDir2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir2d();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir2d(const Handle_TColgp_SequenceNodeOfSequenceOfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir2d(const TColgp_SequenceNodeOfSequenceOfDir2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir2d & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir2d & operator=(const TColgp_SequenceNodeOfSequenceOfDir2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfDir2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfDir2d {
	TColgp_SequenceNodeOfSequenceOfDir2d* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfDir2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfDir2d::~Handle_TColgp_SequenceNodeOfSequenceOfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfDir2d;
class Handle_TColgp_HArray1OfDir2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir2d(const Handle_TColgp_HArray1OfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir2d(const TColgp_HArray1OfDir2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir2d & operator=(const Handle_TColgp_HArray1OfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir2d & operator=(const TColgp_HArray1OfDir2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfDir2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfDir2d {
	TColgp_HArray1OfDir2d* GetObject() {
	return (TColgp_HArray1OfDir2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfDir2d::~Handle_TColgp_HArray1OfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfLin2d;
class Handle_TColgp_HArray1OfLin2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfLin2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfLin2d(const Handle_TColgp_HArray1OfLin2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfLin2d(const TColgp_HArray1OfLin2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfLin2d & operator=(const Handle_TColgp_HArray1OfLin2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfLin2d & operator=(const TColgp_HArray1OfLin2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfLin2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfLin2d {
	TColgp_HArray1OfLin2d* GetObject() {
	return (TColgp_HArray1OfLin2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfLin2d::~Handle_TColgp_HArray1OfLin2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfLin2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfVec;
class Handle_TColgp_SequenceNodeOfSequenceOfVec : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec(const Handle_TColgp_SequenceNodeOfSequenceOfVec &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec(const TColgp_SequenceNodeOfSequenceOfVec *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfVec &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec & operator=(const TColgp_SequenceNodeOfSequenceOfVec *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfVec DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfVec {
	TColgp_SequenceNodeOfSequenceOfVec* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfVec*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfVec::~Handle_TColgp_SequenceNodeOfSequenceOfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfVec2d;
class Handle_TColgp_SequenceNodeOfSequenceOfVec2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec2d();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec2d(const Handle_TColgp_SequenceNodeOfSequenceOfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec2d(const TColgp_SequenceNodeOfSequenceOfVec2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec2d & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfVec2d & operator=(const TColgp_SequenceNodeOfSequenceOfVec2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfVec2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfVec2d {
	TColgp_SequenceNodeOfSequenceOfVec2d* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfVec2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfVec2d::~Handle_TColgp_SequenceNodeOfSequenceOfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfVec2d;
class Handle_TColgp_HArray1OfVec2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec2d(const Handle_TColgp_HArray1OfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec2d(const TColgp_HArray1OfVec2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec2d & operator=(const Handle_TColgp_HArray1OfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec2d & operator=(const TColgp_HArray1OfVec2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfVec2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfVec2d {
	TColgp_HArray1OfVec2d* GetObject() {
	return (TColgp_HArray1OfVec2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfVec2d::~Handle_TColgp_HArray1OfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfDir;
class Handle_TColgp_SequenceNodeOfSequenceOfDir : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir(const Handle_TColgp_SequenceNodeOfSequenceOfDir &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir(const TColgp_SequenceNodeOfSequenceOfDir *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfDir &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfDir & operator=(const TColgp_SequenceNodeOfSequenceOfDir *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfDir DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfDir {
	TColgp_SequenceNodeOfSequenceOfDir* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfDir*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfDir::~Handle_TColgp_SequenceNodeOfSequenceOfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HSequenceOfVec2d;
class Handle_TColgp_HSequenceOfVec2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec2d();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec2d(const Handle_TColgp_HSequenceOfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec2d(const TColgp_HSequenceOfVec2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec2d & operator=(const Handle_TColgp_HSequenceOfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec2d & operator=(const TColgp_HSequenceOfVec2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HSequenceOfVec2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HSequenceOfVec2d {
	TColgp_HSequenceOfVec2d* GetObject() {
	return (TColgp_HSequenceOfVec2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HSequenceOfVec2d::~Handle_TColgp_HSequenceOfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HSequenceOfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfPnt;
class Handle_TColgp_SequenceNodeOfSequenceOfPnt : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt(const Handle_TColgp_SequenceNodeOfSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt(const TColgp_SequenceNodeOfSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt & operator=(const TColgp_SequenceNodeOfSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfPnt DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfPnt {
	TColgp_SequenceNodeOfSequenceOfPnt* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfPnt::~Handle_TColgp_SequenceNodeOfSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfCirc2d;
class Handle_TColgp_HArray2OfCirc2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfCirc2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfCirc2d(const Handle_TColgp_HArray2OfCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfCirc2d(const TColgp_HArray2OfCirc2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfCirc2d & operator=(const Handle_TColgp_HArray2OfCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfCirc2d & operator=(const TColgp_HArray2OfCirc2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfCirc2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfCirc2d {
	TColgp_HArray2OfCirc2d* GetObject() {
	return (TColgp_HArray2OfCirc2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfCirc2d::~Handle_TColgp_HArray2OfCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfVec;
class Handle_TColgp_HArray1OfVec : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec(const Handle_TColgp_HArray1OfVec &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec(const TColgp_HArray1OfVec *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec & operator=(const Handle_TColgp_HArray1OfVec &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfVec & operator=(const TColgp_HArray1OfVec *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfVec DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfVec {
	TColgp_HArray1OfVec* GetObject() {
	return (TColgp_HArray1OfVec*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfVec::~Handle_TColgp_HArray1OfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfPnt2d;
class Handle_TColgp_HArray2OfPnt2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt2d(const Handle_TColgp_HArray2OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt2d(const TColgp_HArray2OfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt2d & operator=(const Handle_TColgp_HArray2OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfPnt2d & operator=(const TColgp_HArray2OfPnt2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfPnt2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfPnt2d {
	TColgp_HArray2OfPnt2d* GetObject() {
	return (TColgp_HArray2OfPnt2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfPnt2d::~Handle_TColgp_HArray2OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfPnt2d;
class Handle_TColgp_SequenceNodeOfSequenceOfPnt2d : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt2d();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt2d(const Handle_TColgp_SequenceNodeOfSequenceOfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt2d(const TColgp_SequenceNodeOfSequenceOfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt2d & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfPnt2d & operator=(const TColgp_SequenceNodeOfSequenceOfPnt2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfPnt2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfPnt2d {
	TColgp_SequenceNodeOfSequenceOfPnt2d* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfPnt2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfPnt2d::~Handle_TColgp_SequenceNodeOfSequenceOfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfXY;
class Handle_TColgp_SequenceNodeOfSequenceOfXY : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXY();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXY(const Handle_TColgp_SequenceNodeOfSequenceOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXY(const TColgp_SequenceNodeOfSequenceOfXY *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXY & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXY & operator=(const TColgp_SequenceNodeOfSequenceOfXY *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfXY DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfXY {
	TColgp_SequenceNodeOfSequenceOfXY* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfXY*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfXY::~Handle_TColgp_SequenceNodeOfSequenceOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfCirc2d;
class Handle_TColgp_HArray1OfCirc2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfCirc2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfCirc2d(const Handle_TColgp_HArray1OfCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfCirc2d(const TColgp_HArray1OfCirc2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfCirc2d & operator=(const Handle_TColgp_HArray1OfCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfCirc2d & operator=(const TColgp_HArray1OfCirc2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfCirc2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfCirc2d {
	TColgp_HArray1OfCirc2d* GetObject() {
	return (TColgp_HArray1OfCirc2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfCirc2d::~Handle_TColgp_HArray1OfCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfDir;
class Handle_TColgp_HArray2OfDir : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir(const Handle_TColgp_HArray2OfDir &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir(const TColgp_HArray2OfDir *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir & operator=(const Handle_TColgp_HArray2OfDir &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfDir & operator=(const TColgp_HArray2OfDir *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfDir DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfDir {
	TColgp_HArray2OfDir* GetObject() {
	return (TColgp_HArray2OfDir*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfDir::~Handle_TColgp_HArray2OfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfPnt2d;
class Handle_TColgp_HArray1OfPnt2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d(const Handle_TColgp_HArray1OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d(const TColgp_HArray1OfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d & operator=(const Handle_TColgp_HArray1OfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d & operator=(const TColgp_HArray1OfPnt2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfPnt2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfPnt2d {
	TColgp_HArray1OfPnt2d* GetObject() {
	return (TColgp_HArray1OfPnt2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfPnt2d::~Handle_TColgp_HArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfVec;
class Handle_TColgp_HArray2OfVec : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec(const Handle_TColgp_HArray2OfVec &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec(const TColgp_HArray2OfVec *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec & operator=(const Handle_TColgp_HArray2OfVec &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec & operator=(const TColgp_HArray2OfVec *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfVec DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfVec {
	TColgp_HArray2OfVec* GetObject() {
	return (TColgp_HArray2OfVec*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfVec::~Handle_TColgp_HArray2OfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HSequenceOfDir;
class Handle_TColgp_HSequenceOfDir : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir(const Handle_TColgp_HSequenceOfDir &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir(const TColgp_HSequenceOfDir *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir & operator=(const Handle_TColgp_HSequenceOfDir &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir & operator=(const TColgp_HSequenceOfDir *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HSequenceOfDir DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HSequenceOfDir {
	TColgp_HSequenceOfDir* GetObject() {
	return (TColgp_HSequenceOfDir*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HSequenceOfDir::~Handle_TColgp_HSequenceOfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HSequenceOfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HSequenceOfVec;
class Handle_TColgp_HSequenceOfVec : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec(const Handle_TColgp_HSequenceOfVec &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec(const TColgp_HSequenceOfVec *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec & operator=(const Handle_TColgp_HSequenceOfVec &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec & operator=(const TColgp_HSequenceOfVec *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HSequenceOfVec DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HSequenceOfVec {
	TColgp_HSequenceOfVec* GetObject() {
	return (TColgp_HSequenceOfVec*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HSequenceOfVec::~Handle_TColgp_HSequenceOfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HSequenceOfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d;
class Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d : public Handle_TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d();
		%feature("autodoc", "1");
		Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d(const Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d(const TColgp_DataMapNodeOfDataMapOfIntegerCirc2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d & operator=(const Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d & operator=(const TColgp_DataMapNodeOfDataMapOfIntegerCirc2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
	TColgp_DataMapNodeOfDataMapOfIntegerCirc2d* GetObject() {
	return (TColgp_DataMapNodeOfDataMapOfIntegerCirc2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d::~Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfXYZ;
class Handle_TColgp_HArray1OfXYZ : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ(const Handle_TColgp_HArray1OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ(const TColgp_HArray1OfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ & operator=(const Handle_TColgp_HArray1OfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfXYZ & operator=(const TColgp_HArray1OfXYZ *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfXYZ DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfXYZ {
	TColgp_HArray1OfXYZ* GetObject() {
	return (TColgp_HArray1OfXYZ*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfXYZ::~Handle_TColgp_HArray1OfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HSequenceOfXY;
class Handle_TColgp_HSequenceOfXY : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXY();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXY(const Handle_TColgp_HSequenceOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXY(const TColgp_HSequenceOfXY *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXY & operator=(const Handle_TColgp_HSequenceOfXY &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXY & operator=(const TColgp_HSequenceOfXY *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HSequenceOfXY DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HSequenceOfXY {
	TColgp_HSequenceOfXY* GetObject() {
	return (TColgp_HSequenceOfXY*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HSequenceOfXY::~Handle_TColgp_HSequenceOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HSequenceOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HSequenceOfDir2d;
class Handle_TColgp_HSequenceOfDir2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir2d();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir2d(const Handle_TColgp_HSequenceOfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir2d(const TColgp_HSequenceOfDir2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir2d & operator=(const Handle_TColgp_HSequenceOfDir2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir2d & operator=(const TColgp_HSequenceOfDir2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HSequenceOfDir2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HSequenceOfDir2d {
	TColgp_HSequenceOfDir2d* GetObject() {
	return (TColgp_HSequenceOfDir2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HSequenceOfDir2d::~Handle_TColgp_HSequenceOfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HSequenceOfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_SequenceNodeOfSequenceOfXYZ;
class Handle_TColgp_SequenceNodeOfSequenceOfXYZ : public Handle_TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXYZ();
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXYZ(const Handle_TColgp_SequenceNodeOfSequenceOfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXYZ(const TColgp_SequenceNodeOfSequenceOfXYZ *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXYZ & operator=(const Handle_TColgp_SequenceNodeOfSequenceOfXYZ &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_SequenceNodeOfSequenceOfXYZ & operator=(const TColgp_SequenceNodeOfSequenceOfXYZ *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_SequenceNodeOfSequenceOfXYZ DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_SequenceNodeOfSequenceOfXYZ {
	TColgp_SequenceNodeOfSequenceOfXYZ* GetObject() {
	return (TColgp_SequenceNodeOfSequenceOfXYZ*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_SequenceNodeOfSequenceOfXYZ::~Handle_TColgp_SequenceNodeOfSequenceOfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_SequenceNodeOfSequenceOfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray2OfVec2d;
class Handle_TColgp_HArray2OfVec2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec2d();
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec2d(const Handle_TColgp_HArray2OfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec2d(const TColgp_HArray2OfVec2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec2d & operator=(const Handle_TColgp_HArray2OfVec2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray2OfVec2d & operator=(const TColgp_HArray2OfVec2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray2OfVec2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray2OfVec2d {
	TColgp_HArray2OfVec2d* GetObject() {
	return (TColgp_HArray2OfVec2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray2OfVec2d::~Handle_TColgp_HArray2OfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray2OfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfPnt;
class Handle_TColgp_HArray1OfPnt : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt(const Handle_TColgp_HArray1OfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt(const TColgp_HArray1OfPnt *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt & operator=(const Handle_TColgp_HArray1OfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt & operator=(const TColgp_HArray1OfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfPnt DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfPnt {
	TColgp_HArray1OfPnt* GetObject() {
	return (TColgp_HArray1OfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfPnt::~Handle_TColgp_HArray1OfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HSequenceOfPnt2d;
class Handle_TColgp_HSequenceOfPnt2d : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt2d();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt2d(const Handle_TColgp_HSequenceOfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt2d(const TColgp_HSequenceOfPnt2d *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt2d & operator=(const Handle_TColgp_HSequenceOfPnt2d &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt2d & operator=(const TColgp_HSequenceOfPnt2d *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HSequenceOfPnt2d DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HSequenceOfPnt2d {
	TColgp_HSequenceOfPnt2d* GetObject() {
	return (TColgp_HSequenceOfPnt2d*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HSequenceOfPnt2d::~Handle_TColgp_HSequenceOfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HSequenceOfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HSequenceOfPnt;
class Handle_TColgp_HSequenceOfPnt : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt(const Handle_TColgp_HSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt(const TColgp_HSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt & operator=(const Handle_TColgp_HSequenceOfPnt &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt & operator=(const TColgp_HSequenceOfPnt *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HSequenceOfPnt DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HSequenceOfPnt {
	TColgp_HSequenceOfPnt* GetObject() {
	return (TColgp_HSequenceOfPnt*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HSequenceOfPnt::~Handle_TColgp_HSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor Handle_TColgp_HArray1OfDir;
class Handle_TColgp_HArray1OfDir : public Handle_MMgt_TShared {
	public:
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir();
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir(const Handle_TColgp_HArray1OfDir &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir(const TColgp_HArray1OfDir *anItem);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir & operator=(const Handle_TColgp_HArray1OfDir &aHandle);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfDir & operator=(const TColgp_HArray1OfDir *anItem);
		%feature("autodoc", "1");
		static		Handle_TColgp_HArray1OfDir DownCast(const Handle_Standard_Transient &AnObject);

};
%extend Handle_TColgp_HArray1OfDir {
	TColgp_HArray1OfDir* GetObject() {
	return (TColgp_HArray1OfDir*)$self->Access();
	}
};
%feature("shadow") Handle_TColgp_HArray1OfDir::~Handle_TColgp_HArray1OfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend Handle_TColgp_HArray1OfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HSequenceOfXYZ;
class TColgp_HSequenceOfXYZ : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HSequenceOfXYZ();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_XYZ anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfXYZ &aSequence);
		%feature("autodoc", "1");
		void Prepend(const gp_XYZ anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfXYZ &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const gp_XYZ anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfXYZ &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const gp_XYZ anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfXYZ &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXYZ Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const gp_XYZ anItem);
		%feature("autodoc", "1");
		const gp_XYZ  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_XYZ  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColgp_SequenceOfXYZ & Sequence() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfXYZ & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXYZ ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HSequenceOfXYZ {
	Handle_TColgp_HSequenceOfXYZ GetHandle() {
	return *(Handle_TColgp_HSequenceOfXYZ*) &$self;
	}
};
%extend TColgp_HSequenceOfXYZ {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HSequenceOfXYZ::~TColgp_HSequenceOfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HSequenceOfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfDir2d;
class TColgp_Array1OfDir2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfDir2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfDir2d(const gp_Dir2d Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Dir2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfDir2d & Assign(const TColgp_Array1OfDir2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfDir2d & operator=(const TColgp_Array1OfDir2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir2d Value);
		%feature("autodoc", "1");
		const gp_Dir2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Dir2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Dir2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Dir2d  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfDir2d::~TColgp_Array1OfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfDir;
class TColgp_Array2OfDir {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfDir(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfDir(const gp_Dir Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_Dir V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfDir & Assign(const TColgp_Array2OfDir &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfDir & operator=(const TColgp_Array2OfDir &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Dir Value);
		%feature("autodoc", "1");
		const gp_Dir  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_Dir  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Dir  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_Dir  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfDir::~TColgp_Array2OfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfDir;
class TColgp_HArray1OfDir : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfDir(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfDir(const Standard_Integer Low, const Standard_Integer Up, const gp_Dir V);
		%feature("autodoc", "1");
		void Init(const gp_Dir V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir Value);
		%feature("autodoc", "1");
		const gp_Dir  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Dir  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfDir & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfDir & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfDir {
	Handle_TColgp_HArray1OfDir GetHandle() {
	return *(Handle_TColgp_HArray1OfDir*) &$self;
	}
};
%extend TColgp_HArray1OfDir {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfDir::~TColgp_HArray1OfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfVec;
class TColgp_HArray2OfVec : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfVec(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfVec(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Vec V);
		%feature("autodoc", "1");
		void Init(const gp_Vec V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Vec Value);
		%feature("autodoc", "1");
		const gp_Vec  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Vec  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfVec & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfVec & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfVec {
	Handle_TColgp_HArray2OfVec GetHandle() {
	return *(Handle_TColgp_HArray2OfVec*) &$self;
	}
};
%extend TColgp_HArray2OfVec {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfVec::~TColgp_HArray2OfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfPnt;
class TColgp_HArray2OfPnt : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfPnt(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfPnt(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Pnt V);
		%feature("autodoc", "1");
		void Init(const gp_Pnt V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Pnt Value);
		%feature("autodoc", "1");
		const gp_Pnt  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Pnt  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfPnt & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfPnt & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfPnt {
	Handle_TColgp_HArray2OfPnt GetHandle() {
	return *(Handle_TColgp_HArray2OfPnt*) &$self;
	}
};
%extend TColgp_HArray2OfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfPnt::~TColgp_HArray2OfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfXY;
class TColgp_SequenceOfXY : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfXY();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfXY & Assign(const TColgp_SequenceOfXY &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfXY & operator=(const TColgp_SequenceOfXY &Other);
		%feature("autodoc", "1");
		void Append(const gp_XY T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfXY & S);
		%feature("autodoc", "1");
		void Prepend(const gp_XY T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfXY & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_XY I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfXY & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_XY T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfXY & S);
		%feature("autodoc", "1");
		const gp_XY  First() const;
		%feature("autodoc", "1");
		const gp_XY  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfXY & S);
		%feature("autodoc", "1");
		const gp_XY  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_XY  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XY I);
		%feature("autodoc", "1");
		gp_XY  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_XY  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfXY::~TColgp_SequenceOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfVec;
class TColgp_SequenceOfVec : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfVec();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfVec & Assign(const TColgp_SequenceOfVec &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfVec & operator=(const TColgp_SequenceOfVec &Other);
		%feature("autodoc", "1");
		void Append(const gp_Vec T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfVec & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Vec T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfVec & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Vec I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfVec & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Vec T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfVec & S);
		%feature("autodoc", "1");
		const gp_Vec  First() const;
		%feature("autodoc", "1");
		const gp_Vec  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfVec & S);
		%feature("autodoc", "1");
		const gp_Vec  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Vec  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec I);
		%feature("autodoc", "1");
		gp_Vec  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Vec  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfVec::~TColgp_SequenceOfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfVec2d;
class TColgp_Array1OfVec2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfVec2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfVec2d(const gp_Vec2d Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Vec2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfVec2d & Assign(const TColgp_Array1OfVec2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfVec2d & operator=(const TColgp_Array1OfVec2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec2d Value);
		%feature("autodoc", "1");
		const gp_Vec2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Vec2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Vec2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Vec2d  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfVec2d::~TColgp_Array1OfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfLin2d;
class TColgp_HArray2OfLin2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfLin2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfLin2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Lin2d V);
		%feature("autodoc", "1");
		void Init(const gp_Lin2d V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Lin2d Value);
		%feature("autodoc", "1");
		const gp_Lin2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Lin2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfLin2d & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfLin2d & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfLin2d {
	Handle_TColgp_HArray2OfLin2d GetHandle() {
	return *(Handle_TColgp_HArray2OfLin2d*) &$self;
	}
};
%extend TColgp_HArray2OfLin2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfLin2d::~TColgp_HArray2OfLin2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfLin2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfDir;
class TColgp_HArray2OfDir : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfDir(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfDir(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Dir V);
		%feature("autodoc", "1");
		void Init(const gp_Dir V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Dir Value);
		%feature("autodoc", "1");
		const gp_Dir  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Dir  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfDir & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfDir & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfDir {
	Handle_TColgp_HArray2OfDir GetHandle() {
	return *(Handle_TColgp_HArray2OfDir*) &$self;
	}
};
%extend TColgp_HArray2OfDir {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfDir::~TColgp_HArray2OfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfLin2d;
class TColgp_Array1OfLin2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfLin2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfLin2d(const gp_Lin2d Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Lin2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfLin2d & Assign(const TColgp_Array1OfLin2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfLin2d & operator=(const TColgp_Array1OfLin2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Lin2d Value);
		%feature("autodoc", "1");
		const gp_Lin2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Lin2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Lin2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Lin2d  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfLin2d::~TColgp_Array1OfLin2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfLin2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfXY;
class TColgp_Array2OfXY {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfXY(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfXY(const gp_XY Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_XY V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfXY & Assign(const TColgp_Array2OfXY &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfXY & operator=(const TColgp_Array2OfXY &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_XY Value);
		%feature("autodoc", "1");
		const gp_XY  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_XY  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_XY  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_XY  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfXY::~TColgp_Array2OfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfXY;
class TColgp_SequenceNodeOfSequenceOfXY : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfXY(const gp_XY I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_XY  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfXY {
	Handle_TColgp_SequenceNodeOfSequenceOfXY GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfXY*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfXY {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfXY::~TColgp_SequenceNodeOfSequenceOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HSequenceOfPnt2d;
class TColgp_HSequenceOfPnt2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HSequenceOfPnt2d();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Pnt2d anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfPnt2d &aSequence);
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt2d anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfPnt2d &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const gp_Pnt2d anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfPnt2d &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const gp_Pnt2d anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfPnt2d &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt2d Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const gp_Pnt2d anItem);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Pnt2d  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & Sequence() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt2d & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt2d ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HSequenceOfPnt2d {
	Handle_TColgp_HSequenceOfPnt2d GetHandle() {
	return *(Handle_TColgp_HSequenceOfPnt2d*) &$self;
	}
};
%extend TColgp_HSequenceOfPnt2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HSequenceOfPnt2d::~TColgp_HSequenceOfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HSequenceOfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfDir;
class TColgp_Array1OfDir {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfDir(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfDir(const gp_Dir Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Dir V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfDir & Assign(const TColgp_Array1OfDir &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfDir & operator=(const TColgp_Array1OfDir &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir Value);
		%feature("autodoc", "1");
		const gp_Dir  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Dir  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Dir  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Dir  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfDir::~TColgp_Array1OfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfVec2d;
class TColgp_HArray2OfVec2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfVec2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfVec2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Vec2d V);
		%feature("autodoc", "1");
		void Init(const gp_Vec2d V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Vec2d Value);
		%feature("autodoc", "1");
		const gp_Vec2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Vec2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfVec2d & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfVec2d & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfVec2d {
	Handle_TColgp_HArray2OfVec2d GetHandle() {
	return *(Handle_TColgp_HArray2OfVec2d*) &$self;
	}
};
%extend TColgp_HArray2OfVec2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfVec2d::~TColgp_HArray2OfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfXY;
class TColgp_Array1OfXY {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfXY(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfXY(const gp_XY Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_XY V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfXY & Assign(const TColgp_Array1OfXY &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfXY & operator=(const TColgp_Array1OfXY &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XY Value);
		%feature("autodoc", "1");
		const gp_XY  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_XY  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XY  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_XY  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfXY::~TColgp_Array1OfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfLin2d;
class TColgp_HArray1OfLin2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfLin2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfLin2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Lin2d V);
		%feature("autodoc", "1");
		void Init(const gp_Lin2d V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Lin2d Value);
		%feature("autodoc", "1");
		const gp_Lin2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Lin2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfLin2d & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfLin2d & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfLin2d {
	Handle_TColgp_HArray1OfLin2d GetHandle() {
	return *(Handle_TColgp_HArray1OfLin2d*) &$self;
	}
};
%extend TColgp_HArray1OfLin2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfLin2d::~TColgp_HArray1OfLin2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfLin2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfVec;
class TColgp_HArray1OfVec : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfVec(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfVec(const Standard_Integer Low, const Standard_Integer Up, const gp_Vec V);
		%feature("autodoc", "1");
		void Init(const gp_Vec V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec Value);
		%feature("autodoc", "1");
		const gp_Vec  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Vec  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfVec & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfVec & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfVec {
	Handle_TColgp_HArray1OfVec GetHandle() {
	return *(Handle_TColgp_HArray1OfVec*) &$self;
	}
};
%extend TColgp_HArray1OfVec {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfVec::~TColgp_HArray1OfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfDir2d;
class TColgp_HArray1OfDir2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfDir2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfDir2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Dir2d V);
		%feature("autodoc", "1");
		void Init(const gp_Dir2d V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir2d Value);
		%feature("autodoc", "1");
		const gp_Dir2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Dir2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfDir2d & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfDir2d & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfDir2d {
	Handle_TColgp_HArray1OfDir2d GetHandle() {
	return *(Handle_TColgp_HArray1OfDir2d*) &$self;
	}
};
%extend TColgp_HArray1OfDir2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfDir2d::~TColgp_HArray1OfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfCirc2d;
class TColgp_HArray2OfCirc2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfCirc2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfCirc2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Circ2d V);
		%feature("autodoc", "1");
		void Init(const gp_Circ2d V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Circ2d Value);
		%feature("autodoc", "1");
		const gp_Circ2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Circ2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfCirc2d & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfCirc2d & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfCirc2d {
	Handle_TColgp_HArray2OfCirc2d GetHandle() {
	return *(Handle_TColgp_HArray2OfCirc2d*) &$self;
	}
};
%extend TColgp_HArray2OfCirc2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfCirc2d::~TColgp_HArray2OfCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfPnt;
class TColgp_HArray1OfPnt : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfPnt(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfPnt(const Standard_Integer Low, const Standard_Integer Up, const gp_Pnt V);
		%feature("autodoc", "1");
		void Init(const gp_Pnt V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt Value);
		%feature("autodoc", "1");
		const gp_Pnt  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfPnt & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfPnt {
	Handle_TColgp_HArray1OfPnt GetHandle() {
	return *(Handle_TColgp_HArray1OfPnt*) &$self;
	}
};
%extend TColgp_HArray1OfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfPnt::~TColgp_HArray1OfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfVec;
class TColgp_Array2OfVec {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfVec(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfVec(const gp_Vec Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_Vec V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfVec & Assign(const TColgp_Array2OfVec &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfVec & operator=(const TColgp_Array2OfVec &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Vec Value);
		%feature("autodoc", "1");
		const gp_Vec  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_Vec  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Vec  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_Vec  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfVec::~TColgp_Array2OfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HSequenceOfPnt;
class TColgp_HSequenceOfPnt : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HSequenceOfPnt();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Pnt anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfPnt &aSequence);
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfPnt &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const gp_Pnt anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfPnt &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const gp_Pnt anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfPnt &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const gp_Pnt anItem);
		%feature("autodoc", "1");
		const gp_Pnt  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Pnt  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Sequence() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfPnt ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HSequenceOfPnt {
	Handle_TColgp_HSequenceOfPnt GetHandle() {
	return *(Handle_TColgp_HSequenceOfPnt*) &$self;
	}
};
%extend TColgp_HSequenceOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HSequenceOfPnt::~TColgp_HSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfDir;
class TColgp_SequenceOfDir : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfDir();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfDir & Assign(const TColgp_SequenceOfDir &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfDir & operator=(const TColgp_SequenceOfDir &Other);
		%feature("autodoc", "1");
		void Append(const gp_Dir T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfDir & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Dir T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfDir & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Dir I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfDir & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Dir T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfDir & S);
		%feature("autodoc", "1");
		const gp_Dir  First() const;
		%feature("autodoc", "1");
		const gp_Dir  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfDir & S);
		%feature("autodoc", "1");
		const gp_Dir  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Dir  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir I);
		%feature("autodoc", "1");
		gp_Dir  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Dir  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfDir::~TColgp_SequenceOfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfDir;
class TColgp_SequenceNodeOfSequenceOfDir : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfDir(const gp_Dir I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Dir  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfDir {
	Handle_TColgp_SequenceNodeOfSequenceOfDir GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfDir*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfDir {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfDir::~TColgp_SequenceNodeOfSequenceOfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfXYZ;
class TColgp_SequenceOfXYZ : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfXYZ();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfXYZ & Assign(const TColgp_SequenceOfXYZ &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfXYZ & operator=(const TColgp_SequenceOfXYZ &Other);
		%feature("autodoc", "1");
		void Append(const gp_XYZ T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfXYZ & S);
		%feature("autodoc", "1");
		void Prepend(const gp_XYZ T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfXYZ & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_XYZ I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfXYZ & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_XYZ T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfXYZ & S);
		%feature("autodoc", "1");
		const gp_XYZ  First() const;
		%feature("autodoc", "1");
		const gp_XYZ  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfXYZ & S);
		%feature("autodoc", "1");
		const gp_XYZ  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_XYZ  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XYZ I);
		%feature("autodoc", "1");
		gp_XYZ  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_XYZ  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfXYZ::~TColgp_SequenceOfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfDir2d;
class TColgp_HArray2OfDir2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfDir2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfDir2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Dir2d V);
		%feature("autodoc", "1");
		void Init(const gp_Dir2d V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Dir2d Value);
		%feature("autodoc", "1");
		const gp_Dir2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Dir2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfDir2d & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfDir2d & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfDir2d {
	Handle_TColgp_HArray2OfDir2d GetHandle() {
	return *(Handle_TColgp_HArray2OfDir2d*) &$self;
	}
};
%extend TColgp_HArray2OfDir2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfDir2d::~TColgp_HArray2OfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfVec2d;
class TColgp_HArray1OfVec2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfVec2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfVec2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Vec2d V);
		%feature("autodoc", "1");
		void Init(const gp_Vec2d V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec2d Value);
		%feature("autodoc", "1");
		const gp_Vec2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Vec2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfVec2d & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfVec2d & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfVec2d {
	Handle_TColgp_HArray1OfVec2d GetHandle() {
	return *(Handle_TColgp_HArray1OfVec2d*) &$self;
	}
};
%extend TColgp_HArray1OfVec2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfVec2d::~TColgp_HArray1OfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfXYZ;
class TColgp_Array1OfXYZ {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfXYZ(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfXYZ(const gp_XYZ Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_XYZ V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfXYZ & Assign(const TColgp_Array1OfXYZ &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfXYZ & operator=(const TColgp_Array1OfXYZ &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XYZ Value);
		%feature("autodoc", "1");
		const gp_XYZ  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_XYZ  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XYZ  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_XYZ  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfXYZ::~TColgp_Array1OfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfVec;
class TColgp_SequenceNodeOfSequenceOfVec : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfVec(const gp_Vec I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Vec  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfVec {
	Handle_TColgp_SequenceNodeOfSequenceOfVec GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfVec*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfVec {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfVec::~TColgp_SequenceNodeOfSequenceOfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfPnt2d;
class TColgp_SequenceNodeOfSequenceOfPnt2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfPnt2d(const gp_Pnt2d I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Pnt2d  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfPnt2d {
	Handle_TColgp_SequenceNodeOfSequenceOfPnt2d GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfPnt2d*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfPnt2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfPnt2d::~TColgp_SequenceNodeOfSequenceOfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfPnt2d;
class TColgp_SequenceOfPnt2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & Assign(const TColgp_SequenceOfPnt2d &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt2d & operator=(const TColgp_SequenceOfPnt2d &Other);
		%feature("autodoc", "1");
		void Append(const gp_Pnt2d T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfPnt2d & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt2d T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfPnt2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Pnt2d I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfPnt2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Pnt2d T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfPnt2d & S);
		%feature("autodoc", "1");
		const gp_Pnt2d  First() const;
		%feature("autodoc", "1");
		const gp_Pnt2d  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfPnt2d & S);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt2d I);
		%feature("autodoc", "1");
		gp_Pnt2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Pnt2d  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfPnt2d::~TColgp_SequenceOfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d;
class TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d : public TCollection_BasicMapIterator {
	public:
		%feature("autodoc", "1");
		TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d();
		%feature("autodoc", "1");
		TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d(const TColgp_DataMapOfIntegerCirc2d &aMap);
		%feature("autodoc", "1");
		void Initialize(const TColgp_DataMapOfIntegerCirc2d &aMap);
		%feature("autodoc", "1");
		const Standard_Integer & Key() const;
		%feature("autodoc", "1");
		const gp_Circ2d  Value() const;

};
%feature("shadow") TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d::~TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_DataMapIteratorOfDataMapOfIntegerCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfXYZ;
class TColgp_HArray1OfXYZ : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfXYZ(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfXYZ(const Standard_Integer Low, const Standard_Integer Up, const gp_XYZ V);
		%feature("autodoc", "1");
		void Init(const gp_XYZ V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XYZ Value);
		%feature("autodoc", "1");
		const gp_XYZ  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XYZ  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfXYZ & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfXYZ & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfXYZ {
	Handle_TColgp_HArray1OfXYZ GetHandle() {
	return *(Handle_TColgp_HArray1OfXYZ*) &$self;
	}
};
%extend TColgp_HArray1OfXYZ {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfXYZ::~TColgp_HArray1OfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfXYZ;
class TColgp_Array2OfXYZ {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfXYZ(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfXYZ(const gp_XYZ Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_XYZ V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfXYZ & Assign(const TColgp_Array2OfXYZ &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfXYZ & operator=(const TColgp_Array2OfXYZ &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_XYZ Value);
		%feature("autodoc", "1");
		const gp_XYZ  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_XYZ  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_XYZ  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_XYZ  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfXYZ::~TColgp_Array2OfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfPnt2d;
class TColgp_Array1OfPnt2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfPnt2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfPnt2d(const gp_Pnt2d Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Pnt2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt2d & Assign(const TColgp_Array1OfPnt2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt2d & operator=(const TColgp_Array1OfPnt2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt2d Value);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Pnt2d  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfPnt2d::~TColgp_Array1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfDir2d;
class TColgp_SequenceOfDir2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfDir2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfDir2d & Assign(const TColgp_SequenceOfDir2d &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfDir2d & operator=(const TColgp_SequenceOfDir2d &Other);
		%feature("autodoc", "1");
		void Append(const gp_Dir2d T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfDir2d & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Dir2d T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfDir2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Dir2d I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfDir2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Dir2d T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfDir2d & S);
		%feature("autodoc", "1");
		const gp_Dir2d  First() const;
		%feature("autodoc", "1");
		const gp_Dir2d  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfDir2d & S);
		%feature("autodoc", "1");
		const gp_Dir2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Dir2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Dir2d I);
		%feature("autodoc", "1");
		gp_Dir2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Dir2d  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfDir2d::~TColgp_SequenceOfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfVec;
class TColgp_Array1OfVec {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfVec(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfVec(const gp_Vec Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Vec V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfVec & Assign(const TColgp_Array1OfVec &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfVec & operator=(const TColgp_Array1OfVec &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec Value);
		%feature("autodoc", "1");
		const gp_Vec  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Vec  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Vec  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Vec  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfVec::~TColgp_Array1OfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfPnt;
class TColgp_Array2OfPnt {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfPnt(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfPnt(const gp_Pnt Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_Pnt V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfPnt & Assign(const TColgp_Array2OfPnt &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfPnt & operator=(const TColgp_Array2OfPnt &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Pnt Value);
		%feature("autodoc", "1");
		const gp_Pnt  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_Pnt  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Pnt  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_Pnt  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfPnt::~TColgp_Array2OfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfXY;
class TColgp_HArray2OfXY : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfXY(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfXY(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_XY V);
		%feature("autodoc", "1");
		void Init(const gp_XY V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_XY Value);
		%feature("autodoc", "1");
		const gp_XY  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_XY  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfXY & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfXY & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfXY {
	Handle_TColgp_HArray2OfXY GetHandle() {
	return *(Handle_TColgp_HArray2OfXY*) &$self;
	}
};
%extend TColgp_HArray2OfXY {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfXY::~TColgp_HArray2OfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HSequenceOfVec;
class TColgp_HSequenceOfVec : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HSequenceOfVec();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Vec anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfVec &aSequence);
		%feature("autodoc", "1");
		void Prepend(const gp_Vec anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfVec &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const gp_Vec anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfVec &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const gp_Vec anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfVec &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const gp_Vec anItem);
		%feature("autodoc", "1");
		const gp_Vec  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Vec  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColgp_SequenceOfVec & Sequence() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfVec & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HSequenceOfVec {
	Handle_TColgp_HSequenceOfVec GetHandle() {
	return *(Handle_TColgp_HSequenceOfVec*) &$self;
	}
};
%extend TColgp_HSequenceOfVec {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HSequenceOfVec::~TColgp_HSequenceOfVec %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HSequenceOfVec {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfXY;
class TColgp_HArray1OfXY : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfXY(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfXY(const Standard_Integer Low, const Standard_Integer Up, const gp_XY V);
		%feature("autodoc", "1");
		void Init(const gp_XY V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_XY Value);
		%feature("autodoc", "1");
		const gp_XY  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_XY  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfXY & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfXY & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfXY {
	Handle_TColgp_HArray1OfXY GetHandle() {
	return *(Handle_TColgp_HArray1OfXY*) &$self;
	}
};
%extend TColgp_HArray1OfXY {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfXY::~TColgp_HArray1OfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfDir2d;
class TColgp_SequenceNodeOfSequenceOfDir2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfDir2d(const gp_Dir2d I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Dir2d  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfDir2d {
	Handle_TColgp_SequenceNodeOfSequenceOfDir2d GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfDir2d*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfDir2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfDir2d::~TColgp_SequenceNodeOfSequenceOfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d;
class TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d(const Handle_TColgp_HArray1OfPnt2d &I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d & Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d {
	Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d::~TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfXYZ;
class TColgp_HArray2OfXYZ : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfXYZ(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfXYZ(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_XYZ V);
		%feature("autodoc", "1");
		void Init(const gp_XYZ V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_XYZ Value);
		%feature("autodoc", "1");
		const gp_XYZ  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_XYZ  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfXYZ & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfXYZ & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfXYZ {
	Handle_TColgp_HArray2OfXYZ GetHandle() {
	return *(Handle_TColgp_HArray2OfXYZ*) &$self;
	}
};
%extend TColgp_HArray2OfXYZ {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfXYZ::~TColgp_HArray2OfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfVec2d;
class TColgp_SequenceNodeOfSequenceOfVec2d : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfVec2d(const gp_Vec2d I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Vec2d  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfVec2d {
	Handle_TColgp_SequenceNodeOfSequenceOfVec2d GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfVec2d*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfVec2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfVec2d::~TColgp_SequenceNodeOfSequenceOfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfVec2d;
class TColgp_SequenceOfVec2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfVec2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfVec2d & Assign(const TColgp_SequenceOfVec2d &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfVec2d & operator=(const TColgp_SequenceOfVec2d &Other);
		%feature("autodoc", "1");
		void Append(const gp_Vec2d T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfVec2d & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Vec2d T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfVec2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Vec2d I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfVec2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Vec2d T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfVec2d & S);
		%feature("autodoc", "1");
		const gp_Vec2d  First() const;
		%feature("autodoc", "1");
		const gp_Vec2d  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfVec2d & S);
		%feature("autodoc", "1");
		const gp_Vec2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Vec2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Vec2d I);
		%feature("autodoc", "1");
		gp_Vec2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Vec2d  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfVec2d::~TColgp_SequenceOfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfCirc2d;
class TColgp_HArray1OfCirc2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfCirc2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfCirc2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Circ2d V);
		%feature("autodoc", "1");
		void Init(const gp_Circ2d V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Circ2d Value);
		%feature("autodoc", "1");
		const gp_Circ2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Circ2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfCirc2d & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfCirc2d & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfCirc2d {
	Handle_TColgp_HArray1OfCirc2d GetHandle() {
	return *(Handle_TColgp_HArray1OfCirc2d*) &$self;
	}
};
%extend TColgp_HArray1OfCirc2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfCirc2d::~TColgp_HArray1OfCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray2OfPnt2d;
class TColgp_HArray2OfPnt2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray2OfPnt2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_HArray2OfPnt2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2, const gp_Pnt2d V);
		%feature("autodoc", "1");
		void Init(const gp_Pnt2d V);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Pnt2d Value);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Pnt2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		const TColgp_Array2OfPnt2d & Array2() const;
		%feature("autodoc", "1");
		TColgp_Array2OfPnt2d & ChangeArray2();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray2OfPnt2d {
	Handle_TColgp_HArray2OfPnt2d GetHandle() {
	return *(Handle_TColgp_HArray2OfPnt2d*) &$self;
	}
};
%extend TColgp_HArray2OfPnt2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray2OfPnt2d::~TColgp_HArray2OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray2OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfPnt;
class TColgp_Array1OfPnt {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfPnt(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfPnt(const gp_Pnt Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Pnt V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt & Assign(const TColgp_Array1OfPnt &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt & operator=(const TColgp_Array1OfPnt &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt Value);
		%feature("autodoc", "1");
		const gp_Pnt  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Pnt  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfPnt::~TColgp_Array1OfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfPnt;
class TColgp_SequenceOfPnt : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfPnt();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & Assign(const TColgp_SequenceOfPnt &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfPnt & operator=(const TColgp_SequenceOfPnt &Other);
		%feature("autodoc", "1");
		void Append(const gp_Pnt T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void Prepend(const gp_Pnt T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const gp_Pnt I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfPnt & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const gp_Pnt T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfPnt & S);
		%feature("autodoc", "1");
		const gp_Pnt  First() const;
		%feature("autodoc", "1");
		const gp_Pnt  Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfPnt & S);
		%feature("autodoc", "1");
		const gp_Pnt  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Pnt  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt I);
		%feature("autodoc", "1");
		gp_Pnt  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Pnt  operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfPnt::~TColgp_SequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfPnt;
class TColgp_SequenceNodeOfSequenceOfPnt : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfPnt(const gp_Pnt I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_Pnt  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfPnt {
	Handle_TColgp_SequenceNodeOfSequenceOfPnt GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfPnt*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfPnt {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfPnt::~TColgp_SequenceNodeOfSequenceOfPnt %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfPnt {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfCirc2d;
class TColgp_Array2OfCirc2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfCirc2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfCirc2d(const gp_Circ2d Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_Circ2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfCirc2d & Assign(const TColgp_Array2OfCirc2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfCirc2d & operator=(const TColgp_Array2OfCirc2d &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Circ2d Value);
		%feature("autodoc", "1");
		const gp_Circ2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_Circ2d  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Circ2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_Circ2d  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfCirc2d::~TColgp_Array2OfCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_DataMapNodeOfDataMapOfIntegerCirc2d;
class TColgp_DataMapNodeOfDataMapOfIntegerCirc2d : public TCollection_MapNode {
	public:
		%feature("autodoc", "1");
		TColgp_DataMapNodeOfDataMapOfIntegerCirc2d(const Standard_Integer &K, const gp_Circ2d I, const TCollection_MapNodePtr &n);
		%feature("autodoc","1");
		%extend {
				Standard_Integer GetKey() {
				return (Standard_Integer) $self->Key();
				}
		};
		%feature("autodoc","1");
		%extend {
				void SetKey(Standard_Integer value ) {
				$self->Key()=value;
				}
		};
		%feature("autodoc", "1");
		gp_Circ2d  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
	Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d GetHandle() {
	return *(Handle_TColgp_DataMapNodeOfDataMapOfIntegerCirc2d*) &$self;
	}
};
%extend TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_DataMapNodeOfDataMapOfIntegerCirc2d::~TColgp_DataMapNodeOfDataMapOfIntegerCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_DataMapNodeOfDataMapOfIntegerCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfDir2d;
class TColgp_Array2OfDir2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfDir2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfDir2d(const gp_Dir2d Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_Dir2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfDir2d & Assign(const TColgp_Array2OfDir2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfDir2d & operator=(const TColgp_Array2OfDir2d &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Dir2d Value);
		%feature("autodoc", "1");
		const gp_Dir2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_Dir2d  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Dir2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_Dir2d  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfDir2d::~TColgp_Array2OfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HArray1OfPnt2d;
class TColgp_HArray1OfPnt2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HArray1OfPnt2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_HArray1OfPnt2d(const Standard_Integer Low, const Standard_Integer Up, const gp_Pnt2d V);
		%feature("autodoc", "1");
		void Init(const gp_Pnt2d V);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Pnt2d Value);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Pnt2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		const TColgp_Array1OfPnt2d & Array1() const;
		%feature("autodoc", "1");
		TColgp_Array1OfPnt2d & ChangeArray1();
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HArray1OfPnt2d {
	Handle_TColgp_HArray1OfPnt2d GetHandle() {
	return *(Handle_TColgp_HArray1OfPnt2d*) &$self;
	}
};
%extend TColgp_HArray1OfPnt2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HArray1OfPnt2d::~TColgp_HArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfLin2d;
class TColgp_Array2OfLin2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfLin2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfLin2d(const gp_Lin2d Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_Lin2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfLin2d & Assign(const TColgp_Array2OfLin2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfLin2d & operator=(const TColgp_Array2OfLin2d &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Lin2d Value);
		%feature("autodoc", "1");
		const gp_Lin2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_Lin2d  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Lin2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_Lin2d  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfLin2d::~TColgp_Array2OfLin2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfLin2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HSequenceOfDir2d;
class TColgp_HSequenceOfDir2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HSequenceOfDir2d();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Dir2d anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfDir2d &aSequence);
		%feature("autodoc", "1");
		void Prepend(const gp_Dir2d anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfDir2d &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const gp_Dir2d anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfDir2d &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const gp_Dir2d anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfDir2d &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir2d Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const gp_Dir2d anItem);
		%feature("autodoc", "1");
		const gp_Dir2d  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Dir2d  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColgp_SequenceOfDir2d & Sequence() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfDir2d & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir2d ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HSequenceOfDir2d {
	Handle_TColgp_HSequenceOfDir2d GetHandle() {
	return *(Handle_TColgp_HSequenceOfDir2d*) &$self;
	}
};
%extend TColgp_HSequenceOfDir2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HSequenceOfDir2d::~TColgp_HSequenceOfDir2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HSequenceOfDir2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceOfArray1OfPnt2d;
class TColgp_SequenceOfArray1OfPnt2d : public TCollection_BaseSequence {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceOfArray1OfPnt2d();
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		const TColgp_SequenceOfArray1OfPnt2d & Assign(const TColgp_SequenceOfArray1OfPnt2d &Other);
		%feature("autodoc", "1");
		const TColgp_SequenceOfArray1OfPnt2d & operator=(const TColgp_SequenceOfArray1OfPnt2d &Other);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HArray1OfPnt2d &T);
		%feature("autodoc", "1");
		void Append(TColgp_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HArray1OfPnt2d &T);
		%feature("autodoc", "1");
		void Prepend(TColgp_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt2d &I);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer Index, TColgp_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt2d &T);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer Index, TColgp_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & First() const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & Last() const;
		%feature("autodoc", "1");
		void Split(const Standard_Integer Index, TColgp_SequenceOfArray1OfPnt2d & S);
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const Handle_TColgp_HArray1OfPnt2d & operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const Handle_TColgp_HArray1OfPnt2d &I);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d & ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		Handle_TColgp_HArray1OfPnt2d & operator()(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer Index);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer FromIndex, const Standard_Integer ToIndex);

};
%feature("shadow") TColgp_SequenceOfArray1OfPnt2d::~TColgp_SequenceOfArray1OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceOfArray1OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfPnt2d;
class TColgp_Array2OfPnt2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfPnt2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfPnt2d(const gp_Pnt2d Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_Pnt2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfPnt2d & Assign(const TColgp_Array2OfPnt2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfPnt2d & operator=(const TColgp_Array2OfPnt2d &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Pnt2d Value);
		%feature("autodoc", "1");
		const gp_Pnt2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_Pnt2d  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Pnt2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_Pnt2d  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfPnt2d::~TColgp_Array2OfPnt2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfPnt2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_SequenceNodeOfSequenceOfXYZ;
class TColgp_SequenceNodeOfSequenceOfXYZ : public TCollection_SeqNode {
	public:
		%feature("autodoc", "1");
		TColgp_SequenceNodeOfSequenceOfXYZ(const gp_XYZ I, const TCollection_SeqNodePtr &n, const TCollection_SeqNodePtr &p);
		%feature("autodoc", "1");
		gp_XYZ  Value() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_SequenceNodeOfSequenceOfXYZ {
	Handle_TColgp_SequenceNodeOfSequenceOfXYZ GetHandle() {
	return *(Handle_TColgp_SequenceNodeOfSequenceOfXYZ*) &$self;
	}
};
%extend TColgp_SequenceNodeOfSequenceOfXYZ {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_SequenceNodeOfSequenceOfXYZ::~TColgp_SequenceNodeOfSequenceOfXYZ %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_SequenceNodeOfSequenceOfXYZ {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_DataMapOfIntegerCirc2d;
class TColgp_DataMapOfIntegerCirc2d : public TCollection_BasicMap {
	public:
		%feature("autodoc", "1");
		TColgp_DataMapOfIntegerCirc2d(const Standard_Integer NbBuckets=1);
		%feature("autodoc", "1");
		TColgp_DataMapOfIntegerCirc2d & Assign(const TColgp_DataMapOfIntegerCirc2d &Other);
		%feature("autodoc", "1");
		TColgp_DataMapOfIntegerCirc2d & operator=(const TColgp_DataMapOfIntegerCirc2d &Other);
		%feature("autodoc", "1");
		void ReSize(const Standard_Integer NbBuckets);
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		Standard_Boolean Bind(const Standard_Integer &K, const gp_Circ2d I);
		%feature("autodoc", "1");
		Standard_Boolean IsBound(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		Standard_Boolean UnBind(const Standard_Integer &K);
		%feature("autodoc", "1");
		const gp_Circ2d  Find(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		const gp_Circ2d  operator()(const Standard_Integer &K) const;
		%feature("autodoc", "1");
		gp_Circ2d  ChangeFind(const Standard_Integer &K);
		%feature("autodoc", "1");
		gp_Circ2d  operator()(const Standard_Integer &K);

};
%feature("shadow") TColgp_DataMapOfIntegerCirc2d::~TColgp_DataMapOfIntegerCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_DataMapOfIntegerCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HSequenceOfDir;
class TColgp_HSequenceOfDir : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HSequenceOfDir();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Dir anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfDir &aSequence);
		%feature("autodoc", "1");
		void Prepend(const gp_Dir anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfDir &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const gp_Dir anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfDir &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const gp_Dir anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfDir &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const gp_Dir anItem);
		%feature("autodoc", "1");
		const gp_Dir  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Dir  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColgp_SequenceOfDir & Sequence() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfDir & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfDir ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HSequenceOfDir {
	Handle_TColgp_HSequenceOfDir GetHandle() {
	return *(Handle_TColgp_HSequenceOfDir*) &$self;
	}
};
%extend TColgp_HSequenceOfDir {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HSequenceOfDir::~TColgp_HSequenceOfDir %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HSequenceOfDir {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HSequenceOfXY;
class TColgp_HSequenceOfXY : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HSequenceOfXY();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_XY anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfXY &aSequence);
		%feature("autodoc", "1");
		void Prepend(const gp_XY anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfXY &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const gp_XY anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfXY &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const gp_XY anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfXY &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXY Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const gp_XY anItem);
		%feature("autodoc", "1");
		const gp_XY  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_XY  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColgp_SequenceOfXY & Sequence() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfXY & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfXY ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HSequenceOfXY {
	Handle_TColgp_HSequenceOfXY GetHandle() {
	return *(Handle_TColgp_HSequenceOfXY*) &$self;
	}
};
%extend TColgp_HSequenceOfXY {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HSequenceOfXY::~TColgp_HSequenceOfXY %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HSequenceOfXY {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_HSequenceOfVec2d;
class TColgp_HSequenceOfVec2d : public MMgt_TShared {
	public:
		%feature("autodoc", "1");
		TColgp_HSequenceOfVec2d();
		%feature("autodoc", "1");
		Standard_Boolean IsEmpty() const;
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		void Clear();
		%feature("autodoc", "1");
		void Append(const gp_Vec2d anItem);
		%feature("autodoc", "1");
		void Append(const Handle_TColgp_HSequenceOfVec2d &aSequence);
		%feature("autodoc", "1");
		void Prepend(const gp_Vec2d anItem);
		%feature("autodoc", "1");
		void Prepend(const Handle_TColgp_HSequenceOfVec2d &aSequence);
		%feature("autodoc", "1");
		void Reverse();
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const gp_Vec2d anItem);
		%feature("autodoc", "1");
		void InsertBefore(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfVec2d &aSequence);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const gp_Vec2d anItem);
		%feature("autodoc", "1");
		void InsertAfter(const Standard_Integer anIndex, const Handle_TColgp_HSequenceOfVec2d &aSequence);
		%feature("autodoc", "1");
		void Exchange(const Standard_Integer anIndex, const Standard_Integer anOtherIndex);
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec2d Split(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer anIndex, const gp_Vec2d anItem);
		%feature("autodoc", "1");
		const gp_Vec2d  Value(const Standard_Integer anIndex) const;
		%feature("autodoc", "1");
		gp_Vec2d  ChangeValue(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer anIndex);
		%feature("autodoc", "1");
		void Remove(const Standard_Integer fromIndex, const Standard_Integer toIndex);
		%feature("autodoc", "1");
		const TColgp_SequenceOfVec2d & Sequence() const;
		%feature("autodoc", "1");
		TColgp_SequenceOfVec2d & ChangeSequence();
		%feature("autodoc", "1");
		Handle_TColgp_HSequenceOfVec2d ShallowCopy() const;
		%feature("autodoc", "1");
		virtual		const Handle_Standard_Type & DynamicType() const;

};
%extend TColgp_HSequenceOfVec2d {
	Handle_TColgp_HSequenceOfVec2d GetHandle() {
	return *(Handle_TColgp_HSequenceOfVec2d*) &$self;
	}
};
%extend TColgp_HSequenceOfVec2d {
	Standard_Integer __hash__() {
	return $self->HashCode(2147483647);
	}
};
%feature("shadow") TColgp_HSequenceOfVec2d::~TColgp_HSequenceOfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_HSequenceOfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array1OfCirc2d;
class TColgp_Array1OfCirc2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array1OfCirc2d(const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		TColgp_Array1OfCirc2d(const gp_Circ2d Item, const Standard_Integer Low, const Standard_Integer Up);
		%feature("autodoc", "1");
		void Init(const gp_Circ2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		Standard_Boolean IsAllocated() const;
		%feature("autodoc", "1");
		const TColgp_Array1OfCirc2d & Assign(const TColgp_Array1OfCirc2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array1OfCirc2d & operator=(const TColgp_Array1OfCirc2d &Other);
		%feature("autodoc", "1");
		Standard_Integer Length() const;
		%feature("autodoc", "1");
		Standard_Integer Lower() const;
		%feature("autodoc", "1");
		Standard_Integer Upper() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Index, const gp_Circ2d Value);
		%feature("autodoc", "1");
		const gp_Circ2d  Value(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		const gp_Circ2d  operator()(const Standard_Integer Index) const;
		%feature("autodoc", "1");
		gp_Circ2d  ChangeValue(const Standard_Integer Index);
		%feature("autodoc", "1");
		gp_Circ2d  operator()(const Standard_Integer Index);

};
%feature("shadow") TColgp_Array1OfCirc2d::~TColgp_Array1OfCirc2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array1OfCirc2d {
	void _kill_pointed() {
		delete $self;
	}
};


%nodefaultctor TColgp_Array2OfVec2d;
class TColgp_Array2OfVec2d {
	public:
		%feature("autodoc", "1");
		TColgp_Array2OfVec2d(const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		TColgp_Array2OfVec2d(const gp_Vec2d Item, const Standard_Integer R1, const Standard_Integer R2, const Standard_Integer C1, const Standard_Integer C2);
		%feature("autodoc", "1");
		void Init(const gp_Vec2d V);
		%feature("autodoc", "1");
		void Destroy();
		%feature("autodoc", "1");
		const TColgp_Array2OfVec2d & Assign(const TColgp_Array2OfVec2d &Other);
		%feature("autodoc", "1");
		const TColgp_Array2OfVec2d & operator=(const TColgp_Array2OfVec2d &Other);
		%feature("autodoc", "1");
		Standard_Integer ColLength() const;
		%feature("autodoc", "1");
		Standard_Integer RowLength() const;
		%feature("autodoc", "1");
		Standard_Integer LowerCol() const;
		%feature("autodoc", "1");
		Standard_Integer LowerRow() const;
		%feature("autodoc", "1");
		Standard_Integer UpperCol() const;
		%feature("autodoc", "1");
		Standard_Integer UpperRow() const;
		%feature("autodoc", "1");
		void SetValue(const Standard_Integer Row, const Standard_Integer Col, const gp_Vec2d Value);
		%feature("autodoc", "1");
		const gp_Vec2d  Value(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		const gp_Vec2d  operator()(const Standard_Integer Row, const Standard_Integer Col) const;
		%feature("autodoc", "1");
		gp_Vec2d  ChangeValue(const Standard_Integer Row, const Standard_Integer Col);
		%feature("autodoc", "1");
		gp_Vec2d  operator()(const Standard_Integer Row, const Standard_Integer Col);

};
%feature("shadow") TColgp_Array2OfVec2d::~TColgp_Array2OfVec2d %{
def __del__(self):
	try:
		self.thisown = False
		GarbageCollector.garbage.collect_object(self)
	except:
		pass
%}

%extend TColgp_Array2OfVec2d {
	void _kill_pointed() {
		delete $self;
	}
};
