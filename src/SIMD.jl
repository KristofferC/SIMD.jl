module SIMD

using Base: @propagate_inbounds

export Vec, vload, vloada, vloadnt, vstore, vstorea, vstorent, vgather, vgathera,
       vscatter, vscattera, shufflevector, vifelse, valloc, VecRange

const VE         = Base.VecElement
const LVec{N, T} = NTuple{N, VE{T}}

const IntTypes      = Union{Int8, Int16, Int32, Int64, Int128, Bool}
const UIntTypes     = Union{UInt8, UInt16, UInt32, UInt64, UInt128}
const IntegerTypes  = Union{Bool, IntTypes, UIntTypes}
const FloatingTypes = Union{Float32, Float64} # Float16 support is non-native in Julia and gets passed as an i16
const ScalarTypes   = Union{IntegerTypes, FloatingTypes}

include("LLVM.jl")
include("simdvec.jl")
include("arrayops.jl")

end
