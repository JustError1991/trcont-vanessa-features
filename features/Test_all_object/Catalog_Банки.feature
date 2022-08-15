﻿#language: ru

@tree

Функционал: Проверка открытия и записи спрвочника

Как Бухгалтер я хочу
открыть справочник и записать его 
чтобы не было ошибок при работе с ним 

Контекст: 
Дано Я подключаю клиент тестирования с параметрами бухгалтера 

Сценарий: Открыть и закрыть существующий объект БД (Банки) 
Дано В панели разделов я выбираю 'Банк и касса'
И В командном интерфейсе я выбираю 'Справочники' 'Банки'
Тогда открылось окно 'Банки'
И Я очищаю фильтр на форме списка
И Я устанавливаю фильтр на список
	| БИК | равно | '004525987' |
И я нажимаю на кнопку с именем 'ФормаСписок' 
И в таблице "Список" я выбираю текущую строку
Тогда открылась форма с именем "Справочник.Банки.Форма.ФормаЭлемента"
И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
Тогда в окне сообщений пользователю нет сообщений
Если появилось предупреждение, тогда
	Тогда я вызываю исключение "Ошибка записи справочника"
И Я закрываю окно 'Банки'



	
