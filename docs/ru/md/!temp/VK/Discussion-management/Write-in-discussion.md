﻿---
sidebar_position: 4
---

# Написать в обсуждение
 Добавляет сообщение в обсуждение от имени группы


*Функция НаписатьВОбсуждение(Знач IDОбсуждения, Знач Текст, Знач Параметры = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | IDОбсуждения | --topic | Строка,Число | ID обсуждения |
  | Текст | --text | Строка | Текст сообщения |
  | Параметры | --auth | Структура из Строка | JSON авторизации или путь к .json |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от VK

```bsl title="Пример кода"
	
    Параметры    = ПолучитьПараметрыВК();
    ИДОбсуждения = "51167955";
    Сообщение    = "Мне больше нравится желтый";
    
    Результат = OPI_VK.НаписатьВОбсуждение(ИДОбсуждения, Сообщение, Параметры);

	
```

```sh title="Пример команд CLI"
    
  oint vk НаписатьВОбсуждение --topic %topic% --text %text% --auth %auth%

```


```json title="Результат"

{
 "response": 705
}

```