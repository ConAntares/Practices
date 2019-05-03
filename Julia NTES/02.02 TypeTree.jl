# Print SubTypes

function ShowTypeTree(T,level=0)
    println("\t"^level,T)
    for t in subtypes(T)
        if t != Any
            ShowTypeTree(t,level+1)
        end
    end
end
ShowTypeTree(Real)
