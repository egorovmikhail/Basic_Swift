import UIKit

/*--------------------------------------- Задание № 1 ---------------------------------------*/
/* Решить квадратное уравнение. ax² + bx + c = 0,
                                      где a, b, c — некоторые числа (a ≠ 0), x — неизвестное.*/
func quadraticEquation (a: Float, b: Float, c: Float) {
    
    let D = b * b - 4 * a * c                       // Определяем количество корней в уравнении
    
    var task1 = "Задание № 1 \n"
    if a != 0 {
        task1 += "Если а = \(a), b = \(b) и c = \(c) \n"
        if D > 0 {
            task1 += "Выражение имеет два корня: \((-b + sqrt(D)) / (2 * a)) и \((-b - sqrt(D)) / (2 * a)) \n"
        }
        else if D == 0 {
            task1 += "Выражение имеет один корень: \((-b + sqrt(D)) / (2 * a)) \n"
        }
        else if D < 0 {
            task1 += "Корней нет \n"
        }
    }
    else {
        task1 += "a не должно ровняться 0 \n"
    }
    print(task1)
}
quadraticEquation(a: 8, b: -14, c: 5)

/*-------------------------------------- Задание № 2 -----------------------------------------*/
/* Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.*/
func task2 (cathetA: Float, cathetB: Float) {
    let square = cathetA * cathetB / 2                             // Плолщадь треугольника
    let hypotenuse = sqrt(pow(cathetA, 2) + pow(cathetB, 2))       // Гипотенуза
    let peri = cathetA + cathetB + hypotenuse                      // Периметр
    
    var task2 = "Задание № 2 \n"
    task2 += "Даны катеты: A = \(cathetA) и B = \(cathetB)  \n"
    task2 += "Площадь:     \(square)     \n"
    task2 += "Гипотенуза:  \(hypotenuse) \n"
    task2 += "Периметр:    \(peri)       \n"
    print (task2)
}
task2(cathetA: 12, cathetB: 8)

/*------------------------------------- *Задание № 3 -----------------------------------------*/
/*  Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет */
//
func deposit( firstDepo: Float, interestRate: Float) {
    
    let depTerm: Float = 5           //  Срок вклада в годах
    let capYear: Float = 12          //  Капитализаций в год
    var lastDepo: Float = firstDepo
    var i = 0
    //   В теле цыкла узнаём сумму процента за месяц (одну капитализацию)
    //   и добовляем её к депозиту и повторяем это (срок вклада * капитализаций в год)
    while i < Int((capYear * depTerm)) {

        lastDepo += lastDepo / 100 * interestRate / capYear
        i += 1
    }
    
    var text = "Задание № 3 \n"
    text += "Изночальная сумма вклада:  \(firstDepo) \n"
    text += "Депозитная годовая ставка: \(interestRate) \n"
    text += "Сумма вклада через \(depTerm) лет:"
    
    print(text, lastDepo)
}

deposit(firstDepo: 10000, interestRate: 10)
