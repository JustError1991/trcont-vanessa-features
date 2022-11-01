﻿#language: ru

@tree

Функционал: Проверка открытия и записи документа

Как Бухгалтер я хочу
открыть документ, записать и провести его 
чтобы не было ошибок при работе с ним 

Контекст: 
Дано Я подключаю клиент тестирования с параметрами бухгалтера

Дано Я открываю основную форму списка документа "РеализацияТоваровУслуг"
Тогда открылось окно 'Реализация (акты, накладные, УПД)'
И Пауза 10
Если поле с именем "ОтборОрганизацияИспользование" существует тогда   
	И я снимаю флаг с именем 'ОтборОрганизацияИспользование'
И Я очищаю фильтр на форме списка
	
Сценарий: Открыть и закрыть существующий объект БД (Реализация Товаров Услуг) (Услуги)
	И Я устанавливаю фильтр на список
			| Проведен | равно | Да |
			| Ручная корректировка | равно | Нет |
			| Организация | равно | ЦКП - Аппарат управления |
			| Вид операции | равно | Услуги |
	И пауза 5
	И Я устанавливаю сортировку на список без применения стандартных настроек
			| Дата | По возрастанию |
	И в таблице 'Список' я перехожу к последней строке
	И в таблице "Список" я выбираю текущую строку
	Тогда открылась форма с именем "Документ.РеализацияТоваровУслуг.Форма.ФормаДокументаУслуги"
	И я запоминаю заголовок формы в переменную "ЗаголовокФормы"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "ЗаголовокФормы" в течение 20 секунд
	И Я закрываю окно 'Реализация (акты, накладные, УПД)'

Сценарий: Открыть и закрыть существующий объект БД (Поступление товаров и услуг) (Товары)
	И Я устанавливаю фильтр на список
			| Проведен | равно | Да |
			| Ручная корректировка | равно | Нет |
			| Организация | равно | ЦКП - Аппарат управления |
			| Вид операции | равно | Товары |
	И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" из выпадающего списка с именем "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0ОтборПравоеЗначение" я выбираю точное значение 'Товары'
	И в таблице "КомпоновщикНастроекПользовательскиеНастройкиЭлемент0Отбор" я завершаю редактирование строки
	И я нажимаю на кнопку с именем 'ФормаЗакончитьРедактирование'
	И пауза 5
	И Я устанавливаю сортировку на список без применения стандартных настроек
			| Дата | По возрастанию |
	И в таблице 'Список' я перехожу к последней строке
	И в таблице "Список" я выбираю текущую строку
	Тогда открылась форма с именем "Документ.РеализацияТоваровУслуг.Форма.ФормаДокументаТовары"
	И я запоминаю заголовок формы в переменную "ЗаголовокФормы"
	И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
	И я жду закрытия окна "ЗаголовокФормы" в течение 20 секунд
	И Я закрываю окно 'Реализация (акты, накладные, УПД)'


		
