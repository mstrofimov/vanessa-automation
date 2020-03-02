# language: ru
# encoding: utf-8
#parent uf:
@UF4_Библиотека_шагов
#parent ua:
@UA8_Прочее

@IgnoreOn82Builds
@IgnoreOnOFBuilds
@IgnoreOnWeb
@IgnoreOn836
@IgnoreOn837
@IgnoreOn838
@IgnoreOn839
@tree



Функционал: Вызов некоторых процедур напрямую en
 


@IgnoreOnServer
Сценарий: Вызов некоторых процедур напрямую. ЗаполнитьКаталогИнструментовЕслиОнПустой.
	И я закрываю сеанс TESTCLIENT
	Когда в базе есть пользователь "VanessaUserEN" с паролем "1" с языком "English"
	Когда Я копирую текущий профиль TestClient с установкой параметров:
		| 'Имя подключения' | 'Порт' | 'Логин'         | 'Пароль' |  'Дополнительные параметры строки запуска'  |
		| 'VanessaUserEN'   | '1'    | 'VanessaUserEN' | '1'      |   '/Len /Vlen'                              |	
	
	И Я подключаю клиент тестирования "VanessaUserEN" из таблицы клиентов тестирования
	
	И В командном интерфейсе я выбираю 'Main' 'Open vanessa automation'
	Тогда открылось окно '*Vanessa Automation*'

		
		
	И я перехожу к закладке с именем "ГруппаНастройки"
	И я нажимаю кнопку очистить у поля с именем "КаталогИнструментов"

	И я устанавливаю флаг с именем 'ПроверкаРаботыVanessaAutomationВРежимеTestClient'

	И я перехожу к закладке с именем "ГруппаСлужебная"
	И я перехожу к закладке с именем "ГруппаСлужебноеВыполнитьКод"
	И в поле с именем 'РеквизитПроизвольныйКод' я ввожу текст
		|'ПодключитьБиблиотекуСообщенийПользователю();'|
	И я нажимаю на кнопку с именем 'ВыполнитьПроизвольныйКод'
	И пауза 1
	Тогда не появилось окно предупреждения системы

	И я перехожу к закладке с именем "ГруппаНастройки"
	
	И я жду, что поле с именем "КаталогИнструментов" перестанет быть пустым в течение 2 секунд
		
		
Сценарий: Удаление служебных пользователей
	Дано я удаляю все элементы Справочника "Справочник1"
	Когда Я удаляю пользователя "VanessaUserEN"
	И я закрываю TestClient "VanessaUserEN"
	И в таблице клиентов тестирования я активизирую строку 'Этот клиент'
	