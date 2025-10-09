rm -rf buildarm
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A ARM64 -S .. -B "buildarm" -DOPUS_OSCE=ON 
call cmake --build buildarm --config Release
call cmake --build buildarm --config Debug
rm -rf build32
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A Win32 -S .. -B "build32" -DOPUS_OSCE=ON 
call cmake --build build32 --config Release
call cmake --build build32 --config Debug
rm -rf build64
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 17 2022" -A x64 -S .. -B "build64" -DOPUS_OSCE=ON 
call cmake --build build64 --config Release
call cmake --build build64 --config Debug
