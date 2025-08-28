/*
Este é um comentário de múltiplas linhas em Swift.

Podemos escrever qualquer coisa aqui, como explicações sobre o código,
pseudo-código ou até mesmo desativar temporariamente blocos de código.
*/

// Este é um comentário de uma única linha.

// Desativando temporariamente uma linha de código:
// let a = 10

// Comentários em funções:
func calcularFatorial(numero: Int) -> Int {
    /*
    Calcula o fatorial de um número.
    O fatorial de um número natural n é o produto de todos os números naturais de 1 até n.
    */

    var resultado = 1
    for i in 1...numero {
        resultado *= i
    }
    return resultado
}


// Para documentação são utilizadas 3 barras.
// O comando para gerar documentação é
/// Calcula a área de um círculo.
///
/// - Parameter radius: O raio do círculo.
/// - Returns: A área do círculo.
func areaOfCircle(withRadius radius: Double) -> Double {
    return Double.pi * radius * radius
}
