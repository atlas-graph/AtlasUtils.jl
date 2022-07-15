using AtlasUtils.TokenUtils
using Test

@testset "TokenUtils" begin
    @test TokenUtils.getnames("") == Set{Symbol}([])
    @test TokenUtils.getnames("ex1") == Set{Symbol}([:ex1])
    @test TokenUtils.getnames("ex1 + a - 5") == Set{Symbol}([:ex1, :+, :-, :a])
    @test TokenUtils.getnames("b+1\nex1 + a - 5") == Set{Symbol}([:ex1, :+, :-, :a, :b])
end
