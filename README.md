# RoR: JSON API для новостного сайта.

## Выполнено задание:

```

- Спроектировать БД.

- Реализовать API согласно ТЗ.

- Реализовать аутентификацию в АПИ.

- Выложить код в репозиторий на GitHub.

- Формат маршрутов для доступа к методам, а также формат ответа и запросов можете выбрать и реализовать сами.

```

## Условия выполнения.

### Новость Представляет собой объект новости и должен содержать следующую информацию:

```

- заголовок;

- анонс;

- текст;

- статус (опубликована, не опубликована).

```

### Пользователь Содержит в себе как минимум информацию о конкретном пользователе, а именно:

```

- email;

- пароль;

```

#### Функции пользователя:

```

- может создавать новость;

- может обновлять/удалять свою новость;

- может добавлять новость в избранное.

```

### Функции каталога.

```

- Взаимодействие с пользователем происходит посредством HTTP-запросов к API серверу.

- Все ответы представляют собой JSON объекты.

```

### Сервер реализует следующие методы:

```

- только аутентифицированный пользователь может создавать/обновлять новости;

- выдача всех новостей конкретного автора;

- выдача списка авторов;

- выдача списка новостей;

- показывать запрошенную новость;

- выдача всех непрочитанных пользователем новостей.

```

### Приложение завернуто в `docker` контейнер, запуск осуществляется:

Установиту докер локально. Склонируйте репозиторий:

```
git clone https://github.com/goodquietly/news_api.git
```

Находясь в папке с игрой cd askme, выполните команду:

```
docker-compose up
```

### Используемые технологии.

#### При выполнении задания использовались технологии:

```

- Ruby 3.0.1;

- Rails 7.0.3;

- БД Postgres;

- devise;

- devise-jwt;

- pundit;

- active_model_serializers;

- docker;

- docker-compose;

- postman.

```
