---
sidebar_position: 4
---

# Отправить гифку
Отправляет гифку в чат или канал


*Функция ОтправитьГифку(Знач Токен, Знач IDЧата, Знач Текст, Знач Гифка, Знач Клавиатура = "") Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен бота |
  | IDЧата | --chat | Строка/Число | ID целевого чата. Если необходима отправка в определенную тему, её номер нужно указывать через * (IDЧата*IDТемы) |
  | Текст | --text | Строка | Текст сообщения |
  | Гифка | --gif | Двоичные данные / Строка | Двоичные данные гифки или путь к файлу |
  | Клавиатура | --keyboard | Строка (необяз.) | JSON клавиатуры. См. [Сформировать клавиатуру по массиву кнопок](./Sformirovat-klaviaturu-po-massivu-knopok) |
  | Разметка | --parsemode | Строка (необяз.) | Вид обработки текста (HTML, Markdown, MarkdownV2). Markdown по умолчанию |
  
  Вовзращаемое значение: Соответствие - сериализованный JSON ответа от Telegram


```bsl title="Пример кода"
	
	Токен       = "111111111:AACccNYOAFbuhAL5GAaaBbbbOjZYFvLZZZZ";
	Описание    = "Классная гифка";
	ПутьКГифке  = "C:\2.gif";
	
	Ответ = OPI_Telegram.ОтправитьГифку(Токен, 1234567890, Описание, ПутьКГифке); //Соответствие
	Ответ = OPI_Инструменты.JSONСтрокой(Ответ);                                   //JSON строка                                            
	
```

```sh title="Пример команд CLI"

    oint telegram ОтправитьГифку --token "%token%" --chat %channelid% --text "Классная гифка" --gif "C:\2.gif"

```

<img src={require('./img/7.gif').default} width='256px' />

```json title="Результат"

{
 "result": {
  "caption": "Классная гифка",
  "document": {
   "file_size": 29504,
   "file_unique_id": "AgADKT4AAgb3yUg",
   "file_id": "CgACAgIAAxkDAAMYZZktnDViD7n0xjC_SC3KR6-Rtn8AAik-AAIG98lIGs3XybT9Oz00BA",
   "thumb": {
    "height": 300,
    "width": 320,
    "file_size": 10418,
    "file_unique_id": "AQADKT4AAgb3yUhy",
    "file_id": "AAMCAgADGQMAAxhlmS2cNWIPufTGML9ILcpHr5G2fwACKT4AAgb3yUgazdfJtP07PQEAB20AAzQE"
   },
   "thumbnail": {
    "height": 300,
    "width": 320,
    "file_size": 10418,
    "file_unique_id": "AQADKT4AAgb3yUhy",
    "file_id": "AAMCAgADGQMAAxhlmS2cNWIPufTGML9ILcpHr5G2fwACKT4AAgb3yUgazdfJtP07PQEAB20AAzQE"
   },
   "mime_type": "video/mp4",
   "file_name": "animation.gif.mp4"
  },
  "animation": {
   "file_size": 29504,
   "file_id": "CgACAgIAAxkDAAMYZZktnDViD7n0xjC_SC3KR6-Rtn8AAik-AAIG98lIGs3XybT9Oz00BA",
   "thumb": {
    "height": 300,
    "width": 320,
    "file_size": 10418,
    "file_unique_id": "AQADKT4AAgb3yUhy",
    "file_id": "AAMCAgADGQMAAxhlmS2cNWIPufTGML9ILcpHr5G2fwACKT4AAgb3yUgazdfJtP07PQEAB20AAzQE"
   },
   "thumbnail": {
    "height": 300,
    "width": 320,
    "file_size": 10418,
    "file_unique_id": "AQADKT4AAgb3yUhy",
    "file_id": "AAMCAgADGQMAAxhlmS2cNWIPufTGML9ILcpHr5G2fwACKT4AAgb3yUgazdfJtP07PQEAB20AAzQE"
   },
   "height": 300,
   "file_unique_id": "AgADKT4AAgb3yUg",
   "duration": 1,
   "width": 320,
   "mime_type": "video/mp4",
   "file_name": "animation.gif.mp4"
  },
  "date": 1704537500,
  "chat": {
   "username": "JKIee",
   "type": "private",
   "last_name": "Titowets",
   "first_name": "Anton",
   "id": 1234567890
  },
  "from": {
   "username": "sicheebot",
   "first_name": "Sichee",
   "is_bot": true,
   "id": 0987654321
  },
  "message_id": 24
 },
 "ok": true
}

```