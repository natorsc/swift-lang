import Foundation

print("digite a idade:")
let str = readLine() ?? ""
let trimmed = str.trimmingCharacters(in: .whitespacesAndNewlines)
if trimmed.isEmpty {
    print("Vazio")
} else {
    print("Valor (str): \(str)")
    print("Valor (trimmed): \(trimmed)")
    let age = Int(trimmed) ?? 0
    if age != 0 {
        print(age)
    } else {
        print("Idade digitada não é válida: \(trimmed).")
    }
}
