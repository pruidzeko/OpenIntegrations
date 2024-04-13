Файл1С = """C:\Program Files\1cv8\8.3.18.1208\bin\1cv8.exe""";
Режим  = "CONFIG";
Сервер = "AIONIOTISCORE";
База   = "OpenIntegrations";
ПутьВыгрузки = "G:\Мой диск\Проекты\ОПИ\Релизы\";
Версия   = "1.6.0";
ПутьКEDT = "C:\Repos\OPI\OPI";
ПутьOS   = "C:\Repos\OPI\OInt";

ПутьВыгрузки = ПутьВыгрузки + Версия + "\";

КаталогВыгрузки = Новый Файл(ПутьВыгрузки);
Если Не КаталогВыгрузки.Существует() Тогда
	СоздатьКаталог(ПутьВыгрузки);
КонецЕсли;

Основа        = Файл1С + " " + Режим + " /S " + Сервер + "\" + База + " ";

//CFE
ВыгрузкаВФайл = Основа + "/DumpCfg """ + ПутьВыгрузки + "OpenIntegrations_" + Версия + ".cfe" + """ -Extension OpenIntegrations";
ЗапуститьПриложение(ВыгрузкаВФайл, , Истина);

// XML
ПапкаXML = ПутьВыгрузки + "XML";

КаталогXML = Новый Файл(ПапкаXML);
Если Не КаталогXML.Существует() Тогда
	СоздатьКаталог(ПапкаXML);
КонецЕсли;

ВыгрузкаВXML = Основа + "/DumpConfigToFiles """ + ПапкаXML + """ -Extension OpenIntegrations";
ЗапуститьПриложение(ВыгрузкаВXML, , Истина);

ПутьZIP = ПутьВыгрузки + "XML.zip";
ZipXML = Новый ЗаписьZipФайла(ПутьZIP);

ZipXML.Добавить(ПапкаXML + "\*.*" , РежимСохраненияПутейZIP.СохранятьОтносительныеПути, РежимОбработкиПодкаталоговZIP.ОбрабатыватьРекурсивно);
ZipXML.Записать();

ПутьZIP = ПутьВыгрузки + "EDT.zip";
ZipEDT = Новый ЗаписьZipФайла(ПутьZIP);

//EDT
ZipEDT.Добавить(ПутьКEDT + "\*.*" , РежимСохраненияПутейZIP.СохранятьОтносительныеПути, РежимОбработкиПодкаталоговZIP.ОбрабатыватьРекурсивно);
ZipEDT.Записать();

//OSPX
СборкаOS = "opm b -o ""C:/"" """ + ПутьOS + """";
ЗапуститьПриложение(СборкаOS, , Истина);
ПереместитьФайл("C:\oint-" + Версия + ".ospx", ПутьВыгрузки + "oint-" + Версия + ".ospx");

