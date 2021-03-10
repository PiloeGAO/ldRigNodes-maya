cd .\build
cmake -G "Visual Studio 15 2017 Win64" -DMAYA_VERSION=2020 ../
cmake --build . --config Debug
cmake --build . --config Release --target Install