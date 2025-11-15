import Foundation

extension String {
    /**
     Transforma a string em um formato "slug" amigável para URLs ou nomes de arquivos.

     - Parameter separator: O caractere ou string a ser usado como separador (padrão: "-").
     - Returns: A string no formato slug.
     */
    func slugify(separator: String = "-") -> String {
        // 1. Converte para minúsculas e normaliza (remove acentuações).
        let normalizedString = self
            .lowercased()
            .folding(options: .diacriticInsensitive, locale: .current)
        // 2. Substitui caracteres não-alfanuméricos (e não o separador) pelo separador.
        // O pattern usa uma expressão regular para encontrar qualquer coisa que não seja:
        // - Letra minúscula (a-z).
        // - Dígito (0-9).
        // - O caractere separador (o separador é escapado para ser tratado literalmente).
        let escapedSeparator = NSRegularExpression.escapedPattern(for: separator)
        let pattern = "[^a-z0-9\(escapedSeparator)]+"
        // Remove caracteres que não são letras, números ou o separador.
        var slug = normalizedString.replacingOccurrences(
            of: pattern,
            with: separator,
            options: [.regularExpression]
        )
        // 3. Remove separadores nas extremidades.
        // Remove o separador do início.
        if slug.hasPrefix(separator) {
            slug.removeFirst(separator.count)
        }
        // Remove o separador do final.
        if slug.hasSuffix(separator) {
            slug.removeLast(separator.count)
        }
        return slug
    }
}
// --- Exemplos de Uso ---
let title = " Swift Programming: Example of slugify(100%) "

// 1. Usando o separador padrão ("-")
let slug = title.slugify()
print("Slug padrão: \(slug)")

// 2. Usando um separador diferente ("_")
let slugUnderline = title.slugify(separator: "_")
print("Slug underscore: \(slugUnderline)")
