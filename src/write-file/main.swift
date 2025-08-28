import Foundation

let baseDir = FileManager.default.currentDirectoryPath
let filePath = baseDir + "/data.txt"

let data = "Novo conteúdo para o arquivo".data(using: .utf8)!
try data.write(to: filePath)

// let fileHandle = try FileHandle(forWritingAtPath: filePath)
// fileHandle.seekToEndOfFile()
// fileHandle.write("Conteúdo adicional".data(using: .utf8)!)
// fileHandle.closeFile()