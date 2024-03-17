---
sidebar_position: 4
---

# Удалить комментарий
Удаляет комментарий по ID

*Функция УдалитьКомментарий(Знач Токен, Знач ИДОбъекта, Знач ИДКомментария) Экспорт*

  | Параметр | Тип | Назначение |
  |-|-|-|
  | Токен | Строка | Токен доступа |
  | ИДОбъекта | Строка | Идентификатор объекта-владельца комментария |
  | ИДКомментария | Строка | Идентификатор комментария |
  
  Вовзращаемое значение: Пустой ответ

```bsl title="Пример кода"
			
    Идентификатор = "1dg_MwwwPSPYT0p3y-8dvGWoapbwaaaaa"; 

    Ответ = OPI_GoogleDrive.УдалитьКомментарий(Токен, Идентификатор, Комментарий);  //Соответствие

```


```json title="Результат"

''

```