rm -rf buildarm
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 18 2026" -A ARM64 -S .. -B "buildarm" -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>DLL" -DOP_DISABLE_HTTP=ON -DOP_DISABLE_DOCS=ON -DCMAKE_PREFIX_PATH="C:/libraries/ogg/bin/releasearm;C:/libraries/opus/bin/releasearm" -DCMAKE_INSTALL_PREFIX="C:/libraries/opusfile/bin/releasearm" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build buildarm --config Release
call cmake --install buildarm --config Release
xcopy /Y /Q "buildarm\Release\*.pdb" "releasearm\lib\"
rm -rf buildarm
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 18 2026" -A ARM64 -S .. -B "buildarm" -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>DLL" -DOP_DISABLE_HTTP=ON -DOP_DISABLE_DOCS=ON -DCMAKE_PREFIX_PATH="C:/libraries/ogg/bin/debugarm;C:/libraries/opus/bin/debugarm" -DCMAKE_INSTALL_PREFIX="C:/libraries/opusfile/bin/debugarm"
call cmake --build buildarm --config Debug
call cmake --install buildarm --config Debug
xcopy /Y /Q "buildarm\Debug\*.pdb" "debugarm\lib\"
rm -rf build32
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 18 2026" -A Win32 -S .. -B "build32" -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>DLL" -DOP_DISABLE_HTTP=ON -DOP_DISABLE_DOCS=ON -DCMAKE_PREFIX_PATH="C:/libraries/ogg/bin/release32;C:/libraries/opus/bin/release32" -DCMAKE_INSTALL_PREFIX="C:/libraries/opusfile/bin/release32" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build build32 --config Release
call cmake --install build32 --config Release
xcopy /Y /Q "build32\Release\*.pdb" "release32\lib\"
rm -rf build32
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 18 2026" -A Win32 -S .. -B "build32" -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>DLL" -DOP_DISABLE_HTTP=ON -DOP_DISABLE_DOCS=ON -DCMAKE_PREFIX_PATH="C:/libraries/ogg/bin/debug32;C:/libraries/opus/bin/debug32" -DCMAKE_INSTALL_PREFIX="C:/libraries/opusfile/bin/debug32"
call cmake --build build32 --config Debug
call cmake --install build32 --config Debug
xcopy /Y /Q "build32\Debug\*.pdb" "debug32\lib\"
rm -rf build64
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 18 2026" -A x64 -S .. -B "build64" -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>DLL" -DOP_DISABLE_HTTP=ON -DOP_DISABLE_DOCS=ON -DCMAKE_PREFIX_PATH="C:/libraries/ogg/bin/release64;C:/libraries/opus/bin/release64" -DCMAKE_INSTALL_PREFIX="C:/libraries/opusfile/bin/release64" -DCMAKE_C_FLAGS_RELEASE="/MD /Zi /O2 /Ob2 /DNDEBUG" -DCMAKE_SHARED_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF" -DCMAKE_EXE_LINKER_FLAGS_RELEASE="/DEBUG /INCREMENTAL:NO /OPT:REF /OPT:ICF"
call cmake --build build64 --config Release
call cmake --install build64 --config Release
xcopy /Y /Q "build64\Release\*.pdb" "release64\lib\"
rm -rf build64
call cmake -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -G "Visual Studio 18 2026" -A x64 -S .. -B "build64" -DCMAKE_MSVC_RUNTIME_LIBRARY="MultiThreaded$<$<CONFIG:Debug>:Debug>DLL" -DOP_DISABLE_HTTP=ON -DOP_DISABLE_DOCS=ON -DCMAKE_PREFIX_PATH="C:/libraries/ogg/bin/debug64;C:/libraries/opus/bin/debug64" -DCMAKE_INSTALL_PREFIX="C:/libraries/opusfile/bin/debug64"
call cmake --build build64 --config Debug
call cmake --install build64 --config Debug
xcopy /Y /Q "build64\Debug\*.pdb" "debug64\lib\"
