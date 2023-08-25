print("函数定义与使用")

func great(name: String) -> String {
    return "Hello \(name)!"
}

func great_(name: String) {
    print("Hello \(name)!")
}

print(great(name: "Acan"))
great_(name: "Genius")

print("函数作为参数传递")

func add(a: Int, b: Int) -> Int {
    return a + b
}

func minus(a: Int, b: Int) -> Int {
    return a - b
}

func operate(a: Int, b: Int, op: (Int, Int) -> Int) {
    print(op(a, b))
}

operate(a: 1, b: 2, op: add)
operate(a: 100, b: 1, op: minus)

print("闭包的定义和使用")

func makeIncrementer(incrementAmount: Int) -> () -> Int {
    var total = 0
    let incrementer: () -> Int = {
        total += incrementAmount
        return total
    }
    return incrementer
}

let incrementByTwo = makeIncrementer(incrementAmount: 2)
print(incrementByTwo())
print(incrementByTwo())
print(incrementByTwo())