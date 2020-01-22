
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
    case _1999 = 1999
    case _2010 = 2010
    case _2015 = 2015
    case _2020 = 2020
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
    var year: YearState { get }
    var engine: EngineState { get set }
    var windows: WindowState { get set }
    var door: DoorState { get set }
    
    func StopSartEngin()
}

extension Car {

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

class TruсkCar: Car {
    
    enum TruсkTupe: String{
        case dump = "самосвал"
        case tank = "цистерна"
        case refrigerator = "морозильная камера"
    }
    
    var brand: String
    var trunkTupe: TruсkTupe
    var year: YearState
    var engine: EngineState
    var windows: WindowState
    var door: DoorState = .close
    
    init(brand: String, trunkTupe: TruсkTupe, year: YearState, engine: EngineState, windows: WindowState, door: DoorState) {
        self.brand = brand
        self.year = year
        self.trunkTupe = trunkTupe
        self.engine = engine
        self.windows = windows
        self.door = door
    }
    
    func StopSartEngin() {
        switch engine {
            case .start:
                return self.engine = EngineState.stop
            case .stop:
                return self.engine = EngineState.start
        }
    }
}
extension TruсkCar: CustomStringConvertible {

    var description: String {
        return "\nГрузовой автомобиль \(brand) \n\tтип кузова \(trunkTupe.rawValue) \n\tгод выпуска \(year.rawValue)  \n\t\(engine.rawValue) \n\t\(windows.rawValue) \n\t\(door.rawValue)"
    }
}

class SportCar: Car {
    
    var brand: String
    var maxSpeed: String
    var year: YearState
    var engine: EngineState
    var windows: WindowState
    var door: DoorState
    
    init(brand: String, maxSpeed: String, year: YearState, engine: EngineState, windows: WindowState, door: DoorState) {
        self.brand = brand
        self.year = year
        self.maxSpeed = maxSpeed
        self.engine = engine
        self.windows = windows
        self.door = door
    }
    
    func StopSartEngin() {
        switch engine {
            case .start:
                return self.engine = EngineState.stop
            case .stop:
                return self.engine = EngineState.start
        }
    }
}

extension SportCar: CustomStringConvertible {

    var description: String {
        return "\nСпортивный автомобиль \(brand) \n\tгод выпуска \(year.rawValue) \n\tмаксимальная скорость \(maxSpeed) км/ч \n\t\(engine.rawValue) \n\t\(windows.rawValue) \n\t\(door.rawValue)"
    }
}



var truckCar = TruсkCar(brand: "Камаз", trunkTupe: .refrigerator, year: ._2020, engine: .stop, windows: .close, door: .close)
truckCar.StopSartEngin()
print(truckCar.engine.rawValue)
truckCar.StopSartEngin()
print(truckCar.engine.rawValue)


print(truckCar)
