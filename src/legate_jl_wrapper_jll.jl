# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule legate_jl_wrapper_jll
using Base
using Base: UUID
using LazyArtifacts
Base.include(@__MODULE__, joinpath("..", ".pkg", "platform_augmentation.jl"))
import JLLWrappers

JLLWrappers.@generate_main_file_header("legate_jl_wrapper")
JLLWrappers.@generate_main_file("legate_jl_wrapper", UUID("6e093c14-372f-5516-b4d7-a6ce14f1038b"))
end  # module legate_jl_wrapper_jll
