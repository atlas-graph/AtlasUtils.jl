using AtlasUtils.AtlasMath
using Test

@testset "AtlasMath" begin
    @test AtlasMath.csv2vector("") == []
    @test AtlasMath.csv2vector("1") == [[1]]
    @test AtlasMath.csv2vector("1,2,3") == [[1], [2], [3]]
    @test AtlasMath.csv2vector("1,2,3\n4,5,6") == [[1, 4], [2, 5], [3, 6]]
end
