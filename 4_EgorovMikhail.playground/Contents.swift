/*
    4_EgorovMikhail.playground
    Created by Михаил Егоров on 05.01.2020.
    Copyright © 2019 Михаил Егоров.
    Домашнее задание
    1.  Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
    2.  Описать пару его наследников trunkCar и sportCar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
    3.  Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
    4.  В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
    5.  Создать несколько объектов каждого класса. Применить к ним различные действия.
    6.  Вывести значения свойств экземпляров в консоль.
 */

import UIKit

//      Перечисление марок автомобилей
 enum brandAvto {
     case Toyota (modele: modelToyota)
     case Mitsubishi (modele: modelMitsubishi)
  }
 //      Перечесление моделей марки Тойта
 enum modelToyota: String {
     case caldina = "Caldina"
     case prado = "Prado"
     case corolla = "Corolla"
     case sprinter = "Sprinter"
 }
 //      Перечисление моделей марки Маджеро
 enum modelMitsubishi: String {
     case padjero = "Padjero"
     case delica = "Delica"
 }

class Car {
    
    //    Свойства
    var brand: String
    var year: yearState
    var engine: engineState
    var window: windowState
    
    
    
    //      Перечисление года выпуска автомобилей
    enum yearState: Int {
        case _1970 = 1970
        case _1980 = 1980
        case _1990 = 1990
        case _2000 = 2000
    }
   
    //      Перечисления запуска/остановки двигателя
    enum engineState: String {
        case start = "двигатель запущен"
        case stop = "двигатель заглушен"
    }
    //      Перечисления открыть/закрыть окна
    enum windowState: String {
        case open = "окна открыты"
        case close = "окна закрыты"
    }

    init(brand: String, year: yearState, engine: engineState, window: windowState) {
        self.brand = brand
        self.year = year
        self.engine = engine
        self.window = window
    }
    
//    Метод открыть/закрыть окна
    func addwindow (onOfwindow: windowState) {
        onOfwindow == .close ?
            (self.window = .close) :
            (self.window = .open)
    }
//    Метод заглушить/запустить двигатель
    func addengine (onOfengine: engineState) {
        onOfengine == .stop ?
            (self.engine = .stop) :
            (self.engine = .start)
    }
//    Метод вывода свойств экземпляров структур
    func description() {
        var avto: String = "Автомобиль: "
        avto += "\(brand), "
        avto += "год выпуска \(year.rawValue), "
//        avto += "объём багажника \(trunkVolume.rawValue) литров, "
        avto += "\(engine.rawValue), "
        avto += "\(window.rawValue), "
//        avto += "багажник загружен на \(trunk.rawValue) %"
        print(avto)
    }
}

class TrunkCar: Car {
    
    var trunkVolume: trunkVolumeState
    var trunk: trunkLoad
    
//      Поречисление возможных объёмов багажника
    enum trunkVolumeState: Int {
       case _200 = 200
       case _150 = 150
       case _100 = 100
   }
//      Перечисления для загрузки/разгрузки багажника в %
    enum trunkLoad: Int {
        case _25 = 25
        case _50 = 50
        case _75 = 70
        case _100 = 100
    }

    init(brand: String, year: yearState, trunkVolume: trunkVolumeState, engine: engineState, window: windowState, trunk: trunkLoad) {
        self.trunkVolume = trunkVolume
        self.trunk = trunk
        
        super.init(brand: brand, year: year, engine: engine, window: window)
    }
//    Метод загрузить/разгрузить багажник в процентах
    func addtrunk (onOftrunk: trunkLoad) {
        switch onOftrunk {
            case ._100:
                self.trunk = ._100
            case ._75:
                self.trunk = ._75
            case ._50:
                self.trunk = ._50
            case ._25:
                self.trunk = ._25
        }
    }
    
    override func description() {
        var auto: String = "Автомобиль: "
        auto += "\(brand), "
            auto += "год выпуска \(year.rawValue), "
            auto += "объём багажника \(trunkVolume.rawValue) литров, "
            auto += "\(engine.rawValue), "
            auto += "\(window.rawValue), "
            auto += "багажник загружен на \(trunk.rawValue) %"
            print(auto)
    }
    
}

class SportCar: Car {
    
    var maxSpeed: Int
    var drive: driveUnit
    
    enum driveUnit: String {
        case front = "передний",
             rear  = "задний"
    }
    
    init(brand: String, maxSpeed: Int, year: yearState, drive: driveUnit, engine: engineState, window: windowState) {
        self.maxSpeed = maxSpeed
        self.drive = drive
        
        
        super.init(brand: brand, year: year, engine: engine, window: window)
    }
    
    override func description() {
        var auto: String = "Автомобиль: "
        auto += "\(brand), "
            auto += "максимальная скорость \(maxSpeed) км/ч, "
            auto += "год выпуска \(year.rawValue), "
            auto += "привод \(drive.rawValue), "
            auto += "\(engine.rawValue), "
            auto += "\(window.rawValue) "
            print(auto)
    }
}
var trunkCar = TrunkCar(brand: "Mitsubishi", year: ._1970, trunkVolume: ._100, engine: .start, window: .close, trunk: ._100)

var sportCar = SportCar(brand: "Skoda", maxSpeed: 300, year: ._1970, drive: .front, engine: .start, window: .close)

trunkCar.description()
sportCar.description()


