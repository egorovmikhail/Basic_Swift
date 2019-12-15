 /* Создано Михаил Егоров от 12.12.2019.
    Урок № 2  Домашние задание:
  1. Написать функцию, которая определяет, чётное число или нет.
  2. Написать функцию, которая определяет, делится ли число без остатка на 3.
  3. Создать возравстающий массив из 100 чисел.
  4. Удалить из массива все чётные числа и все числа, которые не делятся на 3.
  */
    
import UIKit
 
 /* Задание № 1. Написать функцию, которая определяет, чётное число или нет. */
 func evenOrNot (numeric: Int) {
    if numeric % 2 == 0 {
        print("Задание № 1 \n Число \(numeric) является чётным \n")
    } else {
        print("Задание № 1 \n Число \(numeric) не является чётным \n")
    }
 }
 evenOrNot(numeric: 15)
 
  /* Задание № 2. Написать функцию, которая определяет, делится ли число без остатка на 3. */
 func dividedByThree (numeric: Int) -> String {
    var text: String
    if numeric % 3 == 0 {
        text = "Число \(numeric) делится без остатка на 3 \n"
    } else {
        text = "Число \(numeric) не делится без остатка на 3 \n"
    }
    return text
 }
 let t: String = dividedByThree(numeric: 3)
 print("Задание № 2 \n", dividedByThree(numeric: 2), t)
 
 /* Задание № 3 Создать возравстающий массив из 100 чисел. */
 var Array: [Int] = []
 for i in 1...100 {
     Array.append(i)
 }
 print("Задание № 3 \n", Array, "\n")
 
 /* Задание № 4 Удалить из массива все чётные числа и все числа, которые не делятся на 3. */
 for (_, value) in Array.enumerated() {
    if (value % 2) == 0 || (value % 3) != 0 {
        Array.remove(at: Array.firstIndex(of: value)!)
    }
 }

 print("Задание № 4 \n", Array)
