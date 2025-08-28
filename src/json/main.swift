import Foundation

let baseDir = FileManager.default.currentDirectoryPath
let jsonFile = baseDir + "/data.json"

// Define a estrutura para representar os dados JSON
struct Person: Codable {
    let name: String
    let age: Int
}

do {
    // Lê o conteúdo do arquivo usando o caminho especificado
    let fileData = try Data(contentsOf: URL(fileURLWithPath: jsonFile))

    // Decodifica os dados JSON para uma lista de objetos Person
    let decoder = JSONDecoder()
    let people = try decoder.decode([Person].self, from: fileData)

    // Imprime cada pessoa
    for person in people {
        print("Name: \(person.name), Age: \(person.age)")
    }
} catch {
    print("[x] Erro ao ler ou decodificar o arquivo: \(error) [x]")
}
