// MIT License

// Copyright (c) 2023 Anton Tsitavets

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

// https://github.com/Bayselonarrend/OpenIntegrations

// BSLLS:LatinAndCyrillicSymbolInWord-off
// BSLLS:IncorrectLineBreak-off
// BSLLS:NumberOfOptionalParams-off
// BSLLS:UsingServiceTag-off

// @skip-check method-too-many-params

// Раскомментировать, если выполняется OneScript
// #Использовать "../../tools"

#Область ПрограммныйИнтерфейс

#Область РаботаСоСтраницами

// Создать страницу
// Создает дочернюю страницу над другой страницей-родителем
// 
// Параметры:
//  Токен     - Строка - Токен                  - token
//  Родитель  - Строка - ID Родителя            - page
//  Заголовок - Строка - Заголовок страницы     - title
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция СоздатьСтраницу(Знач Токен, Знач Родитель, Знач Заголовок) Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Родитель);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Заголовок);
    
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);   
    Свойства  = Новый Структура;
    Параметры = Новый Структура;
    
    ДобавитьЗаголовокСтраницы(Заголовок, Свойства);
    ДобавитьРодителяСтраницы(Родитель, Ложь, Параметры);
    
    Параметры.Вставить("properties", Свойства);
    
    Ответ = OPI_Инструменты.Post("https://api.notion.com/v1/pages", Параметры, Заголовки);
    
    Возврат Ответ;
    
КонецФункции

// Создать страницу в базу
// Создает страницу в базе-родителе
// 
// Параметры:
//  Токен    - Строка                        - Токен                - token 
//  Родитель - Строка                        - ID родительской базы - base
//  Данные   - Соответствие Из КлючИЗначение - Соответствие свойств - data
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция СоздатьСтраницуВБазу(Знач Токен, Знач Родитель, Знач Данные) Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Родитель);
    OPI_ПреобразованиеТипов.ПолучитьКоллекцию(Данные);
    
    Заголовки  = СоздатьЗаголовкиЗапроса(Токен);
    Параметры  = Новый Структура;
    
    ДобавитьРодителяСтраницы(Родитель, Истина, Параметры);

    Свойства = ЗаполнитьДанныеПоСхеме(Родитель, Данные, Токен);    
    Параметры.Вставить("properties", Свойства);
    
    Ответ = OPI_Инструменты.Post("https://api.notion.com/v1/pages", Параметры, Заголовки);
    
    Возврат Ответ;
    
КонецФункции

// Получить страницу
// Получает информацию о странице по ID
// 
// Параметры:
//  Токен    - Строка - Токен        - token
//  Страница - Строка - ID страницы  - page 
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция ПолучитьСтраницу(Знач Токен, Знач Страница) Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Страница);
    
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);
    ПреобразоватьИД(Страница);  
    
    Ответ = OPI_Инструменты.Get("https://api.notion.com/v1/pages/" + Страница, , Заголовки);
    
    Возврат Ответ;
    
КонецФункции

// Изменить свойства страницы.
// 
// Параметры:
//  Токен        - Строка                        - Токен                                   - token
//  Страница     - Строка                        - ID изменяемой страницы                  - page
//  Данные       - Соответствие Из КлючИЗначение - Соответствие изменяемых параметров      - data
//  Иконка       - Строка                        - URL картинки иконки страницы            - icon
//  Обложка      - Строка                        - URL картинки обложки страницы           - cover
//  Архивирована - Булево                        - Архивировать страницу или нет (булево)  - archive
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция ИзменитьСвойстваСтраницы(Знач Токен
    , Знач Страница
    , Знач Данные = ""
    , Знач Иконка = ""
    , Знач Обложка = ""
    , Знач Архивирована = Ложь) Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Страница);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Иконка);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Обложка);
    OPI_ПреобразованиеТипов.ПолучитьБулево(Архивирована);
    OPI_ПреобразованиеТипов.ПолучитьКоллекцию(Данные);
    
    Заголовки  = СоздатьЗаголовкиЗапроса(Токен);
    Параметры  = Новый Структура;
    Files      = "files";
    
    Если ЗначениеЗаполнено(Данные) 
        И (ТипЗнч(Данные) = Тип("Соответствие") Или ТипЗнч(Данные) = Тип("Структура")) Тогда
        Свойства = ЗаполнитьДанныеПоСхеме(Страница, Данные, Токен, Ложь); 
    Иначе 
        Свойства = Новый Соответствие;
    КонецЕсли;
        
    Если ЗначениеЗаполнено(Иконка) Тогда
        СоответствиеИконки = Новый Соответствие;
        СоответствиеИконки.Вставить("Icon", Иконка);
        
        ОбъектИконка = ПреобразоватьЗначениеПоТипу(Files, СоответствиеИконки);
        ОбъектИконка = ОбъектИконка[Files][0];
        ОбъектИконка.Удалить("name");
        
        Параметры.Вставить("icon", ОбъектИконка);
    КонецЕсли;
    
    Если ЗначениеЗаполнено(Обложка) Тогда
        СоответствиеОбложки = Новый Соответствие;
        СоответствиеОбложки.Вставить("Cover", Обложка);

        ОбъектОбложка = ПреобразоватьЗначениеПоТипу(Files, СоответствиеОбложки);
        ОбъектОбложка = ОбъектОбложка[Files][0];
        ОбъектОбложка.Удалить("name");

        Параметры.Вставить("cover", ОбъектОбложка);
    КонецЕсли;

    Параметры.Вставить("properties", Свойства);
    Параметры.Вставить("archived"  , Архивирована);
    
    ПреобразоватьИД(Страница);

    Ответ = OPI_Инструменты.Patch("https://api.notion.com/v1/pages/" + Страница, Параметры, Заголовки);
    
    Возврат Ответ;
    
КонецФункции

#КонецОбласти

#Область РаботаСБазамиДанных

// Создать базу данных
// Создает базу данных
// 
// Параметры:
//  Токен     - Строка              - Токен                    - token 
//  Родитель  - Строка              - ID страницы родителя     - page
//  Заголовок - Строка              - Заголовок базы данных    - title
//  Свойства  - Структура Из Строка - Свойства базы данных     - props
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция СоздатьБазуДанных(Знач Токен, Знач Родитель, Знач Заголовок, Знач Свойства = "") Экспорт

    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Родитель);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Заголовок);
    OPI_ПреобразованиеТипов.ПолучитьКоллекцию(Свойства);
    
    // Пример структуры/соответствия свойств
    
    // Имя        : title
    // Описание   : rich_text
    // В работе   : checkbox 
    // Количество : number
    // Дата       : date
    // Статус     : Соответствие
    //               Активный   : green
    //               Неактивный : red
    //               Архив      : yellow
    
    // Все страницы, которые будут созданы как дочерние, должны иметь свойства базы-родителя

    Если Не ТипЗнч(Свойства) = Тип("Структура") И Не ТипЗнч(Свойства) = Тип("Соответствие") Тогда
        Свойства = Новый Структура("Наименование", "title");
    КонецЕсли;

    Заголовки = СоздатьЗаголовкиЗапроса(Токен);     
    Параметры = Новый Структура;
    
    ДобавитьРодителяБазы(Родитель, Ложь, Параметры);
    ДобавитьЗаголовокБазы(Заголовок, Параметры);
    ДобавитьСвойстваБазы(Свойства, Параметры);

    Ответ = OPI_Инструменты.Post("https://api.notion.com/v1/databases", Параметры, Заголовки);
    
    Возврат Ответ;
    
КонецФункции

// Получить базу данных
// Получить данные о базе данных
// 
// Параметры:
//  Токен - Строка - Токен          - token
//  База  - Строка - ID базы данных - base
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция ПолучитьБазуДанных(Знач Токен, Знач База) Экспорт
   
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(База);
    
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);
    ПреобразоватьИД(База);  
    
    Ответ = OPI_Инструменты.Get("https://api.notion.com/v1/databases/" + База, , Заголовки);
    
    Возврат Ответ; 
    
КонецФункции

// Изменить свойства базы
// Изменяет свойства существующей базы
// 
// Параметры:
//  Токен     - Строка                        - Токен                                     - token
//  База      - Строка                        - ID целевой базы                           - base
//  Свойства  - Соответствие из КлючИЗначение - Новые или изменяемые свойства базы данных - props
//  Заголовок - Строка                        - Новый заголовок базы                      - title
//  Описание  - Строка                        - Новое описание базы                       - description
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция ИзменитьСвойстваБазы(Знач Токен, Знач База, Знач Свойства = "", Знач Заголовок = "", Знач Описание = "") Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(База);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Заголовок);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Описание);
    OPI_ПреобразованиеТипов.ПолучитьКоллекцию(Свойства);
    
    Параметры = Новый Структура;
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);  
    ПреобразоватьИД(База); 
    
    Если ЗначениеЗаполнено(Заголовок) Тогда
        ДобавитьЗаголовокБазы(Заголовок, Параметры);
    КонецЕсли;
    
    Если ЗначениеЗаполнено(Описание) Тогда
        ДобавитьОписаниеБазы(Описание, Параметры);
    КонецЕсли;
    
    Если ТипЗнч(Свойства) = Тип("Структура") Или ТипЗнч(Свойства) = Тип("Соответствие") Тогда
        ДобавитьСвойстваБазы(Свойства, Параметры);
    КонецЕсли;
    
    Ответ = OPI_Инструменты.Patch("https://api.notion.com/v1/databases/" + База, Параметры, Заголовки);
    
    Возврат Ответ;
    
КонецФункции

#КонецОбласти 

#Область РаботаСБлоками

// Создать блок
// Создает новый блок на основе существующего блока
// 
// Параметры:
//  Токен         - Строка                               - Токен                                              - token
//  Родитель      - Строка                               - ID родительского блока или страницы                - page
//  Блок          - Строка,Соответствие Из КлючИЗначение - ID блока или сам блок-образец                      - block
//  ВставитьПосле - Строка                               - ID блока, после которого необходимо встаивть новый - prev
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция СоздатьБлок(Знач Токен, Знач Родитель, Знач Блок, Знач ВставитьПосле = "") Экспорт
  
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Родитель);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(ВставитьПосле);
    OPI_ПреобразованиеТипов.ПолучитьКоллекцию(Блок);
    
    Если ТипЗнч(Блок) = Тип("Массив") Тогда
        Блок = Блок[0];
    КонецЕсли;
    
    Заголовки    = СоздатьЗаголовкиЗапроса(Токен); 
    ПреобразоватьИД(Родитель);
    
    Если ТипЗнч(Блок) = Тип("Строка") Тогда
        ПреобразоватьИД(Блок);
        Блок = ВернутьБлок(Токен, Блок);
    КонецЕсли;
    
    МассивБлоков = Новый Массив;
    МассивБлоков.Добавить(Блок);
    
    Параметры = Новый Соответствие;
    Параметры.Вставить("children", МассивБлоков);
    
    Если ЗначениеЗаполнено(ВставитьПосле) Тогда
        Параметры.Вставить("after", ВставитьПосле);
    КонецЕсли;
    
    URL   = "https://api.notion.com/v1/blocks/" + Родитель + "/children";
    Ответ = OPI_Инструменты.Patch(URL, Параметры, Заголовки);
    
    Возврат Ответ;
       
КонецФункции

// Вернуть блок.
// 
// Параметры:
//  Токен        - Строка - Токен                                                         - token
//  ИДБлока      - Строка - ID блока                                                      - block
//  ТолькоОснова - Булево - Истина > служебные поля удаляются, остается только сам блок   - core
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция ВернутьБлок(Знач Токен, Знач ИДБлока, Знач ТолькоОснова = Истина) Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(ИДБлока);
    OPI_ПреобразованиеТипов.ПолучитьБулево(ТолькоОснова);
    
    ПреобразоватьИД(ИДБлока);
    
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);
    Ответ     = OPI_Инструменты.Get("https://api.notion.com/v1/blocks/" + ИДБлока, , Заголовки);
    
    Если ТолькоОснова Тогда
        УдалитьЛишниеПоляБлока(Ответ);    
    КонецЕсли;
    
    Возврат Ответ;
        
КонецФункции

// Вернуть дочерние блоки
// Созвращает список дочерних блоков блока-родителя
// 
// Параметры:
//  Токен   - Строка - Токен             - token
//  ИДБлока - Строка - ID блока-родителя - block
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция ВернутьДочерниеБлоки(Знач Токен, Знач ИДБлока) Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(ИДБлока);
    
    ПреобразоватьИД(ИДБлока);
    
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);
    Ответ     = OPI_Инструменты.Get("https://api.notion.com/v1/blocks/" + ИДБлока + "/children", , Заголовки);
    
    Возврат Ответ;
    
КонецФункции

// Удалить блок
// Удаляет блок по ID
// 
// Параметры:
//  Токен   - Строка - Токен    - token
//  ИДБлока - Строка - ID блока - block
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция УдалитьБлок(Знач Токен, Знач ИДБлока) Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(ИДБлока);
    
    ПреобразоватьИД(ИДБлока);
    
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);
    Ответ     = OPI_Инструменты.Delete("https://api.notion.com/v1/blocks/" + ИДБлока, , Заголовки);
    
    Возврат Ответ;
        
КонецФункции
    
#КонецОбласти

#Область Пользователи

// Список пользователей
// Возвращает список пользователей рабочего пространства
// 
// Параметры:
//  Токен - Строка - Токен - token
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция СписокПользователей(Знач Токен) Экспорт

    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);
    Ответ     = OPI_Инструменты.Get("https://api.notion.com/v1/users", , Заголовки);
    
    Возврат Ответ;
        
КонецФункции

// Получить данные пользователя
// Получает данные пользователя по ID
// 
// Параметры:
//  Токен          - Строка - Токен                     - token
//  ИДПользователя - Строка - ID целевого пользователя  - user
// 
// Возвращаемое значение:
//  Соответствие Из КлючИЗначение - сериализованный JSON ответа от Notion
Функция ПолучитьДанныеПользователя(Знач Токен, Знач ИДПользователя) Экспорт
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    OPI_ПреобразованиеТипов.ПолучитьСтроку(ИДПользователя);
    
    ПреобразоватьИД(ИДПользователя);
    
    Заголовки = СоздатьЗаголовкиЗапроса(Токен);
    Ответ     = OPI_Инструменты.Get("https://api.notion.com/v1/users/" + ИДПользователя, , Заголовки);
    
    Возврат Ответ;
    
КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

Функция СоздатьЗаголовкиЗапроса(Знач Токен)
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Токен);
    
    Заголовки = Новый Соответствие;
    Заголовки.Вставить("Authorization" , "Bearer " + Токен);
    Заголовки.Вставить("Notion-Version", "2022-06-28");
    
    Возврат Заголовки;
        
КонецФункции

Процедура ПреобразоватьИД(Идентификатор)
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Идентификатор);
    
    Идентификатор = СтрЗаменить(Идентификатор, "-", "");
    
КонецПроцедуры

Процедура ДобавитьРодителяСтраницы(Знач Родитель, Знач РодительБаза, ОсновнаяСтруктура)
  
    OPI_ПреобразованиеТипов.ПолучитьСтроку(РодительБаза);
    
    ПреобразоватьИД(Родитель);
  
    ПолеИдентификатора = ?(РодительБаза, "database_id", "page_id");
    СтруктураРодителя  = Новый Структура(ПолеИдентификатора, Родитель);

    ОсновнаяСтруктура.Вставить("parent", СтруктураРодителя);
     
КонецПроцедуры

Процедура ДобавитьРодителяБазы(Знач Родитель, Знач РодительБаза, ОсновнаяСтруктура)
  
    OPI_ПреобразованиеТипов.ПолучитьСтроку(РодительБаза);
    
    ПреобразоватьИД(Родитель);
  
    ПолеИдентификатора = ?(РодительБаза, "database_id", "page_id");
    
    СтруктураРодителя  = Новый Структура();
    СтруктураРодителя.Вставить("type"            , ПолеИдентификатора);
    СтруктураРодителя.Вставить(ПолеИдентификатора, Родитель);

    ОсновнаяСтруктура.Вставить("parent", СтруктураРодителя);
     
КонецПроцедуры

Процедура ДобавитьЗаголовокСтраницы(Знач Заголовок, ОсновнаяСтруктура) 
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Заголовок);
    
    ПодчиненнаяСтруктура = Новый Структура;
    СтруктураДанных      = Новый Структура;
    СтруктураТекста      = Новый Структура;
    МассивДанных         = Новый Массив;
    Title                = "title";
    
    СтруктураТекста.Вставить("content", Заголовок);
    СтруктураТекста.Вставить("link"   , Неопределено);
   
    СтруктураДанных.Вставить("text", СтруктураТекста);
    СтруктураДанных.Вставить("type", "text");
    
    МассивДанных.Добавить(СтруктураДанных);
    
    ПодчиненнаяСтруктура.Вставить("id"   , Title);
    ПодчиненнаяСтруктура.Вставить("type" , Title);
    ПодчиненнаяСтруктура.Вставить(Title  , МассивДанных);
    
    ОсновнаяСтруктура.Вставить(Title, ПодчиненнаяСтруктура);
    
КонецПроцедуры

Процедура ДобавитьЗаголовокБазы(Знач Заголовок, ОсновнаяСтруктура)
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Заголовок);
    
    Заголовок = ПреобразоватьЗаголовок(Заголовок);    
    ОсновнаяСтруктура.Вставить("title", Заголовок["title"]);
    
КонецПроцедуры

Процедура ДобавитьОписаниеБазы(Знач Описание, ОсновнаяСтруктура)
    
    OPI_ПреобразованиеТипов.ПолучитьСтроку(Описание);
    
    Заголовок = ПреобразоватьЗаголовок(Описание);    
    ОсновнаяСтруктура.Вставить("description", Заголовок["title"]);
    
КонецПроцедуры

Процедура ДобавитьСвойстваБазы(Знач Свойства, ОсновнаяСтруктура)
    
    Если Свойства.Количество() = 0 Тогда
       ОсновнаяСтруктура.Вставить("properties", Новый Структура);
       Возврат;      
    КонецЕсли;
    
    СоответствиеПараметров = Новый Соответствие;
    
    Для Каждого Свойство Из Свойства Цикл
        
        Если ТипЗнч(Свойство.Значение) = Тип("Строка") Тогда
            
           СоответствиеПараметров.Вставить(Свойство.Ключ, Новый Структура(Свойство.Значение, Новый Структура));
           
        ИначеЕсли ТипЗнч(Свойство.Значение) = Тип("Структура") 
            Или ТипЗнч(Свойство.Значение) = Тип("Соответствие") Тогда
                
            ВыборЗначения = СформироватьЗначенияВыбора(Свойство.Значение);
            СоответствиеПараметров.Вставить(Свойство.Ключ, Новый Структура("select", ВыборЗначения));
            
        Иначе
            
            СоответствиеПараметров.Вставить(Свойство.Ключ, Свойство.Значение);
            
        КонецЕсли;
        
    КонецЦикла;
    
    ОсновнаяСтруктура.Вставить("properties", СоответствиеПараметров);
    
КонецПроцедуры

Функция СформироватьЗначенияВыбора(Знач СтруктураВариантов)
    
    МассивВариантов = Новый Массив;
    
    Для Каждого Вариант Из СтруктураВариантов Цикл
        
        СоответствиеВарианта = Новый Соответствие;
        СоответствиеВарианта.Вставить("name" , Вариант.Ключ);
        СоответствиеВарианта.Вставить("color", Вариант.Значение);
        
        МассивВариантов.Добавить(СоответствиеВарианта);
                
    КонецЦикла;
    
    Возврат Новый Структура("options", МассивВариантов);
        
КонецФункции

Функция ЗаполнитьДанныеПоСхеме(Знач Схема, Знач Данные, Знач Токен, Знач ЭтоБаза = Истина)
    
    Если ЭтоБаза Тогда
        ДанныеСхемы = ПолучитьБазуДанных(Токен, Схема);
    Иначе
        ДанныеСхемы = ПолучитьСтраницу(Токен, Схема);    
    КонецЕсли;
    
    ПоляБазы   = ДанныеСхемы["properties"];
    Свойства   = Новый Соответствие;
    
    Если ЗначениеЗаполнено(ПоляБазы) Тогда
        
        Для Каждого Поле Из ПоляБазы Цикл
            
            ДанныеПоля = Поле.Значение;
            ТипПоля    = ДанныеПоля["type"];
            
            ЗаполняемыеДанные = Данные.Получить(Поле.Ключ);
            
            Если ЗаполняемыеДанные = Неопределено Тогда
                Продолжить;
            КонецЕсли;
            
            ПреобразованныеДанные = ПреобразоватьЗначениеПоТипу(ТипПоля, ЗаполняемыеДанные);
            
            Если ПреобразованныеДанные = Неопределено Тогда
                Продолжить;
            КонецЕсли;
            
            Свойства.Вставить(ДанныеПоля["id"], ПреобразованныеДанные); 
            
        КонецЦикла;
        
    КонецЕсли;

    Возврат Свойства;

КонецФункции

Процедура УдалитьЛишниеПоляБлока(Знач Блок)
    
    МассивЛишних = Новый Массив;
    МассивЛишних.Добавить("request_id");
    МассивЛишних.Добавить("archived");
    МассивЛишних.Добавить("created_by");
    МассивЛишних.Добавить("last_edited_time");
    МассивЛишних.Добавить("created_time");
    МассивЛишних.Добавить("has_children");
    МассивЛишних.Добавить("parrent");
    МассивЛишних.Добавить("last_edited_by");
    МассивЛишних.Добавить("id");
    
    Для Каждого Поле Из МассивЛишних Цикл
        
        Если Не Блок.Получить(Поле) = Неопределено Тогда
            Блок.Удалить(Поле);
        КонецЕсли;
        
    КонецЦикла;
    
КонецПроцедуры

#Область ПреобразованиеТипов

Функция ПреобразоватьЗначениеПоТипу(Знач Тип, Знач Значение)
    
    Если Тип = "title" Тогда
        Возврат ПреобразоватьЗаголовок(Значение);
    ИначеЕсли Тип = "rich_text" Тогда
        Возврат ПреобразоватьТекст(Значение);
    ИначеЕсли Тип = "number" Тогда
        Возврат ПреобразоватьЧисло(Значение);
    ИначеЕсли Тип = "select" Тогда
        Возврат ПреобразоватьВариантВыбора(Значение);
    ИначеЕсли Тип = "multi_select" Тогда
        Возврат ПреобразоватьМножественныйВыбор(Значение);
    ИначеЕсли Тип = "status" Тогда
        Возврат ПреобразоватьСтатус(Значение);
    ИначеЕсли Тип = "date" Тогда
        Возврат ПреобразоватьДату(Значение);
    ИначеЕсли Тип = "relation" Тогда
        Возврат ПреобразоватьСвязь(Значение);
    ИначеЕсли Тип = "people" Тогда
        Возврат ПреобразоватьПользователей(Значение);
    ИначеЕсли Тип = "files" Тогда
        Возврат ПреобразоватьФайлы(Значение);
    ИначеЕсли Тип = "checkbox" Тогда
        Возврат ПреобразоватьБулево(Значение);
    ИначеЕсли Тип = "url" Тогда
        Возврат ПреобразоватьСсылку(Значение);
    ИначеЕсли Тип = "email" Тогда
        Возврат ПреобразоватьПочту(Значение);
    ИначеЕсли Тип = "phone_number" Тогда
        Возврат ПреобразоватьТелефон(Значение);
    Иначе 
        Возврат Неопределено;
    КонецЕсли;
    
КонецФункции

Функция ПреобразоватьЗаголовок(Знач Заголовок) 
    
    СтруктураДанных      = Новый Структура;
    СтруктураТекста      = Новый Структура;
    МассивДанных         = Новый Массив;
    
    СтруктураТекста.Вставить("content", Заголовок);
    СтруктураТекста.Вставить("link"   , Неопределено);
    
    СтруктураДанных.Вставить("type", "text");
    СтруктураДанных.Вставить("text", СтруктураТекста);
       
    МассивДанных.Добавить(СтруктураДанных);

    Возврат Новый Структура("title", МассивДанных);
    
КонецФункции

Функция ПреобразоватьТекст(Знач Текст)
    
    МассивТекста    = Новый Массив;
    СтруктураТекста = Новый Структура;
    
    СтруктураТекста.Вставить("type", "text");
    СтруктураТекста.Вставить("text", Новый Структура("content", Текст));
    
    МассивТекста.Добавить(СтруктураТекста);
    
    Возврат Новый Структура("rich_text", МассивТекста);
    
КонецФункции

Функция ПреобразоватьЧисло(Знач Число)
    Возврат Новый Структура("number", Число);
КонецФункции

Функция ПреобразоватьВариантВыбора(Знач Вариант)
    
    СтруктураВыбора = Новый Структура;
    СтруктураВыбора.Вставить("select", Новый Структура("name", Вариант));
    
    Возврат СтруктураВыбора;
    
КонецФункции

Функция ПреобразоватьСтатус(Знач Статус)
    
    СтруктураСтатуса = Новый Структура;
    СтруктураСтатуса.Вставить("status", Новый Структура("name", Статус));
    
    Возврат СтруктураСтатуса;
    
КонецФункции

Функция ПреобразоватьМножественныйВыбор(Знач МассивВариантов)
    
    МассивВариантовВыбора = Новый Массив;
    
    Для Каждого Вариант Из МассивВариантов Цикл
        МассивВариантовВыбора.Добавить(Новый Структура("name", Вариант));
    КонецЦикла;
    
    Возврат Новый Структура("multi_select", МассивВариантовВыбора);
    
КонецФункции

Функция ПреобразоватьДату(Знач Дата)
    
    СтруктураДаты = Новый Структура;
    
    Если Дата = НачалоДня(Дата) Тогда
        ФорматДаты = "ДФ=yyyy-MM-dd";
    Иначе
        ФорматДаты = "ДФ=yyyy-MM-ddThh:mm:ssZ";
    КонецЕсли;
    
    Дата = Формат(Дата, ФорматДаты);
    СтруктураДаты.Вставить("start", Дата);
    
    Возврат Новый Структура("date", СтруктураДаты);
    
КонецФункции

Функция ПреобразоватьСвязь(Знач Идентификатор) 
    
    МассивСвязи = Новый Массив;
    МассивСвязи.Добавить(Новый Структура("id", Идентификатор));
    
    Возврат Новый Структура("relation", МассивСвязи);
    
КонецФункции

Функция ПреобразоватьПользователей(Знач МассивИД)
    
    Если Не ТипЗнч(МассивИД) = Тип("Массив") Тогда
        МассивИД_ = Новый Массив;
        МассивИД_.Добавить(МассивИД);
        МассивИД = МассивИД_;
    КонецЕсли;
    
    МассивПользователей = Новый Массив;
    
    Для Каждого Идентификатор Из МассивИД Цикл
        
        СтруктураПользователя = Новый Структура;
        СтруктураПользователя.Вставить("object", "user");
        СтруктураПользователя.Вставить("id"    , Идентификатор);
        МассивПользователей.Добавить(СтруктураПользователя);
        
    КонецЦикла;
    
    Возврат Новый Структура("people", МассивПользователей);
    
КонецФункции

Функция ПреобразоватьФайлы(Знач СоответствиеФайлов)
        
    МассивФайлов = Новый Массив;
    
    Для Каждого Файл Из СоответствиеФайлов Цикл
        
        СтруктураФайла = Новый Структура;
        СтруктураФайла.Вставить("type"    , "external");
        СтруктураФайла.Вставить("name"    , Файл.Ключ);
        СтруктураФайла.Вставить("external", Новый Структура("url", Файл.Значение));
        
        МассивФайлов.Добавить(СтруктураФайла);
        
    КонецЦикла;

    Возврат Новый Структура("files", МассивФайлов);
    
КонецФункции

Функция ПреобразоватьБулево(Знач Булево)
    Возврат Новый Структура("checkbox", Булево);
КонецФункции

Функция ПреобразоватьСсылку(Знач URL)
    Возврат Новый Структура("url", URL);
КонецФункции

Функция ПреобразоватьПочту(Знач Почта)
    Возврат Новый Структура("email", Почта);
КонецФункции

Функция ПреобразоватьТелефон(Знач Телефон)
    Возврат Новый Структура("phone_number", Телефон);
КонецФункции

#КонецОбласти

#КонецОбласти