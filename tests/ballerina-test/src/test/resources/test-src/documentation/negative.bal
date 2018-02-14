documentation { Documentation for Test annotation
- #a annotation `field a` documentation
- #a annotation `field a` documentation
- #b annotation `field b` documentation
- #c annotation `field c` documentation}
annotation Test {
    string a;
    string b;
    string cd;
}

documentation { Documentation for testConst constant
- #abc abc description}
const string testConst = "TestConstantDocumentation";

documentation { Documentation for state enum
- #foo enum `field foo` documentation
- #foo enum `field foo` documentation
- #bar enum `field bar` documentation}
enum state {
    foo,
    bars
}


documentation { Documentation for Test struct
- #a struct `field a` documentation
- #a struct `field a` documentation
- #b struct `field b` documentation
- #c struct `field c` documentation}
struct Test {
    int a;
    int b;
    int cdd;
}


documentation {
Gets a access parameter value (`true` or `false`) for a given key. Please note that #foo will always be bigger than #bar.
Example:
`SymbolEnv pkgEnv = symbolEnter.packageEnvs.get(pkgNode.symbol);`
- #file file path `C:\users\OddThinking\Documents\My Source\Widget\foo.src`
- #file file path `C:\users\OddThinking\Documents\My Source\Widget\foo.src`
- #accessMode read or write mode
- #successfuls boolean `true` or `false`
}
public function <File file> open (string accessMode) (boolean successful) {
    return successful;
}

documentation { Documentation for File struct
- #path struct `field path` documentation
}
public struct File {
    string path;
}

documentation {
 Transformer Foo Person -> Employee
 - #pa input struct Person source used for transformation
 - #e output struct Employee struct which Person transformed to
 - #e output struct Employee struct which Person transformed to
 - #defaultAddress address which serves Eg: `POSTCODE 112`
}
transformer <Person p, Employee e> Foo(any defaultAddress) {
    e.name = p.firstName;
}

struct Person {
    string firstName;
    string lastName;
    int age;
    string city;
}

struct Employee {
    string name;
    int age;
    string address;
    any ageAny;
}