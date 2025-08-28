// Int: Representa números inteiros.
let age: Int = 30
print(type(of: age))
// Double: Representa números de ponto flutuante com precisão dupla.
let pi: Double = 3.14159
print(type(of: pi))

// Float: Representa números de ponto flutuante com precisão simples.
let height: Float = 1.75

// Bool: Representa valores booleanos (true ou false).

let isRunning: Bool = true

// String: Representa sequências de caracteres.
let name: String = "Renato"

// Character: Representa um único caractere.
let letter: Character = "R"

// Coleções:
// Array: Representa uma coleção ordenada de valores do mesmo tipo.
let numbers: [Int] = [1, 2, 3, 4]

// Dictionary: Representa uma coleção desordenada de pares chave-valor.
let capitals: [String: String] = ["Brazil": "Brasília", "United States": "Washington"]

// Set: Representa uma coleção desordenada de valores únicos.
// Com não é ordenado não é possível acessar pelo index.
let letters: Set<Character> = ["a", "b", "c"]
for value: Character in letters {
    print(value)
}
// Para verificar se um valor está dentro do set.
if letters.contains("b") {
    // print("The set contains the letter b")
}

// Tuplas: As tuplas permitem agrupar valores de diferentes tipos em uma única variável.
let person: (String, Int) = ("Maria", 25)

// Opcionais: Os tipos opcionais indicam que uma variável pode conter um valor ou ser nula (nil).
var nameOpcional: String? = "Renato"
// Utilizar `!` somente quando se tem certeza que o valor existe.
print(nameOpcional!)
nameOpcional = nil
if let name: String = nameOpcional {
    print("The name is: \(name)")
} else {
    print("The name is nil")
}

// Personalizados: Structs e classes.
struct Author {
    let name: String
    let age: Int
}
let author: Author = Author(name: "Renato", age: 40)

class Book {
    var title: String
    var sales: Int

    init(title: String, sales: Int) {
        self.title = title
        self.sales = sales
    }

    func sell() {
        sales += 1
    }
}

let book: Book = Book(title: "title", sales: 0)
print(book.sales)
book.sell()
print(book.sales)
