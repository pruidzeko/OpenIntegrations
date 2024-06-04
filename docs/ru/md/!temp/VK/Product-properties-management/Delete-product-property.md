﻿---
sidebar_position: 4
---

# Удалить свойство товара
 Удаляет существующее свойство товара


*Функция УдалитьСвойствоТовара(Знач Свойство, Знач Параметры = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Свойство | --prop | Строка,Число | ID свойства |
  | Параметры | --auth | Структура из Строка | JSON авторизации или путь к .json |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от VK 

```bsl title="Пример кода"
	
  
  Ответ = OPI_VK.УдалитьСвойствоТовара(260, Параметры);
  Ответ = OPI_Инструменты.JSONСтрокой(Ответ);
  

	
```

```sh title="Пример команд CLI"
    
  oint vk УдалитьСвойствоТовара --prop %prop% --auth %auth%

```


```json title="Результат"

{
  "response": 1
  }

```