import Foundation

typealias addFunc = @convention(c) (CInt,CInt) -> CInt

let myhandle = dlopen("[file_path_to_dylib]", RTLD_NOW)
sleep(3)
if (myhandle != nil){
    let x = dlsym(myhandle, "[export_function_name_here]")//for calling main in C built dylibs, use _main
    if (x != nil){
        print(x)
    }
    dlclose(myhandle)
}
