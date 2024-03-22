#Использовать cmdline
#Использовать oint
#Использовать "../../tools"
#Использовать "../../help"

Перем ОбъектОПИ;
Перем Парсер;

Процедура ПриСозданииОбъекта()

	ОбъектОПИ = Новый СвязьОПИ;

КонецПроцедуры

#Область СлужебныеПроцедурыИФункции

#Область Основные

Процедура ОсновнойОбработчик()
	
	Парсер = Новый ПарсерАргументовКоманднойСтроки();

	Для Каждого Команда Из ОбъектОПИ.ПолучитьИмяМодуля() Цикл
		СформироватьКоманду(Команда.Ключ, Парсер);
	КонецЦикла;

	Результат      = Парсер.Разобрать(АргументыКоманднойСтроки);
	ТекущаяКоманда = Результат["Команда"];
	
	Если ТекущаяКоманда = Неопределено Тогда
		Справка.ВывестиНачальнуюСтраницу();
	Иначе
		ВыполнитьОбработкуКоманды(Результат);
	КонецЕсли;
	
КонецПроцедуры

Процедура СформироватьКоманду(Знач Имя, Парсер)
	
	Команда           = Парсер.ОписаниеКоманды(Имя);
	ТаблицаПараметров = ОбъектОПИ.ПолучитьТаблицуПараметров(Имя).Скопировать();
	Парсер.ДобавитьПозиционныйПараметрКоманды(Команда, "Метод");
	
	ДобавитьПараметрыКоманды(Парсер, Команда, ТаблицаПараметров);
	
	Парсер.ДобавитьКоманду(Команда);
	
КонецПроцедуры

Процедура ВыполнитьОбработкуКоманды(Знач Данные)
	
	ТекущаяКоманда = Данные["Команда"];
	Вывод		   = "";
	
	Попытка
			
		Вывод = ПолучитьРезультатОбработки(ТекущаяКоманда, Данные);
		ОбработатьВыводJSON(Вывод);

		Если ЗначениеЗаполнено(Вывод) Тогда
			Сообщить(Символы.ПС + Вывод + Символы.ПС, СтатусСообщения.Внимание);
		КонецЕсли;

	Исключение

		Если ЗначениеЗаполнено(Вывод) Тогда
			Сообщить(Вывод);
		Иначе
			Сообщить(ОписаниеОшибки(), СтатусСообщения.ОченьВажное);
			Сообщить(Символы.ПС);
		КонецЕсли;
		
	КонецПопытки;
	
КонецПроцедуры

Функция ПолучитьРезультатОбработки(Знач Команда, Знач Данные)

	Модуль    = ОбъектОПИ.ПолучитьИмяМодуля(Команда);
	Параметры = Данные["ЗначенияПараметров"];
	Метод     = Параметры["Метод"];
	Ответ     = "<пустой возврат>";

	ТаблицаПараметров = ОбъектОПИ.ПолучитьТаблицуПараметров(Команда);

	Если Не ЗначениеЗаполнено(Метод) Тогда
		Справка.ВывестиСправкуПоМетодам(Команда, ТаблицаПараметров);
		Возврат "";
	КонецЕсли;

	ОтборКоманды      = Новый Структура("МетодПоиска", вРег(Метод));
	ПараметрыМетода   = ТаблицаПараметров.НайтиСтроки(ОтборКоманды);

	Если Параметры.Количество() = 1 Тогда
		Справка.ВывестиСправкуПоПараметрам(ПараметрыМетода);
		Возврат "";
	КонецЕсли;

	ТекстВыполнения    = СформироватьСтрокуВызоваМетода(Параметры, ПараметрыМетода, Модуль, Метод);

	Выполнить(ТекстВыполнения);

	Возврат Ответ;
	
КонецФункции

#КонецОбласти

#Область Вспомогательные

Процедура ДобавитьПараметрыКоманды(Парсер, Команда, Знач ТаблицаПараметров);
	
	ТаблицаПараметров.Свернуть("Параметр");

	МассивПараметров = ТаблицаПараметров.ВыгрузитьКолонку("Параметр");
	
	Для Каждого Параметр Из МассивПараметров Цикл
		Парсер.ДобавитьИменованныйПараметрКоманды(Команда, Параметр);
	КонецЦикла;
	
КонецПроцедуры

Процедура ОбработатьВыводJSON(Вывод)
	
	Если ТипЗнч(Вывод) = Тип("Структура")
		Или ТипЗнч(Вывод) = Тип("Соответствие")
		Или ТипЗнч(Вывод) = Тип("Массив") Тогда
	
		Вывод = OPI_Инструменты.JSONСтрокой(Вывод);

	КонецЕсли;
КонецПроцедуры

Функция СформироватьСтрокуВызоваМетода(Знач ПереданныеПараметры, Знач ПараметрыМетода, Знач Модуль, Знач Метод)

	ТекстВыполнения = "";
	СтрокаВызова    = Модуль + "." + Метод + "(";
	Счетчик         = 0;

	Для Каждого НеобходимыйПараметр Из ПараметрыМетода Цикл

		ЗначениеПараметра = ПереданныеПараметры.Получить(НеобходимыйПараметр.Параметр);

		Если ЗначениеЗаполнено(ЗначениеПараметра) Тогда

			ИмяПараметра    = "Параметра" + Строка(Счетчик);

			ТекстВыполнения = ТекстВыполнения 
				+ Символы.ПС 
				+ ИмяПараметра
				+ " = ОбработкаПараметров.ОбработатьВходящийПараметр(""" 
				+ ЗначениеПараметра
				+ """, """
				+ НеобходимыйПараметр.ВариантОбработки
				+ """);";

			СтрокаВызова = СтрокаВызова + ИмяПараметра + ", ";
			Счетчик      = Счетчик + 1;
		Иначе
			СтрокаВызова = СтрокаВызова + " , ";
		КонецЕсли;

	КонецЦикла;

	ЛишниеСимволы   = 2;
	СтрокаВызова    = Лев(СтрокаВызова, СтрДлина(СтрокаВызова) - ЛишниеСимволы);
	СтрокаВызова    = СтрокаВызова + ");";
	СтрокаВызова    = "Ответ = " + СтрокаВызова;
	ТекстВыполнения = ТекстВыполнения + Символы.ПС + СтрокаВызова;

	Возврат ТекстВыполнения;

КонецФункции

#КонецОбласти

#КонецОбласти

Попытка
	ПриСозданииОбъекта();
	ОсновнойОбработчик();	
Исключение
	Сообщить(Символы.ПС + "!!! ОШИБКА: Проверьте корректность введенных данных" + Символы.ПС, СтатусСообщения.ОченьВажное);
	ВызватьИсключение КраткоеПредставлениеОшибки(ИнформацияОбОшибке()) + Символы.ПС;
КонецПопытки;

