cd .\build
cmake -G "Visual Studio 16 2019" -DMAYA_VERSION=2022 ../
cmake --build . --config Debug
cmake --build . --config Release --target Install