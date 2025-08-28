import Foundation

let documentsDirectory = FileManager.default.urls(
    for: .documentDirectory,
    in: .userDomainMask
)[0]
print(documentsDirectory)

let filePath = documentsDirectory.appendingPathComponent("data.txt")
print(filePath)

let userDirectory = FileManager.default.homeDirectoryForCurrentUser
print(userDirectory)
