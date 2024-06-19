up:: [[C++]]
tags:: 

# CMake

Команды для управления проектом

```
cmake_minimum_required(VERSION) - указывает минимальную версию CMake для проекта
project(NAME) - определяет имя проекта

add_executable(NAME SOURCES) - создает исполняемый файл из указанных исходных файлов

add_library(NAME TYPE SOURCES) - создает библиотеку определенного типа (STATIC, SHARED, MODULE)

add_subdirectory(SOURCE_DIR) - добавляет поддиректрию в проект для организации более крупных проектов

include_directories(DIRS) - указывает директории, которые будут добавлены в пути поиска заголовочных файлов

target_link_libraries(TARGET LIBRARIES) - определяет библиотеки, к которым должен быть привязан целевой объект

target_include_directories(TARGET SCOPE DIRS) - указывает директории с заголовочными файлами для конкретной цели
```

Команды для управления параметрами сборки

```
set(VARIABLE VALUE)

option(NAME DESCRIPTION)
```