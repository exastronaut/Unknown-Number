
import Foundation
print("Компьютер случайным образом загадал число. Вам требуется отгадать его.")

//генерация случайного числа
let randomNumber = UInt8.random(in: 1...250)
print("Введите вариант числа от 1 до 250 и нажмите Enter")
//флаг-указатель на победу
var isWin = false
//цикл с постпроверкой условия
repeat {
    //попытка переобразования введенного значения к UInt8
    guard let userNumber = UInt8(readLine() ?? "") else {
        print("Вы ввели некоректное число. Попробуйте снова")
        continue
    }
    //проверка введенного числа
    if userNumber < randomNumber {
        print("Ваш вариант меньше загаданного числа")
    } else if userNumber > randomNumber {
        print("Ваш вариант больше загаданного числа")
    } else {
        print("Вы угадали!")
        isWin = true
    }
} while !isWin
