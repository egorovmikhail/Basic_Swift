
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



enum brandAvto: String {
    case Toyota = "Toyota"
    case Mitsubishi = "Mitsubishi"
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


struct avto {
//    Свойства
    var brand: brandAvto
    var model: String = ""
    var year: Int = 0
    var trunkVolume: Int = 0
    let engine: engineState
    let window: windowState
    let trunk: trunkState    
}




var mitsubishi = avto(brand: .Mitsubishi, engine: .start, window: .close, trunk: .load)
var toyota = avto(brand: .Toyota, model: "Prado", year: 2000, trunkVolume: 200, engine: .start, window: .close, trunk: .load)
print(mitsubishi)
print(toyota)


