print("错误处理")

enum FileError: Error {
    case fileNotFound
    case permissionDenied
}

func openFile(fileName: String) throws {
    if (fileName != "text.txt") {
        throw FileError.fileNotFound
    }
    throw FileError.permissionDenied
}

do {
    try openFile(fileName: "wrongFile.txt")
} catch FileError.fileNotFound {
    print("File not found")
} catch FileError.permissionDenied {
    print("Permission denied")
} catch {
    print("Other errors")
}

do {
    try openFile(fileName: "text.txt")
} catch FileError.fileNotFound {
    print("File not found")
} catch FileError.permissionDenied {
    print("Permission denied")
} catch {
    print("Other errors")
}