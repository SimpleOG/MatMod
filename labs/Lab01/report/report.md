---
## Front matter
title: "Отчет по лабораторной работе 1"
author: "Гаглоев Олег Мелорович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# **Цель работы**

Создание репозитория курса на основе шаблона.Управление GitHub с помощью консоли

# **Задание**
1. Скопировать Репозиторий с GitHub 
2. Настроить управление репозиторием
3. Провести установку необходимых для работы репозитория программ


# **Теоретическое введение**
Мы будем использовать репозиторий с GitHub. Для выполнения отчета мы будем использовать markdown

# **Выполнение лабораторной работы**

1. Открываем профиль в GitHub
  

![рис1](image/1.png){#fig:001 width=40%}

2. Теперь перехожу по ссылке в нужный профиль и создаю репозиторий на основе данного

![рис2](image/2.png){#fig:001 width=40%}

3. Скачаю необходимые компоненты
![рис3](image/3.png)

![рис4](image/4.png)

![рис5](image/5.png)

4. Создадим ключ ssh для удаленного контроля репозитория

![рис6](image/6.png)

5. Запустим сервис ssh agent

![рис7](image/7.png)

6. Применим ssh ключ

![рис8](image/8.png)

7. Скачаем репозиторий с ГитХаба в созданную папку

![рис9](image/9.png)

![рис10](image/10.png)

8. Запустим make , чтобы выполнить содержимое файла makefile
![рис11](image/11.png)

9. Скачаем дополнительные файлы, чтобы все заработало

Во время установки texlive произошла куча ошибок,поэтому установить не получилось

![рис12](image/12.png)

![рис13](image/13.png)

![рис14](image/14.png)

10. Загрузим изменения обратно на ГитХаб

![рис15](image/15.png)

![рис16](image/16.png)

![рис17](image/17.png)

# **Выводы**

Я смог создать и настроить репозиторий на основе шаблона.

# **Список литературы**
