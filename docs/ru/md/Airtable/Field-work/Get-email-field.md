﻿---
sidebar_position: 8
---

# Получить поле (email)
 Получает описание поля с электронной почтой


*Функция ПолучитьПолеПочты(Знач Наименование) ЭкспортВозврат ОписаниеПримитивногоПоля(Наименование, "email");КонецФункции*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Наименование | --title | Строка | Наименование поля |

  
  Возвращаемое значение:   Структура -  Описание поля

```bsl title="Пример кода"
	
  
  Наименование = "Почта";
  
  Ответ = OPI_Airtable.ПолучитьПолеПочты(Наименование); //Соответствие
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);           //JSON строка
  

	
```

```sh title="Пример команды CLI"
    
  oint airtable ПолучитьПолеПочты --title "Почта"

```


```json title="Результат"

{
  "name": "Почта",
  "type": "email"
  }

```