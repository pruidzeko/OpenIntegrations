﻿---
sidebar_position: 7
---

# Удалить вариант свойства товара
 Удаляет ранее созданный вариант свойства


*Функция УдалитьВариантСвойстваТовара(Знач Вариант, Знач Параметры = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Вариант | --option | Строка,Число | ID варианта |
  | Параметры | --auth | Структура из Строка | JSON авторизации или путь к .json |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от VK     

```bsl title="Пример кода"
	
  
  Ответ = OPI_VK.УдалитьВариантСвойстваТовара(980 Параметры);
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);
  

	
```

```sh title="Пример команд CLI"
    
  oint vk УдалитьВариантСвойстваТовара --option %option% --auth %auth%

```


```json title="Результат"

{
  "response": 1
  }

```