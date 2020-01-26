import UIKit

//xcode short cut
// shift + cmd + Enter -> executePlayground

var str = "Hello, playground"
var age : Int = 10
//age = 10
print(age)

// if
if age <= 20 {
    print("if age :", age)
//} else if case 21 ... 30 = age {
// ... means 21 <= age <= 30
} else if case 21 ..< 30 = age {
    print("else if age :", age)
} else {
    print("else root age :", age)
}

// for and where
for i in 1 ..< 5 where i % 2 == 0 {
    print (" for loop ", i)
}

// swtch
switch age {
    case 30:
    print("adult")
    print("boy")
    case 10:
    print(age,"years old")
    print("next year 11 years old")
    fallthrough
default:
    print("default age :")
}

loop: while true {
    for i in 1..<7 {
        if i == 4 {
            // out while loop exit
            // break labelname
            break loop
        }
        print("loop i:", i);
    }
    print("while loop =======")
}

print("while loop exit")

conditionablelabel : if age == 21 {
    if age % 3==0{
        break conditionablelabel
    }
    print("conditionablelabel")
}
testlabel: do {
    // tはこのscopeの範囲内でのみ使用できる
    let t = 39;
    if t >= 39 {
        break testlabel
    }
    print(t);
}

var blood = "O型"
search: for t in ["A型","B型","O型","AB型"] {
    if blood == t {
        print(t)
        break search
    }
}

func hogehoge (number :Int) {
    
    if number == 3 {
        print("hogehogehoge");
    }
}

hogehoge(number :5)
hogehoge(number: 3)

