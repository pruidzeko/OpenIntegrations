---
sidebar_position: 7
---

# Скачать файл
Возвращает двоичные данные файла по ID

*Функция СкачатьФайл(Знач Токен, Знач Идентификатор) Экспорт*

  | Параметр | CLI опция | Тип | Назначение |
  |-|-|-|-|
  | Токен | --token | Строка | Токен доступа |
  | Идентификатор | --object | Строка | Идентификатор файла |
  
  Вовзращаемое значение: ДвоичныеДанные - двоичные данные файла

```bsl title="Пример кода"
			
    Идентификатор = "1dg_MwwwPSPYT0p3y-8dvGWoapbwaaaaa"; 

    Ответ = OPI_GoogleDrive.СкачатьФайл(Токен, Идентификатор);  //Соответствие
    Ответ = OPI_Инструменты.JSONСтрокой(Ответ);                 //Строка

```

```sh title="Пример команд CLI"

    oint google ОбновитьТокен --id %clientid% --secret %clientsecret% --refresh %refreshtoken% > token.json
    oint tools РазложитьJSON --json token.json --name access_token > token.tmp
    set /p token=<token.tmp
    oint gdrive СкачатьФайл --token "%token%" --object "1dg_MwwwPSPYT0p3y-8dvGWoapbwaaaaa" --out ./picture.png

```