using Documenter
using testseml

makedocs(
    sitename = "testseml",
    format = Documenter.HTML(
        prettyurls = get(ENV, "CI", nothing) == "true"
    ),
    modules = [testseml],
    pages = [
		"Home" => "index.md",
		"installation.md",
		"Examples" => Any[
			"Example 1" => "examples/example1.md",
		]
	],
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(
    repo = "github.com/ZZP12/testseml.jl.git",
	devbranch = "main",
)
