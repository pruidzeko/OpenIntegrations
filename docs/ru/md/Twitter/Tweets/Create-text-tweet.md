﻿---
sidebar_position: 1
---

# Создать текстовый твит
 Создает твит без вложений


*Функция СоздатьТекстовыйТвит(Знач Текст, Знач Параметры = "") ЭкспортВозврат СоздатьПроизвольныйТвит(Текст, , , , Параметры);КонецФункции*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Текст | --text | Строка | Текст твита |
  | Параметры | --auth | Структура из Строка | JSON авторизации или путь к .json |

  
  Возвращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Twitter

```bsl title="Пример кода"
	
  
  Ответ = OPI_Twitter.СоздатьТекстовыйТвит("Обычный текстовый твит", Параметры);
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);
  

	
```

```sh title="Пример команды CLI"
    
  oint twitter СоздатьТекстовыйТвит --text %text% --auth %auth%

```


```json title="Результат"

{
  "data": {
  "text": "Обычный текстовый твит",
  "id": "1745752006310895822",
  "edit_history_tweet_ids": [
  "1745752006310895822"
  ]
  }
  }

```