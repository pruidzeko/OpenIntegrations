#Использовать "../../../cli/data"

Перем СоответствияПараметровЗначениям;

Процедура ПриСозданииОбъекта()
	
	ТаблицаПараметров = СоставБиблиотеки.ПолучитьСостав();

	ДобавитьСоответствияTelegram();
КонецПроцедуры

Процедура ДобавитьСоответствияTelegram()
	
	СоответствиеПЗ = Новый Соответствие();

	СоответствиеПЗ.Вставить("token"    , "${{ env.json_Telegram_Token }}");
	СоответствиеПЗ.Вставить("url"      , "${{ env.json_Telegram_URL }}");
	СоответствиеПЗ.Вставить("chat"     , "${{ env.json_Telegram_ChannelID }}");
	СоответствиеПЗ.Вставить("mediag"   , "mediagroup.json");
	СоответствиеПЗ.Вставить("question" , "Да или нет?");
	СоответствиеПЗ.Вставить("options"  , "['Да', 'Нет', 'Затрудняюсь ответить']");
	СоответствиеПЗ.Вставить("anonymous", "true");
	СоответствиеПЗ.Вставить("message"  , "${{ env.json_Telegram_ChannelMessageID }}");
	СоответствиеПЗ.Вставить("to"       , "${{ env.json_Telegram_ChatID }}");
	СоответствиеПЗ.Вставить("from"     , "${{ env.json_Telegram_ChannelID }}");
	СоответствиеПЗ.Вставить("user"     , "${{ env.json_Telegram_ChatID }}");
	СоответствиеПЗ.Вставить("title"    , "Тест");
	СоответствиеПЗ.Вставить("expire"   , "1");
	СоответствиеПЗ.Вставить("limit"    , "1");
	СоответствиеПЗ.Вставить("forum"    , "${{ env.json_Telegram_ForumID }}");
	СоответствиеПЗ.Вставить("icon"     , "5350444672789519765 ");
	СоответствиеПЗ.Вставить("topic"    , "${{ env.json_Telegram_TopicID }}");
	СоответствиеПЗ.Вставить("buttons"  , "['Кнопка1','Кнопка2','Кнопка3']");
	СоответствиеПЗ.Вставить("under"    , "true");
	СоответствиеПЗ.Вставить("column"   , "false")



КонецПроцедуры

Процедура ДобавитьСоответствияОбщие()
	
	СоответствиеПЗ = Новый Соответствие();

	СоответствиеПЗ.Вставить("lat"    , "48.87373649724122");
	СоответствиеПЗ.Вставить("long"   , "48.87373649724122");
	СоответствиеПЗ.Вставить("text"   , "Тестовый текст");
	СоответствиеПЗ.Вставить("picture", "${{ env.json_Picture }}");
	СоответствиеПЗ.Вставить("video"  , "${{ env.json_Video }}");
	СоответствиеПЗ.Вставить("gif"    , "${{ env.json_GIF }}");
	СоответствиеПЗ.Вставить("audio"  , "${{ env.json_Audio }}");
	СоответствиеПЗ.Вставить("doc"    , "${{ env.json_Document }}");
	СоответствиеПЗ.Вставить("name"   , "Петр");
	СоответствиеПЗ.Вставить("surname", "Петров");
	СоответствиеПЗ.Вставить("phone"  , "+123456789");


КонецПроцедуры

ПриСозданииОбъекта();