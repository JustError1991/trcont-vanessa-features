﻿#language: ru

@tree

Функционал: Проверка открытия и записи документа

Как Бухгалтер я хочу
открыть документ, записать и провести его 
чтобы не было ошибок при работе с ним 

Контекст: 
	Дано Я подключаю клиент тестирования с параметрами бухгалтера
	
Сценарий: Открыть и закрыть существующий объект БД (Счет-фактура полученный)
	Дано Я открываю основную форму списка документа "СчетФактураПолученный"
	Тогда открылось окно 'Счета-фактуры полученные'
	И Пауза 2
	Если поле с именем "ОтборОрганизацияИспользование" существует тогда   
		И я снимаю флаг с именем 'ОтборОрганизацияИспользование'
	И Я очищаю фильтр на форме списка
	И Я устанавливаю фильтр на список
			| Проведен 			| равно | Да |
			| Вид счета-фактуры | равно | На поступление |
			| Организация | равно | ЦКП - Аппарат управления |
	И пауза 5
	И в таблице 'Список' я перехожу к последней строке
	И в таблице "Список" я выбираю текущую строку
	Тогда открылась форма с именем "Документ.СчетФактураПолученный.Форма.ФормаДокументаНаПоступление"
	И я запоминаю заголовок формы в переменную "ЗаголовокФормы"
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна "ЗаголовокФормы" в течение 20 секунд
	Если появилось предупреждение, тогда
		Тогда я вызываю исключение "Ошибка записи документа"
	И в окне сообщений пользователю нет сообщений
	И Я закрываю окно 'Счета-фактуры полученные'
	