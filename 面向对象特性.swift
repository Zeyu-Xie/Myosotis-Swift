print("类的封装")

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("Hi! I'm \(self.name). I'm \(self.age) years old. ")
    }
}

class Student: Person {
    var school: String

    init(name: String, age: Int, school: String) {
        self.school = school
        super.init(name: name, age: age)
    }

    override func introduce() {
        print("Hi! I'm \(self.name). I'm \(self.age) years old. I'm in \(self.school). ")
    }
}

let acan = Person(name: "Acan", age: 21)
let genius = Student(name: "Genius", age: 22, school: "University of Toronto")

acan.introduce()
genius.introduce()

print("结构体")

struct Car {
    var label: String
    var price: Int

    func introduce() {
        print("This is a \(self.label) car. I bought it at \(self.price). ")
    }
}

var myCar = Car(label: "Volvo", price: 300000)
myCar.introduce()

print("协议")

protocol Vehicle {
    var numberOfWheels: Int { get }
    func startEngine()
}

struct Motor: Vehicle {
    var numberOfWheels: Int {
        return 3
    }

    func startEngine() {
        print("Motor engine started. ")
    }
}

struct Bicycle: Vehicle {
    var numberOfWheels: Int {
        return 2
    }

    func startEngine() {
        print("Bicycle doesn't have an engine. ")
    }
}

let motor = Motor()
let bicycle = Bicycle()
motor.startEngine()
bicycle.startEngine()

print("扩展")

protocol CanFly {
    func fly()
}

extension CanFly {
    func fly() {
        print("Something is flying. ")
    }
}

struct Bird: CanFly {
}

var bird = Bird()
bird.fly()