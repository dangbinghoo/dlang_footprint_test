import std.stdio;
import asdf;

struct MyData {
	string name;
	string ver;

	@serdeOptional
	string lala;
}

void main()
{
	MyData md = {name: "hello", ver: "1.0"};

	md.serializeToJson.writeln;
	string a = `{"name":"hello","ver":"1.0"}`;
	string b = `{"name":"hello","ver":"1.0", "lala": "wow"}`;
	MyData md2;
	md2 = a.deserialize!MyData;
	md2.writeln;
	md2 = b.deserialize!MyData;
	md2.writeln;
}
