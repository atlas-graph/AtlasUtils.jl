module TokenUtils

import MacroTools: postwalk
export getnames

function getnames(content::String)::Set{Symbol}
    list = []
    try
        postwalk(x -> x isa Symbol ? (push!(list, x); x) : x, Meta.parseall(content))
    catch ignored
    end
    return Set{Symbol}(list)
end

end
