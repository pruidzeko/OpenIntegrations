﻿---
sidebar_position: 2
---

# Получить обновления
Выполняет запрос getUpdates, возвращающий информацию о событиях бота. Используется при работе в polling режиме


*Функция ПолучитьОбновления(Знач Токен, Знач Таймаут = 0, Знач Смещение = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен бота |
  | Таймаут | --timeout | Строка,Число | Время ожидания новых событий |
  | Смещение | --offset | Строка,Число | Смещение в списке получаемых сообщений |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Telegram

```bsl title="Пример кода"
	
    Токен       = "6129457865:AAFyzNYOAFbu...";
    Результат   = OPI_Telegram.ПолучитьОбновления(Токен);

	
```

```sh title="Пример команд CLI"
    
  oint telegram ПолучитьОбновления --token "6129457865:AAFyzNYOAFbu..." --timeout %timeout% --offset %offset%

```


```json title="Результат"



```