﻿---
sidebar_position: 3
---

# Создать ссылку-приглашение
 Создает ссылку для вступления в закрытый чат


*Функция СоздатьСсылкуПриглашение(Знач Токен, Знач IDЧата, Знач Заголовок = "", Знач ДатаИстечения = "", Знач ЛимитПользователей = 0) Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен бота |
  | IDЧата | --chat | Строка,Число | ID целевого чата или IDЧата*IDТемы |
  | Заголовок | --title | Строка | Заголовок приглашения |
  | ДатаИстечения | --expire | Дата | Дата окончания жизни ссылки (безсрочно, если не указано) |
  | ЛимитПользователей | --limit | Число | Лимит пользователей (бесконечно, если не указано) |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Telegram

```bsl title="Пример кода"
	
    Токен         = "6129457865:AAFyzNYOAFbu...";
    IDКанала      = "@testsichee";    
    Сутки         = 86400;   
    ТекущаяДата   = OPI_Инструменты.ПолучитьТекущуюДату();

    Заголовок     = "Ссылка " + Строка(ТекущаяДата); 
    Истечение     = ТекущаяДата + Сутки;
    UnixИстечение = OPI_Инструменты.UNIXTime(Истечение);
    
    Результат = OPI_Telegram.СоздатьСсылкуПриглашение(Токен, IDКанала, Заголовок, Истечение, 200);

	
```

```sh title="Пример команд CLI"
    
  oint telegram СоздатьСсылкуПриглашение --token "6129457865:AAFyzNYOAFbu..." --chat %chat% --title %title% --expire %expire% --limit %limit%

```


```json title="Результат"



```