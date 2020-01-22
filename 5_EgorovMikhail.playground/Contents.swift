
/*
 5_EgorovMikhail.playground
 Created by Михаил Егоров on 19.01.2020.
 Copyright © 2019 Михаил Егоров.
 
 Домашнее задание
 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

 5. Создать несколько объектов каждого класса. Применить к ним различные действия.

 6. Вывести сами объекты в консоль.
 */

import UIKit

enum YearState: Int {
    case _1970 = 1970
    case _1980 = 1980
    case _1990 = 1990
    case _2000 = 2000
}
//    Перечисления запуска/остановки двигателя
enum EngineState: String {
    case start = "двигатель запущен"
    case stop = "двигатель заглушен"
}
//    Перечисления открыть/закрыть окна
enum WindowState: String {
    case open = "окна открыты"
    case close = "окна закрыты"
}
//    Перечисления открыть/закрыть двери
enum DoorState: String {
    case open = "двери открыты"
    case close = "двери закрыты"
}


protocol Car {
//    Свойства
    var brand: String { get }
    var model: String { get }
    var year: YearState { get }
    var engine: EngineState { get set }
    var windows: WindowState { get set }
    var door: DoorState { get set }
    
    init(brand: String, model: String, year: YearState, engine: EngineState, windows: WindowState, door: DoorState)
    
}

extension Car {
    mutating func StopSartEngin() {
        switch engine {
            case .start:
                return self.engine = EngineState.stop
            case .stop:
                return self.engine = EngineState.start
        }
    }
    mutating func OpenCloseWindows() {
        switch windows {
            case .close:
                return self.windows = WindowState.open
            case .open:
                return self.windows = WindowState.close
        }
    }
    mutating func OpenCloseDoor() {
        switch door {
            case .close:
                return self.door = DoorState.open
            case .open:
                return self.door = DoorState.close
        }
    }
}

class TrunkCar: Car {
    
    var brand: String
    var model: String
    var year: YearState
    var engine: EngineState
    var windows: WindowState
    var door: DoorState
    
    required init(brand: String, model: String, year: YearState, engine: EngineState, windows: WindowState, door: DoorState) {
        self.brand = brand
        self.model = model
        self.year = year
        self.engine = engine
        self.windows = windows
        self.door = door
    }
    
    
}


//class SportCar {
//}

var car = TrunkCar(brand: "Mitsubishi", model: "Sprinter", year: ._1970, engine: .stop, windows: .close, door: .close)

car.StopSartEngin()
print(car.engine.rawValue)
car.StopSartEngin()
print(car.engine.rawValue)


