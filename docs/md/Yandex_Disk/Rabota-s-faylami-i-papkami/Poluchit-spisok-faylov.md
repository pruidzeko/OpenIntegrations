﻿---
sidebar_position: 8
---

# Получить список файлов
Получает список файлов с или без отбора по типу Список доступных типов: audio, backup, book, compressed, data, development, diskimage, document, encoded, executable, flash, font, mage, settings, spreadsheet, text, unknown, video, web


*Функция ПолучитьСписокФайлов(Знач Токен, Знач Количество = 0, Знач СмещениеОтНачала = 0, Знач ОтборПоТипу = "", Знач СортироватьПоДате = Ложь) Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | Количество | --amount | Число,Строка | Количество возвращаемых объектов |
  | СмещениеОтНачала | --offset | Число | Смещение для получение объектов не из начала списка |
  | ОтборПоТипу | --type | Строка | Отбор по типу файла |
  | СортироватьПоДате | --datesort | Булево | Истина > сортировать по дате, Ложь > по алфавиту |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Yandex

```bsl title="Пример кода"
	

	
```

```sh title="Пример команд CLI"
    
  oint yadisk ПолучитьСписокФайлов --token %token% --amount %amount% --offset %offset% --type %type% --datesort %datesort%

```


```json title="Результат"



```