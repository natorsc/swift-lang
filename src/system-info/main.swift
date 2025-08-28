import Foundation

// Obtém informações sobre o sistema operacional.
let systemVersion = ProcessInfo.processInfo.operatingSystemVersion
let systemName = ProcessInfo.processInfo.operatingSystemVersionString

// Imprime informações detalhadas.
print("Sistema operacional:")
print("  Nome: \(systemName)")
print(
    "  Versão (kernel): \(systemVersion.majorVersion).\(systemVersion.minorVersion).\(systemVersion.patchVersion)"
)
print("  Nome do dispositivo: \(ProcessInfo.processInfo.hostName)")
print("  Arquitetura do processador: \(ProcessInfo.processInfo.physicalMemory)")
