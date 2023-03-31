using LinearAlgebra

begin
    struct Point
        data::Vector{Float64}
    end
end

struct Color3
    r::Float64
    g::Float64
    b::Float64
    Color3(r, g, b) = new(
        min(r, 255.0) / 255.0,
        min(g, 255.0) / 255.0,
        min(b, 255.0) / 255.0
    )
end

begin
    struct Vertex
        p::Point
        rgb::Color3
    end
    Vertex(p) = Vertex(p, Color3(0.0, 0.0, 0.0))
end

begin
    struct edge
        source::Vertex
        target::Vertex
    end
end

begin
    struct halfedge
        source::Vertex
        target::Vertex
        twin::halfedge
    end
end


point = Point((0.0, sin(π), cos(π)))
println(point)
pint = point * sin(π / 4)

println(pint)
c = Color3(7.0, 99.0, 254.0)

v = Vertex(pint, c)
v2 = Vertex(point)

println(v)
println()
print(v2)