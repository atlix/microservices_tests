# atlix_microservices
[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/atlix_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2018-09/atlix_microservices)

## Microservices repository. Otus DevOps.

<a name="hw12"></a>
## Homework 12 / Docker-1 / 
<a name="hw121"></a>
##### Main task
- Установлен Docker
- Выполнены базовые манипуляции с тестовыми образами
<a name="hw122"></a>
##### Additional task *
- docker-1.log внесено краткое описание отличий контейнера от образа

<a name="hw13"></a>
## Homework 12 / Docker-2 / 
<a name="hw131"></a>
##### Main task
- Создана VM с docker в GCP с использованием docker-machine
- Выполнены базовые взаимодействия с удаленным docker engine
- Разница вывода с --pid host заключается в наличии процессов хостовой машины, так как подключается pid namespace основного хоста
- Написан Dockerfile, устанавливающий приложение reddit в контейнер, загрузили его в docker hub
<a name="hw132"></a>
##### Additional task *
- Добавлена конфигурация для создания инстанса через terraform, куда с помощью ansible устанавливается docker и приложение; так же добавлен шаблон packer для создания образа с docker внутри.
```
#creating bucket and instance
cd docker-monolith/infra/terraform/ && terraform init && terraform apply
cd stage && terraform init && terraform apply
#installing docker and app
cd ../../ansible && ansible-playbook ./playbooks/main.yml
#backing image
cd ../packer && packer build -var-file=./variables.json docker.json
```

<a name="hw14"></a>
## Homework 14 / Docker-3 / 
<a name="hw141"></a>
##### Main task
- Созданы docker-образы микросервисов приложения Reddit
- Внесены небольшие правки в dockerfile comment и post сервисов в рамках best practiсes.
<a name="hw142"></a>
##### Additional task *
- Проведена оптимизация сборки docker-образа UI

<a name="hw15"></a>
## Homework 15 / Docker-4 / 
<a name="hw151"></a>
##### Main task
- Изучены принципы работы сетевых драйверов none, host, bridge
- Проведены эксперименты с работой контейнеров приложения в разных сетях
- Создан docker-compose файл, выполнена его параметризация

<a name="hw152"></a>
##### Additional task *
- Создан файл docker-compose.override.yml для работы с кодом приложения без необходимости пересборки образа

<a name="hw16"></a>
## Homework 16 / Gitlab CI / 
<a name="hw161"></a>
##### Main task
- Установлены и настроены Gitlab, gitlab runner
- Создан базовый пайплайн, добавлены тесты

<a name="hw162"></a>
##### Additional task *
- Создан dockerfile для образа, включащего в себя возможность автоматического разворачивания и регистрации gitlab runner
- Добавлен incoming webhook для уведомления из gitlab в персональный канал devops otus slack

<a name="hw17"></a>
## Homework 17 / Gitlab CI 2 / 
<a name="hw171"></a>
##### Main task
- Пайплайн расширен dev,stage,prod окружениями
- Настроено динамическое окружение для ревью бранчей (кроме мастера)

<a name="hw172"></a>
##### Additional task *
- Добавлена сборка образа приложения и деплой его в отдельное окружение на GCP VM + удаление VM кнопкой

<a name="hw18"></a>
## Homework 18 / Monitoring 1 / 
<a name="hw181"></a>
##### Main task
- Установлен Prometheus
- Собраны образы компонентов приложения reddit, node-exporter, prometheus
- Протестирован мониторинг состояния приложения, виртуальной машины

<a name="hw182"></a>
##### Additional task *
- Собран образ mongodb-exporter, добавлен мониторинг MongoDB

<a name="hw19"></a>
## Homework 19 / Monitoring 2 / 
<a name="hw191"></a>
##### Main task
- В стек мониторинга добавлены Grafana и Alertmanager
- Изучены базовые возможности создания графиков в Grafana, созданы тестовые дашборды с ментриками приложения
- Добавлен алертинг в персональный slack-канал
- https://hub.docker.com/u/vstaf

<a name="hw182"></a>
##### Additional task *
- 

<a name="hw19"></a>
## Homework 20 / Logging 1 / 
<a name="hw191"></a>
##### Main task
- Запустили EFK-стек для централизованного сбора логов приложений
- Протестировали парсинг логов с помощью регулярок и grok-паттернов
- Изучили базовые возможности трассировки приложения с помощью zipkin

<a name="hw192"></a>
##### Additional task *
- 
