﻿///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Automation
Перем Ванесса;

&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;

&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Automation.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;
	
	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюПодсказкуEnjoyHintУЭлемента(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюПодсказкуEnjoyHintУЭлемента",
		"И я показываю подсказку ""ТекстПодсказки"" EnjoyHint у элемента ""ИмяЭлемента""
		|		|'shape'|'rect'|
		|		|'timeout'|'5000'|",
		"",
		"");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюПодсказкуEnjoyHintУЭлементаВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюПодсказкуEnjoyHintУЭлементаВБраузере",
		"И я показываю подсказку ""ТекстПодсказки"" EnjoyHint у элемента ""ИмяЭлемента"" в браузере
		|		|'shape'|'rect'|
		|		|'timeout'|'5000'|",
		"Рисует фигуры в барузере.
		|Дополнительная информация по EnjoyHint находится тут: https://github.com/xbsoftware/enjoyhint/blob/master/README.md",
		"Прочее.Браузер.Эффекты.Затемнение");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюПодсказкуEnjoyHintПоКоординатамВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюПодсказкуEnjoyHintПоКоординатамВБраузере",
		"И я показываю подсказку ""ТекстПодсказки"" EnjoyHint по координатам ""ИмяПеременной"" в браузере
		|		|'left'|'100'|
		|		|'top'|'100'|
		|		|'width'|'200'|
		|		|'height'|'100'|
		|		|'shape'|'rect'|
		|		|'timeout'|'5000'|",
		"Рисует фигуры в барузере по переданным координатам.
		|В первый параметр передаётся текст подсказки, который будет отображен на экране.
		|Второй параметр необязательный - это имя переменной, которая является структурой и содержит значения left, top, width, height.
		|Если второй параметр не указан, то left, top, width, height используются данные из переданной таблицы.
		|Такую переменную можно создать программно, либо использовать шаг: И я определяю координаты картинки ""ИмяКартинки"" как ""ИмяПеременной"".
		|(Следует учесть, что в общем случае координаты будут одинаковыми, когда браузер открыт на полный экран (F11 для Chrome). Иначе нужно делать пересчёт координат.)
		|Дополнительная информация по EnjoyHint находится тут: https://github.com/xbsoftware/enjoyhint/blob/master/README.md",
		"Прочее.Браузер.Эффекты.Затемнение");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюСтрелкуОтКВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯРисуюСтрелкуОтКВБраузере",
		"И я рисую стрелку от ""ИмяЭлемента1"" к ""ИмяЭлемента2"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'startSocket'|'up'|
		|		|'endSocket'|'down'|
		|		|'startSocketGravity'|' 160, -80'|
		|		|'endSocketGravity'|' 160, 80'|
		|		|'dropShadow'|'true'|
		|		|'middleLabel'|''|
		|		|'timeout'|'5000'|",
		"Рисует стрелку в барузере. В качестве параметров могут быть как имена элементов формы, так и выражения на js, например:
		|rect('Заполните поле ""Комментарий""', 5000) - текст на экране
		|border('Комментарий', 5000) - рамка вокруг элемента
		|Если имя элемента не указано, то он считается текущим элементом. Дополнительные возможности тут: https://github.com/anseki/leader-line",
		"Прочее.Браузер.Эффекты.Стрелки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругЭлементаВБраузере(Парам01,ТабПарам)",
		"ЯРисуюРамкуВокругЭлементаВБраузере",
		"И я рисую рамку вокруг элемента ""ИмяЭлемента"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг элемента в браузере. Элемент формы ищется по имени.",
		"Прочее.Браузер.Эффекты.Рамки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(ТабПарам)",
		"ЯРисуюРамкуВокругНесколькихЭлементовВБраузере",
		"И я рисую рамку вокруг нескольких элементов в браузере
		|		|'elem'|'ИмяЭлемента1'|
		|		|'elem'|'ИмяЭлемента2'|
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг нескольких элементов в браузере. Элементы формы ищутся по имени.",
		"Прочее.Браузер.Эффекты.Рамки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругЯчейкиВТекущейСтрокеТаблицыВБраузере(ЗаголовокКолонки, ИмяТаблицы, ТабПарам)",
		"ЯРисуюРамкуВокругЯчейкиВТекущейСтрокеТаблицыВБраузере",
		"И я рисую рамку вокруг ячейки ""Заголовок колонки"" в текущей строке таблицы ""ИмяТаблицы"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг ячейки текущей строки таблицы в браузере. Таблица ищется по имени, колонка - по заголовку",
		"Прочее.Браузер.Эффекты.Рамки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругЯчейкиВСтрокеТаблицыВБраузере(ЗаголовокКолонки, НомерСтроки, ИмяТаблицы, ТабПарам)",
		"ЯРисуюРамкуВокругЯчейкиВСтрокеТаблицыВБраузере",
		"И я рисую рамку вокруг ячейки ""Заголовок колонки"" в строке ""НомерСтроки"" таблицы ""ИмяТаблицы"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг ячейки таблицы в браузере. Таблица ищется по имени, колонка - по заголовку, строка - по порядковому номеру (0 - строка шапки)",
		"Прочее.Браузер.Эффекты.Рамки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругЯчеекТаблицыВБраузере(ИмяТаблицы, ТабПарам)",
		"ЯРисуюРамкуВокругЯчеекТаблицыВБраузере",
		"И я рисую рамку вокруг ячеек таблицы ""ИмяТаблицы"" в браузере
		|		|'rowNumber'|'2'|
		|		|'rowNumberEnd'|'3'|
		|		|'columnTitle'|'Количество'|
		|		|'columnTitleEnd'|'Ставка НДС'|
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг группы ячеек таблицы в браузере. Таблица ищется по имени, колонки - по заголовку, строки - по порядковому номеру (0 - строка шапки, -1 - текущая строка).
		|Если указать оба параметра rowNumber и rowNumberEnd, то рамка охватит строки начиная с номера rowNumber и до rowNumberEnd.
		|Если указать только rowNumber - рамка охватит одну укзанную строку.
		|Если не указать ни один из этих параметров - рамка охватит все строки
		|То же самое справедливо и для отбора по колонкам.
		|Для колонок, вместо заголовка можно указывать порядковый номер (columnNumber, columnNumberEnd)",
		"Прочее.Браузер.Эффекты.Рамки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(Парам01,ТабПарам)",
		"ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере",
		"И я рисую рамку вокруг элемента панели разделов ""ИмяЭлемента"" в браузере
		|		|'color'|'red'|
		|		|'size'|'3'|
		|		|'timeout'|'5000'|",
		"Рисует рамку вокруг элемента в браузере. Элемент формы ищется по имени.",
		"Прочее.Браузер.Эффекты.Рамки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюТекстНадПолемВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюТекстНадПолемВБраузере",
		"И я показываю текст ""НужныйТекст"" над полем ""ИмяПоля"" в браузере
		|		|'borderColor'|'red'|
		|		|'backgroundColor'|'white'|
		|		|'timeout'|'5000'|
		|		|'offsetup'|'80'|",
		"Рисует над полем текст.",
		"Прочее.Браузер.Эффекты.Текст над полем");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюЗаставкуВБраузере(Парам01,ТабПарам)",
		"ЯПоказываюЗаставкуВБраузере",
		"И я показываю заставку ""НужныйТекст"" в браузере
		|		|'backgroundColor'|'blue'|
		|		|'color'|'white'|
		|		|'count'|'10'|
		|		|'effect'|'1'|
		|		|'fontSize'|'200%'|
		|		|'duration'|'2000'|
		|		|'timeout'|'5000'|",
		"Показывает заставку с указанной надписью, сопровождая показ одним из предопределённых видео эффектов.
		|- effect: может принимать значения от 1 до 5.",
		"Прочее.Браузер.Эффекты.Заставки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюНажатиеМышиВБраузере(ТабПарам)",
		"ЯПоказываюНажатиеМышиВБраузере",
		"И я показываю нажатие мыши в браузере
		|		|'color'|'red'|
		|		|'duration'|'1000'|
		|		|'radius'|'24'|
		|		|'width'|'8'|",
		"Показывает видео эффект расходящихся концентрических кругов, визуализирующих нажатие мыши в браузере.",
		"Прочее.Браузер.Подсветка кликов мышки");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯАктивизируюТекущееОкноБраузера()",
		"ЯАктивизируюТекущееОкноБраузера",
		"И я активизирую текущее окно браузера",
		"Активизируется текущее окно браузера",
		"Прочее.Браузер.Активизировать окно браузера");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯАктивизируюБраузерИУстанавливаюПолноэкранныйРежим()",
		"ЯАктивизируюБраузерИУстанавливаюПолноэкранныйРежим",
		"И я активизирую браузер и устанавливаю полноэкранный режим",
		"Браузер активизируется и переключается в полноэкранный режим",
		"Прочее.Браузер.Активизировать окно браузера");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты, "ЯПоказываюПодсказкуDriverJsУЭлементаВБраузере(Парам01,Парам02,ТабПарам)",
		"ЯПоказываюПодсказкуDriverJsУЭлементаВБраузере",
		"И я показываю подсказку ""ТекстПодсказки"" DriverJs у элемента ""ИмяЭлемента"" в браузере
		|		|'description'|'Подробное описание'|
		|		|'animate'|'true'|
		|		|'opacity'|'0.5'|
		|		|'padding'|'10'|
		|		|'position'|'bottom'|
		|		|'timeout'|'5000'|",
		"Рисует фигуры в барузере. Параметры описаны тут: https://kamranahmed.info/driver.js",
		"Прочее.Браузер.Эффекты.Затемнение");
	
	Возврат ВсеТесты;
КонецФункции

&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции

&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции


///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Функция выполняется перед началом каждого сценария
Функция ПередНачаломСценария() Экспорт
	
КонецФункции

&НаКлиенте
// Функция выполняется перед окончанием каждого сценария
Функция ПередОкончаниемСценария() Экспорт
	
КонецФункции


///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Процедура ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам)
	Если ТабПарам = Неопределено Тогда
		Возврат;
	КонецЕсли;
	
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		ДанныеПараметров.Вставить(СтрокаТабПарам.Кол1, СтрокаТабПарам.Кол2);
	КонецЦикла;
КонецПроцедуры

&НаКлиенте
Функция ОбернутьВАпострофы(Стр)
	Если Прав(СокрП(Стр), 1) = ")" Тогда
		Возврат Стр;
	КонецЕсли;
	
	Возврат "'" + Стр + "'";
КонецФункции

&НаКлиенте
//И я показываю подсказку EnjoyHint у элемента "ИмяЭлемента"
//@ЯПоказываюПодсказкуEnjoyHintУЭлементаВ(Парам01,ТабПарам)
Функция ЯПоказываюПодсказкуEnjoyHintУЭлемента(Текст, ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	
	shape = "rect";
	timeout = "5000";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("shape", "rect");
	ДанныеПараметров.Вставить("timeout", 5000);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("text", Текст);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|let enjoyhint = new EnjoyHint();
		|enjoyhint.set([{
		|	selector: elem(p.name), 
		|	description: p.text, 
		|	showSkip: false, 
		|	shape: p.shape
		|}]);
		|enjoyhint.run(); 
		|$('.enjoyhint_close_btn').hide();
		|setTimeout(() => (enjoyhint.stop()), p.timeout);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я показываю подсказку EnjoyHint у элемента "ИмяЭлемента" в браузере
//@ЯПоказываюПодсказкуEnjoyHintУЭлементаВБраузере(Парам01,ТабПарам)
Функция ЯПоказываюПодсказкуEnjoyHintУЭлементаВБраузере(Текст, ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	ЯПоказываюПодсказкуEnjoyHintУЭлемента(Текст, ИмяЭлемента, ТабПарам);
КонецФункции

&НаКлиенте
//И я показываю подсказку "ТекстПодсказки" EnjoyHint по координатам "ИмяПеременной"
//@ЯПоказываюПодсказкуEnjoyHintПоКоординатамВБраузере(Парам01,ТабПарам)
Функция ЯПоказываюПодсказкуEnjoyHintПоКоординатамВБраузере(Текст, ИмяПеременной = Неопределено, ТабПарам = Неопределено) Экспорт
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("left", "100");
	ДанныеПараметров.Вставить("top", "100");
	ДанныеПараметров.Вставить("width", "200");
	ДанныеПараметров.Вставить("height", "100");
	
	ДанныеПараметров.Вставить("shape", "rect");
	ДанныеПараметров.Вставить("timeout", "5000");
	
	Если ТабПарам = Неопределено И ТипЗнч(ИмяПеременной) = Тип("Массив") Тогда
		ТабПарам = ИмяПеременной;
	КонецЕсли;	 
	
	Если ИмяПеременной <> Неопределено и НЕ ПустаяСтрока(ИмяПеременной) Тогда
		Если Контекст.Свойство("ИмяПеременной") Тогда
			ДанныеПараметров.Вставить("left", Контекст[ИмяПеременной].left);
			ДанныеПараметров.Вставить("top", Контекст[ИмяПеременной].top);
			ДанныеПараметров.Вставить("width", Контекст[ИмяПеременной].width);
			ДанныеПараметров.Вставить("height", Контекст[ИмяПеременной].height);
		КонецЕсли;	 
	КонецЕсли;	 
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("text", Текст);
	
	Скрипт = "
	|{
	|let p = {text: '%1', shape: '%2', timeout: %3};
	|let node = document.createElement('div');
	|node.style.position = ""absolute"";
	|node.style.left = ""%4px"";
	|node.style.top = ""%5px"";
	|node.style.width = ""%6px"";
	|node.style.height = ""%7px"";
	|node.style.zIndex = 9999;
	|document.body.appendChild(node);
	|node.getBoundingClientRect = () => { return {left: %4, top: %5, width: %6, height: %7}};
	|enjoyhint = new EnjoyHint();
	|enjoyhint.set([{
	|    selector: node,
	|    description: p.text,
	|    showSkip: false,
	|    shape: p.shape
	|}]);
	|enjoyhint.run();
	|$('.enjoyhint_close_btn').hide();
	|setTimeout(() => (enjoyhint.stop(), node.remove()), p.timeout);
	|}
	|";
	
	Скрипт = СтрЗаменить(Скрипт, "%1", ДанныеПараметров["text"]);
	Скрипт = СтрЗаменить(Скрипт, "%2", ДанныеПараметров["shape"]);
	Скрипт = СтрЗаменить(Скрипт, "%3", ДанныеПараметров["timeout"]);
	
	Скрипт = СтрЗаменить(Скрипт, "%4", ДанныеПараметров["left"]);
	Скрипт = СтрЗаменить(Скрипт, "%5", ДанныеПараметров["top"]);
	Скрипт = СтрЗаменить(Скрипт, "%6", ДанныеПараметров["width"]);
	Скрипт = СтрЗаменить(Скрипт, "%7", ДанныеПараметров["height"]);
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую стрелку от "ИмяЭлемента1" к "ИмяЭлемента2" в браузере
//@ЯРисуюСтрелкуОтКВБраузере(Парам01,ТабПарам)
Функция ЯРисуюСтрелкуОтКВБраузере(Знач ИмяЭлемента1, Знач ИмяЭлемента2, ТабПарам = Неопределено) Экспорт
	
	color = "red";
	size = "3";
	timeout = "5000";
	startSocket = "up";
	endSocket = "down";
	startSocketGravity = "";
	endSocketGravity = "";
	dropShadow = "true";
	middleLabel = "";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	ДанныеПараметров.Вставить("startSocket", startSocket);
	ДанныеПараметров.Вставить("endSocket", endSocket);
	ДанныеПараметров.Вставить("startSocketGravity", startSocketGravity);
	ДанныеПараметров.Вставить("endSocketGravity", endSocketGravity);
	ДанныеПараметров.Вставить("dropShadow", dropShadow);
	ДанныеПараметров.Вставить("middleLabel", middleLabel);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name1", ИмяЭлемента1);
	ДанныеПараметров.Вставить("name2", ИмяЭлемента2);
	
	startSocketGravity = ДанныеПараметров.Получить("startSocketGravity");
	Если ЗначениеЗаполнено(startSocketGravity) Тогда
		ДанныеПараметров.Вставить("startSocketGravity", Ванесса.РазложитьСтрокуВМассивПодстрокКлиент(startSocketGravity, ","));
	ИначеЕсли startSocketGravity <> Неопределено Тогда
		ДанныеПараметров.Удалить("startSocketGravity");
	КонецЕсли;
	
	endSocketGravity = ДанныеПараметров.Получить("endSocketGravity");
	Если ЗначениеЗаполнено(endSocketGravity) Тогда
		ДанныеПараметров.Вставить("endSocketGravity", Ванесса.РазложитьСтрокуВМассивПодстрокКлиент(endSocketGravity, ","));
	ИначеЕсли endSocketGravity <> Неопределено Тогда
		ДанныеПараметров.Удалить("endSocketGravity");
	КонецЕсли;
	
	Если ПустаяСтрока(ИмяЭлемента1) Тогда
		ИмяЭлемента1 = "selected()";
	КонецЕсли;
	
	Если ПустаяСтрока(ИмяЭлемента2) Тогда
		ИмяЭлемента2 = "selected()";
	КонецЕсли;
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|arrow(
		|" + ?(ПустаяСтрока(ИмяЭлемента1), "selected()", "p.name1") + ", 
		|" + ?(ПустаяСтрока(ИмяЭлемента2), "selected()", "p.name2") + ", 
		|p.timeout, p).setOptions(p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг элемента "ИмяЭлемента" в браузере
//@ЯРисуюРамкуВокругЭлементаВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругЭлементаВБраузере(ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	
	color = "red";
	size = "3";
	timeout = "5000";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|border(p.name, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг нескольких элементов в браузере
//@ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругНесколькихЭлементовВБраузере(ТабПарам) Экспорт
	
	color = "red";
	size = "3";
	timeout = "5000";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	МассивИменЭлементов = Новый Массив;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Если Нрег(СтрокаТабПарам.Кол1) = "elem" Тогда
			МассивИменЭлементов.Добавить(СтрокаТабПарам.Кол2);
		КонецЕсли;
	КонецЦикла;
	ДанныеПараметров.Вставить("elem", МассивИменЭлементов);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|border(p.elem, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг ячейки "Заголовок колонки" в текущей строке таблицы "ИмяТаблицы" в браузере
//@ЯРисуюРамкуВокругЯчейкиВТекущейСтрокеТаблицыВБраузере(ЗаголовокКолонки, ИмяТаблицы, ТабПарам)
Функция ЯРисуюРамкуВокругЯчейкиВТекущейСтрокеТаблицыВБраузере(ЗаголовокКолонки, ИмяТаблицы, ТабПарам) Экспорт
	
	ЯРисуюРамкуВокругЯчейкиВСтрокеТаблицыВБраузере(ЗаголовокКолонки, -1, ИмяТаблицы, ТабПарам);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг ячейки "Заголовок колонки" в строке "НомерСтроки" таблицы "ИмяТаблицы" в браузере
//@ЯРисуюРамкуВокругЯчейкиВСтрокеТаблицыВБраузере(ЗаголовокКолонки, НомерСтроки, ИмяТаблицы, ТабПарам)
Функция ЯРисуюРамкуВокругЯчейкиВСтрокеТаблицыВБраузере(ЗаголовокКолонки, НомерСтроки, ИмяТаблицы, ТабПарам) Экспорт
	
	color = "red";
	size = "3";
	timeout = "5000";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("columnTitle", ЗаголовокКолонки);
	ДанныеПараметров.Вставить("rowNumber", НомерСтроки);
	ДанныеПараметров.Вставить("tableName", ИмяТаблицы);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|let cell = tableCellByColumnTitle(p.tableName, p.rowNumber, p.columnTitle);
		|border(cell, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг ячеек таблицы "ИмяТаблицы" в браузере
//@ЯРисуюРамкуВокругЯчеекТаблицыВБраузере(ИмяТаблицы, ТабПарам)
Функция ЯРисуюРамкуВокругЯчеекТаблицыВБраузере(ИмяТаблицы, ТабПарам) Экспорт
	
	color = "red";
	size = "3";
	timeout = "5000";
	rowNumber = Неопределено;
	rowNumberEnd = Неопределено;
	columnTitle = Неопределено;
	columnTitleEnd = Неопределено;
	columnNumber = Неопределено;
	columnNumberEnd = Неопределено;
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	ДанныеПараметров.Вставить("rowNumber", rowNumber);
	ДанныеПараметров.Вставить("rowNumberEnd", rowNumberEnd);
	ДанныеПараметров.Вставить("columnTitle", columnTitle);
	ДанныеПараметров.Вставить("columnTitleEnd", columnTitleEnd);
	ДанныеПараметров.Вставить("columnNumber", columnNumber);
	ДанныеПараметров.Вставить("columnNumberEnd", columnNumberEnd);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("tableName", ИмяТаблицы);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|let elements = [];
		|let table = elem(p.tableName);
		|
		|if(p.rowNumber === null) {
		|	p.rowNumber = 0;
		|	p.rowNumberEnd = table.querySelectorAll('.gridBody .gridLine').length;
		|}
		|if(p.rowNumberEnd === null) {
		|	p.rowNumberEnd = p.rowNumber;
		|}
		|
		|p['columnIndex'] = null;
		|p['columnIndexEnd'] = null;
		|if(p.columnTitle !== null) {
		|	p.columnIndex = tableColumnIndex(table, p.columnTitle);
		|}
		|if(p.columnTitleEnd !== null) {
		|	p.columnIndexEnd = tableColumnIndex(table, p.columnTitleEnd);
		|}
		|if(p.columnNumber !== null) {
		|	p.columnIndex = parseInt(p.columnNumber) - 1;
		|}
		|if(p.columnNumberEnd !== null) {
		|	p.columnIndexEnd = parseInt(p.columnNumberEnd) - 1;
		|}
		|if(p.columnIndex === null) {
		|	p.columnIndex = 0;
		|	p.columnIndexEnd = table.querySelectorAll('.gridHead .gridLine .gridBox').length - 1;
		|}
		|if(p.columnIndexEnd === null) {
		|	p.columnIndexEnd = p.columnIndex;
		|}
		|
		|elements.push(tableCellByColumnIndex(table, p.rowNumber, p.columnIndex));
		|if(p.rowNumberEnd !== p.rowNumber || p.columnIndexEnd !== p.columnIndex)
		|	elements.push(tableCellByColumnIndex(table, p.rowNumberEnd, p.columnIndexEnd));
		|
		|border(elements, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я рисую рамку вокруг элемента панели разделов "ИмяЭлемента" в браузере
//@ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(Парам01,ТабПарам)
Функция ЯРисуюРамкуВокругЭлементаПанелиРазделовВБраузере(ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	
	color = "red";
	size = "3";
	timeout = "5000";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", color);
	ДанныеПараметров.Вставить("size", size);
	ДанныеПараметров.Вставить("timeout", timeout);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|let r = theme(p.name).getBoundingClientRect();
		|let coordinates = {left: r.x - 5, top: r.y - 5, width: r.width + 5, height: r.height + 5};
		|border(coordinates, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я показываю текст "НужныйТекст" над полем "ИмяПоля" в браузере
//@ЯПоказываюТекстНадПолемВБраузере(Парам01,ТабПарам)
Функция ЯПоказываюТекстНадПолемВБраузере(Текст, ИмяЭлемента, ТабПарам = Неопределено) Экспорт
	
	borderColor = "red";
	backgroundColor = "white";
	timeout = "5000";
	offsetup = "80";
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("borderColor", borderColor);
	ДанныеПараметров.Вставить("backgroundColor", backgroundColor);
	ДанныеПараметров.Вставить("timeout", timeout);
	ДанныеПараметров.Вставить("offsetup", offsetup);
	
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	ДанныеПараметров.Вставить("text", Текст);
	
	Скрипт = "
		|{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|let e = elem(p.name);
		|let r = e.getBoundingClientRect();
		|function rect(text, timeout, options) {
		|	let px = value => (typeof value == 'number' ? value + 'px' : value);
		|	let node = document.createElement('div');
		|	node.innerHTML = text;
		|	node.style.fontSize = '140%';
		|	node.style.position = 'fixed';
		|	node.style.zIndex = 999999;
		|	node.style.borderWidth = '0.2em';
		|	node.style.borderStyle = 'solid';
		|	node.style.borderColor = options.borderColor;
		|	node.style.boxShadow = '0 0 1em #333333';
		|	node.style.backgroundColor = options.backgroundColor;
		|	node.style.padding = '1em';
		|	node.style.borderRadius = '1em';
		|	window.top.document.body.appendChild(node);
		|	if (timeout) setTimeout(() => { if (node) node.remove() }, timeout);
		|	customDrawElements.push(node);
		|	return node;
		|};
		|let t = rect(p.text, p.timeout, p);
		|t.style.left = r.left + 'px';
		|t.style.top = (r.top - p.offsetup) + 'px';
		|}				
		|";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//"И я показываю заставку ""НужныйТекст"" в браузере
Функция ЯПоказываюЗаставкуВБраузере(Текст, ТабПарам = Неопределено) Экспорт
	
	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", "white");
	ДанныеПараметров.Вставить("backgroundColor", "blue");
	ДанныеПараметров.Вставить("effect", "1");
	ДанныеПараметров.Вставить("timeout", "3000");
	ДанныеПараметров.Вставить("delay", "2000");
	ДанныеПараметров.Вставить("count", "10");
	ДанныеПараметров.Вставить("fontSize", "200%");
	ДанныеПараметров.Вставить("text", Текст);
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	
	delay = ДанныеПараметров.Получить("delay");
	timeout = Число(ДанныеПараметров.Получить("timeout"));
	
	Если ТипЗнч(delay) = Тип("Строка") Тогда
		Попытка
			delay = Число(delay);
		Исключение
			delay = 2000;
		КонецПопытки;
	КонецЕсли;
	
	Если ТипЗнч(timeout) = Тип("Строка") Тогда
		Попытка
			timeout = Число(timeout);
		Исключение
			timeout = 3000;
		КонецПопытки;
	КонецЕсли;
	
	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|VanessaVisualEffect.show(p.text, p.timeout, p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
	ВремяОжидания = 500;
	КоличествоИтераций = 3 * (timeout + delay * 2) / ВремяОжидания;
	Для Номер = 1 По КоличествоИтераций Цикл
		Ванесса.ВнешняяКомпонентаДляСкриншотов.Пауза(ВремяОжидания);
		Скрипт = "VanessaVisualEffect.completed()";
		Результат = Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
		Если Результат.result.result.value Тогда
			Прервать;
		КонецЕсли
	КонецЦикла
	
КонецФункции

&НаКлиенте
Функция ЯПоказываюНажатиеМышиВБраузере(ТабПарам) Экспорт

	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("color", "white");
	ДанныеПараметров.Вставить("duration", 1000);
	ДанныеПараметров.Вставить("radius", 8);
	ДанныеПараметров.Вставить("width", 8);
	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);

	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|VanessaMouse.showClick(p);
		|}";
	
	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);
	
КонецФункции

&НаКлиенте
//И я активизирую текущее окно браузера
Процедура ЯАктивизируюТекущееОкноБраузера() Экспорт
	Ванесса.МодульРаботаСБраузером().АктивизироватьОкноБраузера(Ложь);
КонецПроцедуры

&НаКлиенте
//И я активизирую браузер и устанавливаю полноэкранный режим
Процедура ЯАктивизируюБраузерИУстанавливаюПолноэкранныйРежим() Экспорт
	Ванесса.МодульРаботаСБраузером().АктивизироватьОкноБраузера(Истина);
КонецПроцедуры

&НаКлиенте
//И я показываю подсказку EnjoyHint у элемента "ИмяЭлемента"
//@ЯПоказываюПодсказкуEnjoyHintУЭлемента(Парам01,ТабПарам)
Функция ЯПоказываюПодсказкуDriverJsУЭлементаВБраузере(Текст, ИмяЭлемента, ТабПарам = Неопределено) Экспорт

	animate = "true";
	description = "";
	opacity = "0.5";
	padding = "10";
	position = "bottom";
	timeout = "5000";

	ДанныеПараметров = Новый Соответствие;
	ДанныеПараметров.Вставить("animate", animate);
	ДанныеПараметров.Вставить("description", description);
	ДанныеПараметров.Вставить("opacity", opacity);
	ДанныеПараметров.Вставить("padding", padding);
	ДанныеПараметров.Вставить("position", position);
	ДанныеПараметров.Вставить("timeout", timeout);

	ДанныеПараметровИзТаблицы(ДанныеПараметров, ТабПарам);
	ДанныеПараметров.Вставить("name", ИмяЭлемента);
	ДанныеПараметров.Вставить("title", Текст);

	Скрипт = "{
		|let p = " + Ванесса.ЗаписатьОбъектJSON(ДанныеПараметров) + ";
		|p.timeout = fixNumericOptions(p.timeout, p);
		|if (window.VanessaDriverTimer) clearTimeout(window.VanessaDriverTimer);
		|if (!window.VanessaDriverJs) window.VanessaDriverJs = new Driver({
		|	animate: p.animate,
		|	showButtons: false,
		|	opacity: p.opacity,
		|	padding: p.padding,
		|});
		|let id = ++window.VanessaDriverId;
		|let driver = window.VanessaDriverJs;
		|driver.highlight({
		|	padding: p.padding,
		|	element: elem(p.name),
		|	popover: {
		|		title: p.title,
		|		description: p.description,
		|		position: p.position,
		|	}
		|});
		|
		|let patch_id = 'vanessa-driver-css-patch';
		|let patch = document.getElementById(patch_id);
		|if (!patch) {
		|    patch = document.createElement('style');
		|    patch.id = id;
		|    window.top.document.body.appendChild(patch);
		|}
		|patch.innerText = '#driver-page-overlay{opacity:' +  p.opacity + ' !important}';
		|
		|window.VanessaDriverTimer = setTimeout(() => driver.reset(), p.timeout);
		|}";

	Ванесса.ВыполнитьJavaScriptБраузер(Скрипт);

КонецФункции