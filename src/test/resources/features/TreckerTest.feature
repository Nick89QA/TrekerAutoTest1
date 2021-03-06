# language: ru

@TrackerTest
Функционал:Creative Integrator

  Контекст:
    Дано Пользователь авторизуется на сайте трекера
    Тогда авторизация прошла успешно

# тест проходит корректно
  Сценарий: Пользователь создает задачу с минимальным промежутком времени
    Когда Пользователь создает задачу с параметрами
      | Название         | Текст для названия задачи            |
      | Время начала     | 11:00                                |
      | Время конец      | 11:01                                |
      | Проект           | Песок                                |
      | Ссылка на задачу | https://hub.crtweb.ru/tracker        |
      | Описание задачи  | Автотестирование внутреннего трекера |
    Тогда задача создана корректно

# тест проходит корректно
  Сценарий: Пользователь создает задачу с неккоррекной URl ссылкой
    Когда Пользователь создает задачу с параметрами
      | Название         | Текст для названия задачи |
      | Время начала     | 09:00                     |
      | Время конец      | 10:00                     |
      | Проект           | Песок                     |
      | Ссылка на задачу | 67868686879789            |
    Тогда пользователь получает уведомление о неккорректной ссылке

# Сценарий проходит 2 раза
  Сценарий: Пользователь создает задачу без выбора проекта
    Когда Пользователь создает задачу с параметрами
      | Название         | Текст для названия задачи            |
      | Время начала     | 09:00                                |
      | Время конец      | 10:00                                |
      | Проект           |                                      |
      | Ссылка на задачу | https://hub.crtweb.ru/tracker        |
      | Описание задачи  | Автотестирование внутреннего трекера |
    Тогда пользователь получает уведомление о необходимости выбора проекта
# Сценарий проходит 2 раза
  Сценарий: Пользователь просматривает информацию о проекте
    Когда Пользователь заходит на страницу с проектами
    Тогда Пользователь может просматривать информацию о проекте

# Cценарий проходит 2 раза
  Сценарий: Пользователь создает новый проект
    Когда Пользователь создает успешно новый проект
      | Название проекта      | Разработка планов     |
      | Описание              | Новый план по проекту |
      | Подрядчик/Исполнитель | asd                   |


    # тест проходит корректно
  Сценарий: Авторизация пользователя и создание задачи
    Когда Пользователь создает задачу с параметрами
      | Название         | Текст для названия задачи            |
      | Время начала     | 11:00                                |
      | Время конец      | 13:00                                |
      | Проект           | цу                                   |
      | Ссылка на задачу | https://hub.crtweb.ru/tracker        |
      | Описание задачи  | Автотестирование внутреннего трекера |
    Тогда задача создана корректно

    # тест проходит корректно
  Сценарий:  Пользователь ищет сотрудника по фамилии и email
    Когда Пользователь переходит на страницу Пользователи
    Тогда пользователь ищет по параметрам и убеждается в успехе
      | Петрыч        |
      | nip@crtweb.ru |

# тест проходит корректно
  Сценарий: Пользователь создает задачу с максимальным промежутком времени
    Когда Пользователь создает задачу с параметрами
      | Название         | Текст для названия задачи            |
      | Время начала     | 09:00                                |
      | Время конец      | 21:00                                |
      | Проект           | Песок                                |
      | Ссылка на задачу | https://hub.crtweb.ru/tracker        |
      | Описание задачи  | Автотестирование внутреннего трекера |
    Тогда задача создана корректно

# сценарий проходит 2 раза
  Сценарий: Пользователь создает задачу без выбора проекта
    Когда Пользователь создает задачу с параметрами
      | Название         | Текст для названия задачи            |
      | Время начала     | 09:00                                |
      | Время конец      | 10:00                                |
      | Проект           |                                      |
      | Ссылка на задачу | https://hub.crtweb.ru/tracker        |
      | Описание задачи  | Автотестирование внутреннего трекера |
    Тогда пользователь получает уведомление о необходимости выбора проекта

# Сценарий проходит 2 раза
  Сценарий: Пользователь просматривает информацию о проекте
    Когда Пользователь заходит на страницу с проектами
    Тогда Пользователь может просматривать информацию о проекте

# тест проходит корректно
  Сценарий: Пользователь просматривает информацию о подрядчиках
    Когда Пользователь заходит на страницу с подрядчиками
    Тогда Пользователь убеждается о доступности подрядчиков на странице

    # тест проходит корректно
  Сценарий: Пользователь просматривает детальную отчетность за прошлый месяц
    Когда Пользователь заходит на страницу отчетности
    Тогда Пользователь убеждается о доступности отчетности за прошлый месяц

    # тест проходит корректно
  Сценарий: Пользователь добавляет свой проект в архив
    Когда Пользователь добавляет свой проект в архив
    Тогда Пользователь убеждается об успешном добавлении проекта в архив

    # тест проходит корректно
  Сценарий: Пользователь создает подряд
    Когда Пользователь создает подряд на странице с подрядами
      | Полное название   | Разработка планов      |
      | Короткое название | Новый план по проектув |
    Тогда пользователь видит созданный подряд в списке подрядчиков
# Сценарий проходит 2 раза
  Сценарий: Пользователь создает новый проект
    Когда Пользователь создает успешно новый проект
      | Название проекта      | Разработка планов     |
      | Описание              | Новый план по проекту |
      | Подрядчик/Исполнитель | asd                   |

 # тест проходит корректно
  Сценарий: Пользователь добавляет задачу в трекер задним числом
    Когда Пользователь создает задачу используя прошлый временной промежуток
      | Название         | Текст для названия задачи            |
      | Время начала     | 09:00                                |
      | Время конец      | 21:00                                |
      | Проект           | цу                                   |
      | Ссылка на задачу | https://hub.crtweb.ru/tracker        |
      | Описание задачи  | Автотестирование внутреннего трекера |
    Тогда Пользователь убеждается об успешном создании задачи

   # тест проходит корректно
  Сценарий: Пользователь ищет свою фамилию на странице пользователя
    Когда Пользователь заходит на страницу Пользователя и ищет свою фамилию
      | Фамилия | Абдуллаев |
    Тогда Пользователь убеждается об успешном нахождении данной фамилии

    # тест проходит корректно
    # Пользователь в роли менеджера, может один раз добавить к себе на проект пользователя(удалить не может)Нужна роль администратора.
  Сценарий: Пользователь добавляет менеджера в свой проект
    Когда Пользователь заходит в свой проект и добавляет туда менеджера
      | Добавление пользователей | Икрин Дмитрий |
    Тогда Пользователь убеждается об успешном добавлении менеджера в свой проект

   # тест проходит корректно
  Сценарий: Пользователь получает отчет по проекту за прошлый месяц
    Когда Пользователь заходит на страницу с проектами AlfaDirect и открывает отчет за прошлый месяц
    Тогда Пользователь убеждается об успешном просмотре отчета по проекту

# тест проходит корректно/тест удаляет конкретный проект.Потому как не все проекты доступны для удаления.xpath привязан к конкретному полю для удаления
  Сценарий: Пользователь удаляет подряд на странице Подрядчики
    Когда Пользователь заходит на страницу с подрядами и удаляет подряд
    Тогда Пользователь убеждается об успешном удалении подряда

# нужен скроилнг
  Сценарий: Пользователь редактирует информацию о подряде
    Когда Пользователь редактирует информацию о подрядчике
      | Добавление информации | ООО Creative |
    Тогда Пользователь убеждается об успешном редактировании информации о подрядчике




