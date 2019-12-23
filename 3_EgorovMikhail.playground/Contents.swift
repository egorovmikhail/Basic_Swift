
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






struct avto {

//    Свойства
    var brand: brandAvto
    var year: yearState
    var trunkVolume: Int = 0
    let engine: engineState
    let window: windowState
    let trunk: trunkState
    

}
enum brandAvto {
    
    case Toyota(Modele: modelToyota)
    case Mitsubishi(Modele: modelMitsubishi)
}

enum modelToyota: String {
    case caldina = "Caldina"
    case prado
    case corolla
    case sprinter
}

enum modelMitsubishi: String {
    case padjero = "Padjero"
    case delica = "Delica"
}

enum yearState: Int {
    case _1970 = 1970
    case _1980 = 1980
    case _1990 = 1990
    case _2000 = 2000
}

enum engineState: String {
    case start = "Запустить двигатель"
    case stop = "Заглушить двигатель"
}

enum windowState: String {
    case open = "Открыть окно"
    case close = "Закрыть окно"
}

enum trunkState: String {
    case load = "Загрузить багажник"
    case unload = "Разгрузить багажник"
}



var padjero = avto(brand: .Mitsubishi(Modele: .padjero), year: ._1970, trunkVolume: 200, engine: .start, window: .close, trunk: .load)
var prado = avto(brand: .Toyota(Modele: .prado), year: ._2000, engine: .start, window: .close, trunk: .unload)
print(padjero.engine)
print(prado.window)


