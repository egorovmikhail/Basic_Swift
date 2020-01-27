/*
 6_EgorovMikhail.playground
 Created by Михаил Егоров on 23.01.2020.

    Домашнее задание
 1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
 3. *Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
 */

import UIKit

struct Queue<Element> {
    var items = [Element]()
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeFirst()
    }
}


var name = Queue<String>()
var numer = Queue<Int>()


name.push("Masha")
name.push("Dasha")
name.push("Olga")
//name.pop()

numer.push(12)
numer.push(45)
numer.push(38)

print(name.items)
print(numer.items)

