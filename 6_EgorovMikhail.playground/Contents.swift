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
    var count: Int {
        return items.count
    }
    var lastItem: Element? {
        return items.isEmpty ? nil : items.last
    }
    var firstItem: Element? {
        return items.isEmpty ? nil : items.first
    }
    subscript (index: Int) -> Element? {
        return index > items.count ? nil : items[index]
    }
}

var name = Queue<String>()



name.push("Masha")
name.push("Dasha")
name.push("Olga")
name.push("Sasha")
name.push("Igor")
name.push("Denis")
name.push("Sveta")
//name.pop()
name.count
name.lastItem
name.firstItem
print(name.items)

name[9]

