cmake -A x64 C:\tensorflow\tensorflow\contrib\cmake -DCMAKE_BUILD_TYPE=Release -DSWIG_EXECUTABLE="C:\swigwin\swigwin-3.0.10/swig.exe" -DPYTHON_EXECUTABLE="C:\Python36\python.exe" -DPYTHON_LIBRARIES="C:\Python36\libs\python36.lib" -Dtensorflow_ENABLE_GPU="ON" -DCUDNN_HOME="C:\cuda" -Dtensorflow_WIN_CPU_SIMD_OPTIONS="/arch:AVX" -Dtensorflow_BUILD_PYTHON_TESTS="ON" -Dtensorflow_BUILD_CC_EXAMPLE="OFF" -Dtensorflow_BUILD_CC_TESTS="OFF" -Dtensorflow_TF_NIGHTLY="OFF" -Dtensorflow_DISABLE_EIGEN_FORCEINLINE="ON"





<#




-A x64 -G "Visual Studio 14 2015" -DCMAKE_BUILD_TYPE=Release ^
-DSWIG_EXECUTABLE="C:\swigwin\swigwin-3.0.10/swig.exe" ^
-DPYTHON_EXECUTABLE="C:\Python36\python.exe" ^
-DPYTHON_LIBRARIES=C:\Python36\libs\python36.lib ^
-Dtensorflow_ENABLE_GPU=ON ^
-DCUDNN_HOME="C:\cuda" ^
-Dtensorflow_WIN_CPU_SIMD_OPTIONS=/arch:AVX ^
-Dtensorflow_BUILD_PYTHON_TESTS=ON ^
-Dtensorflow_BUILD_CC_EXAMPLE=OFF -Dtensorflow_BUILD_CC_TESTS=OFF -Dtensorflow_TF_NIGHTLY=OFF ^
-Dtensorflow_DISABLE_EIGEN_FORCEINLINE="ON" #>