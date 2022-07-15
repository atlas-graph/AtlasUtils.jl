using AtlasUtils
using Documenter

DocMeta.setdocmeta!(AtlasUtils, :DocTestSetup, :(using AtlasUtils); recursive=true)

makedocs(;
    modules=[AtlasUtils],
    authors="Aleksandr Freik",
    repo="https://github.com/atlas-blocks/AtlasUtils.jl/blob/{commit}{path}#{line}",
    sitename="AtlasUtils.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://atlas-blocks.github.io/AtlasUtils.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/atlas-blocks/AtlasUtils.jl",
    devbranch="main",
)
