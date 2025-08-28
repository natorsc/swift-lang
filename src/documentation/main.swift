/*
O inicio da documentação é indicada por 3 barras.

Para gerar a documentação

swiftDoc generate --output doc
swift package generate-documentation
*/

/// Calcula a área de um círculo.
/// - Parameters:
///     - Parameter radius: O raio do círculo.
///     - Returns: A área do círculo.
func areaOfCircle(withRadius radius: Double) -> Double {
    return Double.pi * radius * radius
}