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
print("(Remember to \"import Foundation\" before using function \"replacingOccurrences\". ")
let str_9 = "Acan is a genius. Acan will enter University of Toronto."
let str_10 = str_9.replacingOccurrences(of: "Acan", with: "Sharon")
print(str_10)

print("去除首尾空格")
let str_11 = "  Here comes a genius.   "
let str_12 = str_11.trimmingCharacters(in: .whitespaces)
print(str_11.count, str_11)
print(str_12.count, str_12)