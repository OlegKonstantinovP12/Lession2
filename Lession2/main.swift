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

var firstName: String? = "Oleg"
var currentAge: Int?
var city: String? = "Moscow"

print("Имя: \(firstName ?? "Имя не указано")")
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

