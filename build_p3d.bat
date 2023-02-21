cd .\build

"C:\Program Files\CMake\bin\cmake.exe" -G "Visual Studio 16 2019" -DMAYA_VERSION=2022 ../
"C:\Program Files\CMake\bin\cmake.exe" --build . --config Debug
"C:\Program Files\CMake\bin\cmake.exe" --build . --config Release --target Install