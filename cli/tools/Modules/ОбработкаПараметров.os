#Область СлужебныйПрограммныйИнтерфейс

Функция ОбработатьВходящийПараметр(Знач Значение, Знач ВидОбработки) Экспорт

	Значение = СокрЛП(Значение);

	Если ВидОбработки = "JSON" Тогда
		ОбработатьПараметрJSON(Значение);
	ИначеЕсли ВидОбработки = "Текст" Тогда
		ОбработатьПараметрТекст(Значение);
	ИначеЕсли ВидОбработки = "Массив" Тогда
		ОбработатьПараметрМассив(Значение);
	Иначе
		Значение = Строка(Значение);
	КонецЕсли;

	Возврат Значение;
	
КонецФункции

#КонецОбласти

#Область  СлужебныеПроцедурыИФункции

Процедура ОбработатьПараметрJSON(Значение)

	Файл 		= Новый Файл(Значение);
	ЧтениеJSON  = Новый ЧтениеJSON;

	Если Файл.Существует() Тогда
		ЧтениеJSON.ОткрытьФайл(Значение);
		ЧтениеJSON.Прочитать();
	Иначе
		ЧтениеJSON.УстановитьСтроку(СокрЛП(Значение));
	КонецЕсли;	
	
	Значение = ПрочитатьJSON(ЧтениеJSON, Истина, Неопределено, ФорматДатыJSON.ISO);
	ЧтениеJSON.Закрыть();

КонецПроцедуры

Процедура ОбработатьПараметрТекст(Значение)

	Файл = Новый Файл(Значение);

	Если Файл.Существует() Тогда
		ЧтениеТекста = Новый ЧтениеТекста(Значение);
		Значение     = ЧтениеТекста.Прочитать();
		ЧтениеТекста.Закрыть();
	Иначе
		Значение = Строка(Значение);
	КонецЕсли;

	Значение = СокрЛП(Значение);

КонецПроцедуры

Процедура ОбработатьПараметрМассив(Значение)

	Значение = СтрЗаменить(Значение, "['"   , "");
	Значение = СтрЗаменить(Значение, "']"   , "");
	Значение = СтрЗаменить(Значение, "', '" , "','");
	Значение = СтрЗаменить(Значение, "' , '", "','");
	Значение = СтрЗаменить(Значение, "' ,'" , "','");

	Значение = СтрРазделить(Значение, "','", Ложь);

	Для Н = 0 По Значение.ВГраница() Цикл
		Значение[Н] = СокрЛП(Значение[Н]);
	КонецЦикла;
	
КонецПроцедуры

#КонецОбласти