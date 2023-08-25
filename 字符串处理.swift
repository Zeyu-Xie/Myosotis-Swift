import Foundation

print("创建字符串")
let str_1 = "Hello world! "
let str_2 = "This is Acan. "

print("拼接字符串")
let str_3 = str_1 + str_2
print(str_3)

print("字符串插值")
let name = "Acan"
let str_4 = "\(name) is a genius! "
print(str_4)

print("字符串长度")
let length = name.count
print(length)

print("访问字符")
for index in name.indices {
    print(index, name[index])
}
print("----")
for index in name.indices.prefix(2) {
    print(index, name[index])
}

print("子字符串")
let str_5 = name.prefix(3)
let str_6 = name.suffix(3)
print(str_5, str_6)

print("字符串拆分")
let words = str_4.split(separator: " ")
print(words)

print("大小写转换")
let name_uppercased = name.uppercased()
let name_lowercased = name.lowercased()
print(name_uppercased, name_lowercased)

print("字符串查找")
let str_7 = "ca"
let str_8 = "ok"
let contains_1 = name.contains(str_7)
let contains_2 = name.contains(str_8)
print(contains_1, contains_2)

print("替换子字符串")
print("(Remember to \"import Foundation\" before using function \"replacingOccurrences\") ")
let str_9 = "Acan is a genius. Acan will enter University of Toronto."
let str_10 = str_9.replacingOccurrences(of: "Acan", with: "Sharon")
print(str_10)

print("去除首尾空格")
print("(Remember to \"import Foundation\" before using function \"trimmingCharacters\" and key word \".whitespaces\") ")
let str_11 = "  Here comes a genius.   "
let str_12 = str_11.trimmingCharacters(in: .whitespaces)
print(str_11.count, str_11)
print(str_12.count, str_12)

print("字符串格式化")
let str_13 = String(format: "Value: %.2f or %.4f", 3.141593, 3.141593)
print(str_13)

print("多行字符串")
let str_14 = """
             Dear Jane,

                How's everything going?
                I hope you enjoy your vacation.
                Looking forward to hearing from you!

             Love from,
             Acan
             """
print(str_14)

print("正则表达式")
let pattern = "\\d{3}-\\d{3}-\\d{4}"
let str_15 = "Hello this is HomeInn. Our phone number is (+86) 400-820-3333."
do {
    let regex = try NSRegularExpression(pattern: pattern)
    let matches = regex.matches(in: str_15, range: NSRange(str_15.startIndex..., in: str_15))
    for match in matches {
        let range = Range(match.range, in: str_15)
        if let phoneNumberRange = range {
            let phoneNumber = str_15[phoneNumberRange]
            print(phoneNumber)
        }
    }
} catch {
    print("Error creating regex \(error)")
}