using NeuroFormats
using Test

@testset "NeuroFormats.jl" begin
    
    CURV_LH_THICKNESS_FILE = joinpath(dirname(@__FILE__), "data/subjects_dir/subject1/surf/lh.thickness")
    curv = NeuroFormats.readcurv(CURV_LH_THICKNESS_FILE)

    # Header
    @test Base.length(curv.header) == 4
  
    # Content
    @test length(curv.data) == 149000
    @assert maximum(curv.data) == 5.5
end