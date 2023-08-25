print("整数类型")
let a: Int = 1
let b: UInt = 2
print(a, b)

print("浮点数类型")
let c: Double = 3.14
let d: Float = 6.28
print(c, d)

print("布尔类型")
let e: Bool = true
let f: Bool = false
print(e, f)

print("字符串类型")
let g: String = "Here comes a Genius!"
print(g)

print("数组类型")
let h: Array<Int> = [1, 1, 4, 5, 1, 4]
print(h)

print("字典类型")
var i: Dictionary<String, Int> = [:]
i["Amy"] = 655
i["Bob"] = 703
i["Cauthy"] = 577
print(i)

print("集合类型")
var j: Set<Int> = []
j.insert(3)
j.insert(6)
j.insert(8)
print(j)

print("元组类型")
let k: (String, Int, Int) = ("Acan", 21, 684)
print(k)

print("可选类型")
let l: Int? = 5
let m: Int? = nil
print(l, m)