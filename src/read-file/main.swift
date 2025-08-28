import Foundation

let baseDir = FileManager.default.currentDirectoryPath
let filePath = baseDir + "/data.txt"

do {
    let contents = try String(contentsOfFile: filePath)
    print(contents)
} catch {
    print("Erro ao ler o arquivo: \(error)")
}
