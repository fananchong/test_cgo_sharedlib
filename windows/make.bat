
call "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Auxiliary\Build\vcvars64.bat"

echo "start cl ..."
cl /c /I ../include ../source/foo.c

echo "start link ..."
link /DLL /DEF:foo.def /OUT:foo.dll foo.obj

echo "start dlltool ..."
dlltool -dllname foo.dll --def foo.def --output-lib libfoo.a
