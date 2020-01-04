
/*
   3_EgorovMikhail.playground
   Created by Михаил Егоров on 06.12.2019.
   Copyright © 2019 Михаил Егоров.
 
 1. Описать несколько структур – любой легковой автомобиль и любой грузовик.

 2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

 3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

 4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

 5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

 6. Вывести значения свойств экземпляров в консоль.
 */

import UIKit

struct Avto {

//    Свойства
    var brand: brandAvto
    let year: yearState
    let trunkVolume: trunkVolumeState
    var engine: engineState
    var window: windowState
    var trunk: trunkLoad
//    Метод открыть/закрыть окна
    mutating func addwindow (onOfwindow: windowState) {
        onOfwindow == .close ?
            (self.window = .close) :
            (self.window = .open)
    }
//    Метод заглушить/запустить двигатель
    mutating func addengine (onOfengine: engineState) {
        onOfengine == .stop ?
            (self.engine = .stop) :
            (self.engine = .start)
    }
//    Метод загрузить/разгрузить багажник в процентах
    mutating func addtrunk (onOftrunk: trunkLoad) {
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
//    Метод вывода свойств экземпляров структур
    func description() {
        var avto: String = "Автомобиль: "
        
        switch self.brand{
            case .Mitsubishi(let modele):
                avto += "Mitsubishi \(modele.rawValue), "
            case .Toyota(let modele):
                avto += "Toyota \(modele.rawValue), "
        }
        avto += "год выпуска \(year.rawValue), "
        avto += "объём багажника \(trunkVolume.rawValue) литров, "
        avto += "\(engine.rawValue), "
        avto += "\(window.rawValue), "
        avto += "багажник загружен на \(self.trunk.rawValue) %"
        print(avto)
    }
}
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
//      Перечисление года выпуска автомобилей
enum yearState: Int {
    case _1970 = 1970
    case _1980 = 1980
    case _1990 = 1990
    case _2000 = 2000
}
//      Поречисление возможных объёмов багажника
enum trunkVolumeState: Int {
    case _200 = 200
    case _150 = 150
    case _100 = 100
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
//      Перечисления для загрузки/разгрузки багажника в %
enum trunkLoad: Int {
    case _25 = 25
    case _50 = 50
    case _75 = 70
    case _100 = 100
}
//      Создание экземпляров структур
var padjero = Avto(brand: .Mitsubishi(modele: .padjero), year: ._1980, trunkVolume: ._200, engine: .stop, window: .open, trunk: ._100)
var prado = Avto(brand: .Toyota(modele: .prado), year: ._2000, trunkVolume: ._150, engine: .stop, window: .open, trunk: ._75)
//      Изменение свойств состояния двигателя
print(modelMitsubishi.padjero.rawValue, padjero.engine.rawValue)
padjero.addengine(onOfengine: .start)
print(modelMitsubishi.padjero.rawValue, padjero.engine.rawValue)
//      Изменение свойств состояния окон
print(modelToyota.prado.rawValue, prado.window.rawValue)
prado.addwindow(onOfwindow: .close)
print(modelToyota.prado.rawValue, prado.window.rawValue)
//      Изменение свойств состояния багажника
print("Багажник загружен на \(prado.trunk.rawValue) %")
prado.addtrunk(onOftrunk: ._50)
print("Багажник загружен на \(prado.trunk.rawValue) %")
//      Вывод значения свойств экземпляров в консоль
padjero.description()
prado.description()


