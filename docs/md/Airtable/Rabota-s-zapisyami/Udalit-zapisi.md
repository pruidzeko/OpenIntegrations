﻿---
sidebar_position: 4
---

# Удалить записи
 Удаляет одну или массив записей по идентификаторам


*Функция УдалитьЗаписи(Знач Токен, Знач База, Знач Таблица, Знач Записи) Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | База | --base | Строка | Идентификатор базы данных |
  | Таблица | --table | Строка | Идентификатор таблицы |
  | Записи | --records | Строка, Массив из Строка | Идентификатор или массив индентификаторов записей |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Airtable

```bsl title="Пример кода"
	

	
```

```sh title="Пример команд CLI"
    
  oint airtable УдалитьЗаписи --token %token% --base %base% --table %table% --records %records%

```


```json title="Результат"



```