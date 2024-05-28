﻿---
sidebar_position: 13
---

# Получить список версий объекта
 Получает список версий (ревизий) объекта


*Функция ПолучитьСписокВерсийОбъекта(Знач Токен, Знач Путь, Знач Количество = 10) Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | Путь | --path | Строка | Путь к объекту |
  | Количество | --amount | Строка, Число | Число последних версий объекта для отображения |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Dropbox

```bsl title="Пример кода"
	
    Токен     = "sl.B2BrYIsNrnf_h8d1VSt-ilH_LEUuySQXhbDb51qh3chXboh4PF5ZjVKK-fmicHuGMHS8iZ3_6e...";
    Путь      = "/New/pic.png"; 
    
    Результат = OPI_Dropbox.ПолучитьСписокВерсийОбъекта(Токен, Путь, 1);

	
```

```sh title="Пример команд CLI"
    
  oint dropbox ПолучитьСписокВерсийОбъекта --token "sl.B2BrYIsNrnf_h8d1VSt-ilH_LEUuySQXhbDb51qh3chXboh4PF5ZjVKK-fmicHuGMHS8iZ3_6e..." --path %path% --amount %amount%

```


```json title="Результат"



```