import Foundation

typealias addFunc = @convention(c) (CInt,CInt) -> CInt

do {
let dispatch = DispatchQueue.global(qos: .background)
        let myhandle = dlopen("file_path_to_dylib", RTLD_GLOBAL)
        if (myhandle != nil){
                dispatch.async{
                    DispatchQueue.main.async {
                        let x = dlsym(myhandle, "dylib_export_function_name_here")//for calling main in C built dylibs, use _main
                if (x != nil){
                       print(x)
               }
                dlclose(myhandle)
                    }


                }

        }
} catch let(err){
        print(err)
}

RunLoop.main.run()
