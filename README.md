# Dylib_Runner

Simple swift file that can run an on-disk dylib. 

Steps:
1. In RunDylib.swift edit the `myhandle` variable to include the path to the dylib you want to run.
2. In RunDylib.swift edit the `x` variable to include the name of the function you want to invoke
3. Save and build with: `swiftc -o [binary_name] RunDylib.swift`
4. Run: `./[binary_name]`

![Image](dylib.png)
