//
//  main.swift
//  Lession2
//
//  Created by Oleg Konstantinov on 05.09.2025.
//

import Foundation

//1. Объяви переменную name типа String?, сначала присвой ей nil, а потом своё имя. Выведи её в консоль.

var name: String?
name = "Oleg"

print(name ?? "")

// 2. Создай переменную age: Int? = nil. Если в age лежит число – выведи его. Если nil – выведи "Возраст не указан".
var age: Int?

if let age {
    print ("Возраст \(age)")
} else {
    print("Возраст не указан")
}

/* 3. Создай переменную nickname: String? = "ErrorNil". Используя if let, выведи в консоль:
- "Твой ник: ErrorNil" – если значение есть
- "Ника нет" – если nil. */

var nickname: String? = "ErrorNil"

if let nickname {
    print("Твой ник: \(nickname)")
} else {
    print("Ника нет")
}

/*
 4. Пусть email: String? = nil. С помощью if let и else выведи:
  - "Твой email: ...", если он есть
  - "Email не задан", если nil.
 */

let email: String? = nil

if let email {
    print("Твой email: \(email)")
} else {
    print("Email не задан")
}

/*
 5. Задай переменные и присвой значения:
  - name: String?
  - age: Int?
  - city: String?
 Далее выведии используя оператор ??:
 - "Имя: <name>" если оно есть, иначе "Имя не указано"
 - "Возраст: <age>" если он есть, иначе "Возраст не указан"
 - "Город: <city>" если он есть, иначе "Город не указан"
 */

name = "Oleg"
var currentAge: Int?
var city: String? = "Moscow"

print("Имя: \(name ?? "Имя не указано")")
print("Возраст: \(currentAge ?? 0)")
print("Город: \(city ?? "Город не указан")")

/*
 6. Задана переменая var score: Int? = 85
 С помощью if let выведи:
  - "Отлично" – если score >= 80
  - "Хорошо" – если score >= 50
  - "Нужно подтянуть" – если score < 50
  - "Нет данных" – если nil.
 */

var score: Int? = 85
if let score {
    switch score {
        // Здесь я не стал указывать открытый диапазон слева, так как предполагается, что счет начинается с нуля и если вдруг будет указан отрицательный счет, то сработает default.
    case 0...50:
        print("Нужно подтянуть")
    case 50...80:
        print("Хорошо")
    case 80...:
        print("Отлично")
    default:
        print("Данные вне диапозона")
    }
} else {
    print("Нет данных")
}

/*
 7. var numberString: String? = "42". С помощью if let, попробуй преобразовать строку в Int.
 Если получилось – выведи "Число: 42", если нет – "Некорректное значение".
 */
var numberString: String? = "42"

if let numberString,  let number = Int(numberString) {
    print("Число: \(number)")
} else {
    print("Некорректное значение")
}

/*
 8. Создай переменную day = 3. С помощью switch выведи:
  - "Понедельник" если 1
  - "Вторник" если 2
  - "Среда" если 3
  - "День не распознан" для всех остальных чисел.
 */
var day = 3

switch day {
case 1:
    print("Понедельник")
case 2:
    print("Вторник")
case 3:
    print("Среда")
default:
    print("День не распознан")
}

/*
 9. Создай переменную color = "red". С помощью switch выведи:
  - "Стой" если красный
  - "Жди" если жёлтый
  - "Иди" если зелёный
  - "Неизвестный цвет" если другой.
 */

var color = "red"

switch color {
case "red":
    print("Стой")
case "yellow":
    print("Жди")
case "green":
    print("Иди")
default:
    print("Неизвестный цвет")
}

// Дополнительное задание 1
/*
 1 -
 var numberString: String? = "123"
 С помощью if let попробуй преобразовать её в Int.
 Если получилось — выведи "Число: 123".
 Если не получилось — выведи "Не удалось преобразовать".
*/
var secondNumberString: String? = "123"
if let secondNumberString, let secondNumberString = Int(secondNumberString) {
    print("Число: \(secondNumberString)")
} else {
    print("Не удалось преобразовать")
}

/*
 2 -
 var username: String? = "Alice"
 var password: String? = nil
 С помощью optional binding (if let name = username, let pass = password) выведи:

 "Добро пожаловать, Alice!", если и имя, и пароль есть.

 "Введите имя и пароль", если чего-то нет.
*/

var username: String? = "Alice"
var password: String? = nil

if let name = username, let _ = password {
    print("Добро пожаловать, \(name)!")
} else {
    print("Введите имя и пароль")
}
/*
 3-
 var name: String? = "Bob"
 var email: String? = nil
 var country: String? = "Kazakhstan"
 С помощью if let выведи "Профиль: <name>, <email>, <country>", если все три значения есть.
 Иначе выведи "Заполните все поля".
 */
var userName: String? = "Bob"
var firstEmail: String? = nil
var country: String? = "Kazakhstan"

if let userName, let firstEmail, let country {
    print("Профиль: \(userName), \(firstEmail), \(country)")
} else {
    print("Заполните все поля")
}

// Дополнительное задание 2

/*
 //1
 var firstName: String? = "John"
 var lastName: String? = nil
 С помощью if let проверь:

 Если обе строки есть — выведи "Полное имя: John ...".

 Если хотя бы одной нет — выведи "Данных недостаточно".
*/

var firstName: String? = "John"
var lastName: String? = nil

if let firstName, let lastName {
    print("Полное имя: \(firstName) \(lastName)")
} else {
    print("Данных не достаточно")
}

/*
 //2
 var price: Double? = 200
 var discountPercent: Double? = 10
 С помощью if let вычисли итоговую цену:
 finalPrice = price - (price * discountPercent / 100)
 Выведи "Цена со скидкой: ...".
 Если данных нет — выведи "Ошибка".
*/

var price: Double? = 200
var discountPercent: Double? = 10

if let price, let discountPercent {
    let finalPrice = price - (price * discountPercent / 100)
    print("Цена со скидкой: \(finalPrice)")
} else {
    print("Ошибка")
}
/*
 //3
 var meters: Double? = 1200
 С помощью if let преобразуй метры в километры (/ 1000) и выведи "1.2 км".
 Если nil — выведи "Нет данных".
*/
var meters: Double? = 1200

if let meters {
    print("\(meters / 1000) км")
} else {
    print("Нет данных")
}
/*
 //4
 var first: Int? = 15
 var second: Int? = 20
 С помощью if let выведи:

 "Первое больше"

 "Второе больше"

 "Равны"
 Если хотя бы одно nil — выведи "Сравнение невозможно".
 */
var first: Int? = 15
var second: Int? = 20

// Я выбрал проверку через switch - case, так как для меня он выглядит более лаконично и читабельно
if let first, let second {
    switch first {
    case first where first > second :
        print("Первое больше")
    case first where first < second:
        print("Второе больше")
    case first where first == second:
        print("Равны")
    default:
        break
    }
} else {
    print("Сравнение не возможно")
}

// Также прикладываю выполнение через if-else

if let first, let second {
    if first > second {
        print("Первое больше")
    } else if first < second {
        print("Второе больше")
    } else {
        print("Равны")
    }
} else {
    print("Сравнение не возможно")
}
