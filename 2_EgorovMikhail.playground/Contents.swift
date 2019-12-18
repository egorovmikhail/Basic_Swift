 /* Создано Михаил Егоров от 12.12.2019.
    Урок № 2  Домашние задание:
  1. Написать функцию, которая определяет, чётное число или нет.
  2. Написать функцию, которая определяет, делится ли число без остатка на 3.
  3. Создать возравстающий массив из 100 чисел.
  4. Удалить из массива все чётные числа и все числа, которые не делятся на 3.
  5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.
  6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:

  a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
  b. Пусть переменная p изначально равна двум — первому простому числу.
  c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
  d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
  e. Повторять шаги c и d, пока возможно.
  */
    
import UIKit
 /******************************** Задание № 1 **********************************
                Написать функцию, которая определяет, чётное число или нет. 
  *****************************************************************************/
 func evenOrNot (numeric: Int) {
    if numeric % 2 == 0 {
        print("Задание № 1 \n Число \(numeric) является чётным \n")
    } else {
        print("Задание № 1 \n Число \(numeric) не является чётным \n")
    }
 }
 evenOrNot(numeric: 15)
 
 /******************************** Задание № 2 **********************************
           Написать функцию, которая определяет, делится ли число без остатка на 3.
  *****************************************************************************/
 func dividedByThree (numeric: Int) -> String {
    var text: String
    if numeric % 3 == 0 {
        text = "Число \(numeric) делится без остатка на 3 \n"
    } else {
        text = "Число \(numeric) не делится без остатка на 3 \n"
    }
    return text
 }
 print("Задание № 2 \n",
       dividedByThree(numeric: 2),
       dividedByThree(numeric: 99)
 )
 
 /******************************** Задание № 3 **********************************
                     Создать возравстающий массив из 100 чисел.
  *****************************************************************************/
 var Array: [Int] = []
 for i in 1...100 {
     Array.append(i)
 }
 print("Задание № 3 \n", Array, "\n")
 
 /******************************** Задание № 4 **********************************
           Удалить из массива все чётные числа и все числа, которые не делятся на 3.
  *****************************************************************************/
 for (_, value) in Array.enumerated() {
    if (value % 2) == 0 || (value % 3) != 0 {
        Array.remove(at: Array.firstIndex(of: value)!)
    }
 }
 print("Задание № 4 \n", Array, "\n")

 /******************************** Задание № 5 **********************************
            Написать функцию, которая добавляет в массив новое число Фибоначчи
                        и добавить припомощи нее 100 элементов.
  *****************************************************************************/
 func fib(_ n: Int) -> Array<Double> {
    var fibs: [Double] = [1, 1]
    (2...n).forEach { i  in
        fibs.append(fibs[i - 1] + fibs[i - 2])
     }
    return fibs
 }
 print("Задание № 5 \n", fib(110), "\n")
 
 /******************************** Задание № 6**********************************
  6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число,
  большее единицы, называется простым, если оно делится только на себя и на единицу.
  Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена,
  нужно выполнить следующие шаги:
    a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
    b. Пусть переменная p изначально равна двум — первому простому числу.
    c. Зачеркнуть в списке числа от 2p до n, считая шагами по p
                                            (это будут числа, кратные p: 2p, 3p, 4p, ...).
    d. Найти первое не зачёркнутое число в списке, большее, чем p,
                                        и присвоить значению переменной p это число.
    e. Повторять шаги c и d, пока возможно.
  *****************************************************************************/
 func methodEratos (_ n: Int) {
// Созаём массив
 var prime: [Int] = []
 (1...n).forEach { i in
     prime.append(i + 1)
 }
 print("Задание № 6 \n a. \n", prime, "\n")
// удаляем кратные числа от 2р 3р и так далее
 for i in prime {
     let p = i
     for i in prime {
        if i == p {
            continue
        }
        else if (i % p) == 0 {
            prime.remove(at: prime.firstIndex(of: i)!)
        }
    }
//    print(p, prime)
 }
 print("b, c, d, e. \n", prime, "\n")
 }
 
 methodEratos(50)
