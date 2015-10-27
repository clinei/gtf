import std.stdio;

void main()
{
	string[] LE = ["le", "le'e", "le'i", "lei", "lo", "lo'e", "lo'i", "loi"];
	
	string[] LA = ["la", "la'i", "lai"];
	
	import pegged.grammar;
	mixin(grammar(import("lojban.peg")));
	auto pt = Lojban("lo plise ku cu se kukte bo citka");
	writeln(pt);
}
