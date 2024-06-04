﻿---
sidebar_position: 4
---

# Загрузить файл
 Загружает файл на облачный диск


*Функция ЗагрузитьФайл(Знач Токен, Знач Файл, Знач Путь, Знач Перезаписывать = Ложь) Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен |
  | Файл | --file | Строка, ДвоичныеДанные | Данные файл для загрузки |
  | Путь | --path | Строка | Путь сохранения на Dropbox |
  | Перезаписывать | --overwrite | Булево | Перезаписывать файл при конфликте путей |

  
  Вовзращаемое значение:   Соответствие Из КлючИЗначение - сериализованный JSON ответа от Dropbox 

```bsl title="Пример кода"
	
    Путь      = "/New/pic.png";  
    Токен     = "sl.B2PZ-Sk7vWqtAfWKI0CKnYNapuN4bH-a4_tTsbN02eoxT1dlQ9Vs_vcf30ZAAl9h-m3xg5uz5c...";
    Картинка  = "https://openintegrations.dev/test_data/picture.jpg";
    
    КартинкаПуть = ПолучитьИмяВременногоФайла("png");
    КопироватьФайл(Картинка, КартинкаПуть);
    
    Результат = OPI_Dropbox.ЗагрузитьФайл(Токен, КартинкаПуть, Путь, Истина);

	
```

```sh title="Пример команд CLI"
    
  oint dropbox ЗагрузитьФайл --token "sl.B2PZ-Sk7vWqtAfWKI0CKnYNapuN4bH-a4_tTsbN02eoxT1dlQ9Vs_vcf30ZAAl9h-m3xg5uz5c..." --file %file% --path %path% --overwrite %overwrite%

```


```json title="Результат"

{
 "name": "pic.png",
 "path_lower": "/new/pic.png",
 "path_display": "/New/pic.png",
 "id": "id:kJU6-a-pT48AAAAAAAABYA",
 "client_modified": "2024-05-30T12:32:09Z",
 "server_modified": "2024-05-30T12:32:09Z",
 "rev": "619ab0e44a57cbd841553",
 "size": 2114023,
 "is_downloadable": true,
 "content_hash": "0f3b18c255b0f252bd326cacc04c15c3aa57bd6b8234adb65aa7bb2987a65492"
}

```