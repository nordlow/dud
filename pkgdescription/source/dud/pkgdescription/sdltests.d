module dud.pkgdescription.sdltests;

import std.stdio;

import dud.pkgdescription.sdl;
import dud.pkgdescription : PackageDescription, TargetType;

unittest {
	import dud.semver : SemVer;

	string input = `
name "pkgdescription"
dependency "semver" path="../semver"
dependency "path" path="../path"
dependency "sdlang" path="../sdlang"
dependency "graphql" version=">=1.0.0" default=true optional=false
targetType "library"
importPaths "source" "source1" "source2"
`;

	PackageDescription pkg = sdlToPackageDescription(input);
	writeln(pkg);
	assert(pkg.name == "pkgdescription", pkg.name);
}
