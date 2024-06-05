﻿Функция ПолучитьСостав() Экспорт

    ТаблицаСостава = Новый ТаблицаЗначений();
    ТаблицаСостава.Колонки.Добавить("Библиотека");
    ТаблицаСостава.Колонки.Добавить("Модуль");
    ТаблицаСостава.Колонки.Добавить("Метод");
    ТаблицаСостава.Колонки.Добавить("МетодПоиска");
    ТаблицаСостава.Колонки.Добавить("Параметр");
    ТаблицаСостава.Колонки.Добавить("Описание");
    ТаблицаСостава.Колонки.Добавить("ОписаниеМетода");
    ТаблицаСостава.Колонки.Добавить("Область");

    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreatePage";
    НоваяСтрока.МетодПоиска = "CREATEPAGE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Page management";
    НоваяСтрока.ОписаниеМетода   = "Creates a child page above another parent page";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreatePage";
    НоваяСтрока.МетодПоиска = "CREATEPAGE";
    НоваяСтрока.Параметр    = "--page";
    НоваяСтрока.Описание    = "Parent ID";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreatePage";
    НоваяСтрока.МетодПоиска = "CREATEPAGE";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "Page title";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreatePageInDatabase";
    НоваяСтрока.МетодПоиска = "CREATEPAGEINDATABASE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Page management";
    НоваяСтрока.ОписаниеМетода   = "Creates a page in the parent database";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreatePageInDatabase";
    НоваяСтрока.МетодПоиска = "CREATEPAGEINDATABASE";
    НоваяСтрока.Параметр    = "--base";
    НоваяСтрока.Описание    = "Parent database ID";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreatePageInDatabase";
    НоваяСтрока.МетодПоиска = "CREATEPAGEINDATABASE";
    НоваяСтрока.Параметр    = "--Properties match";
    НоваяСтрока.Описание    = "data";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "GetPage";
    НоваяСтрока.МетодПоиска = "GETPAGE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Page management";
    НоваяСтрока.ОписаниеМетода   = "Gets information about the page by ID";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "GetPage";
    НоваяСтрока.МетодПоиска = "GETPAGE";
    НоваяСтрока.Параметр    = "--page";
    НоваяСтрока.Описание    = "Page ID";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditPageProperties";
    НоваяСтрока.МетодПоиска = "EDITPAGEPROPERTIES";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditPageProperties";
    НоваяСтрока.МетодПоиска = "EDITPAGEPROPERTIES";
    НоваяСтрока.Параметр    = "--page";
    НоваяСтрока.Описание    = "ID of the page being modified";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditPageProperties";
    НоваяСтрока.МетодПоиска = "EDITPAGEPROPERTIES";
    НоваяСтрока.Параметр    = "--Matching of editable parameters";
    НоваяСтрока.Описание    = "data (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditPageProperties";
    НоваяСтрока.МетодПоиска = "EDITPAGEPROPERTIES";
    НоваяСтрока.Параметр    = "--icon";
    НоваяСтрока.Описание    = "URL of the page icon image (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditPageProperties";
    НоваяСтрока.МетодПоиска = "EDITPAGEPROPERTIES";
    НоваяСтрока.Параметр    = "--cover";
    НоваяСтрока.Описание    = "URL of the page cover image (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditPageProperties";
    НоваяСтрока.МетодПоиска = "EDITPAGEPROPERTIES";
    НоваяСтрока.Параметр    = "--archive";
    НоваяСтрока.Описание    = "Archive page or not (boolean) (необяз. по ум. - False)";
    НоваяСтрока.Область     = "Page management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreateDatabase";
    НоваяСтрока.МетодПоиска = "CREATEDATABASE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Database management";
    НоваяСтрока.ОписаниеМетода   = "Creates a database
    |
    |    Структура JSON полей базы (параметр --props):
    |    {
    |     ""Имя поля БД c обычным типом""     : ""Тип данных 1"",
    |     ""Имя поля БД с выбором значения""  : 
    |        {
    |         ""Вариант1""  : ""green"",
    |         ""Вариант2""  : ""red"",
    |         ...
    |        },
    |     ...
    |    }
    |    
    |    Доуступные типы: title(ключевой), rich_text, number, status,
    |    date, files, checkbox, url, email, phone_number, people
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreateDatabase";
    НоваяСтрока.МетодПоиска = "CREATEDATABASE";
    НоваяСтрока.Параметр    = "--page";
    НоваяСтрока.Описание    = "Parent page ID";
    НоваяСтрока.Область     = "Database management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreateDatabase";
    НоваяСтрока.МетодПоиска = "CREATEDATABASE";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "Database title";
    НоваяСтрока.Область     = "Database management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreateDatabase";
    НоваяСтрока.МетодПоиска = "CREATEDATABASE";
    НоваяСтрока.Параметр    = "--props";
    НоваяСтрока.Описание    = "Database properties (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Database management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "GetDatabase";
    НоваяСтрока.МетодПоиска = "GETDATABASE";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Database management";
    НоваяСтрока.ОписаниеМетода   = "Get database information";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "GetDatabase";
    НоваяСтрока.МетодПоиска = "GETDATABASE";
    НоваяСтрока.Параметр    = "--base";
    НоваяСтрока.Описание    = "Database ID";
    НоваяСтрока.Область     = "Database management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditDatabaseProperties";
    НоваяСтрока.МетодПоиска = "EDITDATABASEPROPERTIES";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Database management";
    НоваяСтрока.ОписаниеМетода   = "Edits properties of an existing database
    |
    |    Структура JSON полей базы (параметр --props):
    |    {
    |     ""Имя поля БД c обычным типом""     : ""Тип данных 1"",
    |     ""Имя поля БД с выбором значения""  : 
    |        {
    |         ""Вариант1""  : ""green"",
    |         ""Вариант2""  : ""red"",
    |         ...
    |        },
    |     ...
    |    }
    |    
    |    Доуступные типы: title(ключевой), rich_text, number, status,
    |    date, files, checkbox, url, email, phone_number, people
    |";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditDatabaseProperties";
    НоваяСтрока.МетодПоиска = "EDITDATABASEPROPERTIES";
    НоваяСтрока.Параметр    = "--base";
    НоваяСтрока.Описание    = "Target database ID";
    НоваяСтрока.Область     = "Database management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditDatabaseProperties";
    НоваяСтрока.МетодПоиска = "EDITDATABASEPROPERTIES";
    НоваяСтрока.Параметр    = "--props";
    НоваяСтрока.Описание    = "New or modified database properties (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Database management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditDatabaseProperties";
    НоваяСтрока.МетодПоиска = "EDITDATABASEPROPERTIES";
    НоваяСтрока.Параметр    = "--title";
    НоваяСтрока.Описание    = "New database title (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Database management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "EditDatabaseProperties";
    НоваяСтрока.МетодПоиска = "EDITDATABASEPROPERTIES";
    НоваяСтрока.Параметр    = "--description";
    НоваяСтрока.Описание    = "New database description (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Database management";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreateBlock";
    НоваяСтрока.МетодПоиска = "CREATEBLOCK";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Blocks managment";
    НоваяСтрока.ОписаниеМетода   = "Creates a new block based on an existing block";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreateBlock";
    НоваяСтрока.МетодПоиска = "CREATEBLOCK";
    НоваяСтрока.Параметр    = "--page";
    НоваяСтрока.Описание    = "Parent block or page ID";
    НоваяСтрока.Область     = "Blocks managment";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreateBlock";
    НоваяСтрока.МетодПоиска = "CREATEBLOCK";
    НоваяСтрока.Параметр    = "--block";
    НоваяСтрока.Описание    = "Block ID or block sample itself";
    НоваяСтрока.Область     = "Blocks managment";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "CreateBlock";
    НоваяСтрока.МетодПоиска = "CREATEBLOCK";
    НоваяСтрока.Параметр    = "--prev";
    НоваяСтрока.Описание    = "Block ID after which to insert the new one (необяз. по ум. - Пустое значение)";
    НоваяСтрока.Область     = "Blocks managment";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "ReturnBlock";
    НоваяСтрока.МетодПоиска = "RETURNBLOCK";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Blocks managment";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "ReturnBlock";
    НоваяСтрока.МетодПоиска = "RETURNBLOCK";
    НоваяСтрока.Параметр    = "--block";
    НоваяСтрока.Описание    = "Block ID";
    НоваяСтрока.Область     = "Blocks managment";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "ReturnBlock";
    НоваяСтрока.МетодПоиска = "RETURNBLOCK";
    НоваяСтрока.Параметр    = "--core";
    НоваяСтрока.Описание    = "True > service fields are deleted, only the block itself remains (необяз. по ум. - True)";
    НоваяСтрока.Область     = "Blocks managment";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "ReturnChildBlocks";
    НоваяСтрока.МетодПоиска = "RETURNCHILDBLOCKS";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Blocks managment";
    НоваяСтрока.ОписаниеМетода   = "Returns list of child blocks of parent block";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "ReturnChildBlocks";
    НоваяСтрока.МетодПоиска = "RETURNCHILDBLOCKS";
    НоваяСтрока.Параметр    = "--block";
    НоваяСтрока.Описание    = "Parent block ID";
    НоваяСтрока.Область     = "Blocks managment";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "DeleteBlock";
    НоваяСтрока.МетодПоиска = "DELETEBLOCK";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Blocks managment";
    НоваяСтрока.ОписаниеМетода   = "Deletes block by ID";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "DeleteBlock";
    НоваяСтрока.МетодПоиска = "DELETEBLOCK";
    НоваяСтрока.Параметр    = "--block";
    НоваяСтрока.Описание    = "Block ID";
    НоваяСтрока.Область     = "Blocks managment";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "UserList";
    НоваяСтрока.МетодПоиска = "USERLIST";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Users";
    НоваяСтрока.ОписаниеМетода   = "Returns a list of workspace users";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "GetUserData";
    НоваяСтрока.МетодПоиска = "GETUSERDATA";
    НоваяСтрока.Параметр    = "--token";
    НоваяСтрока.Описание    = "Token";
    НоваяСтрока.Область     = "Users";
    НоваяСтрока.ОписаниеМетода   = "Gets user data by ID";


    НоваяСтрока = ТаблицаСостава.Добавить();
    НоваяСтрока.Библиотека  = "notion";
    НоваяСтрока.Модуль      = "OPI_Notion";
    НоваяСтрока.Метод       = "GetUserData";
    НоваяСтрока.МетодПоиска = "GETUSERDATA";
    НоваяСтрока.Параметр    = "--user";
    НоваяСтрока.Описание    = "Target user ID";
    НоваяСтрока.Область     = "Users";

    Возврат ТаблицаСостава;
КонецФункции

