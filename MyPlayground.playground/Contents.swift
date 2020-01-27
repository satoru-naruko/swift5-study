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

// 関数呼び出し時に number: xx が必要
func hogehoge ( number: Int) {
    
    if number == 3 {
        print("hogehogehoge");
    }
}

// 関数呼び出し時に引数ラベルの省略を認める
func hogehoge2 ( _ number: Int) {
    
    if number == 5 {
        print("hogehogehoge2");
    }
}

hogehoge2(5)
hogehoge(number: 3)

// 引数でinout を指定して　&をつけると関数内で値を変更できる
func mySwap(_ a: inout Int, _ b: inout Int) {
    let tmp = a; a = b; b = tmp;
}

var x1 = 100;
var x2 = 200;

mySwap(&x1, &x2)

print(x1)
print(x2)

let defaultId: Int = 9

func getSize( _ id:Int = defaultId) -> (Int){
    var size = 10;
    if id == defaultId {
        size = 9
    }
    return size;
}

print(getSize(1))
print(getSize()) //defaultサイズ

// デフォルト引数は = xxxでも指定できる
func setGray(level : Int=255, _ alpha : Float = 1.0){
    print("Gray=\(level),Alpha=\(alpha)")
}

setGray(level:50)
setGray(level:200, 30)

