---
## Front matter
lang: ru-RU
title: Лабораторная работа №4
subtitle: Модель гармонических колебаний
author:
  - Гаглоев Олег Мелорович.
institute:
  - Российский университет дружбы народов, Москва, Россия
date: 4 марта 2023

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---

# Информация

## Докладчик

  * Гаглоев Олег Мелорович
  * студент уч. группы НПИбд-01-20
  * Российский университет дружбы народов
  * [1032201347@pfur.ru](mailto:1032201347@rudn.ru)
  * <https://github.com/SimpleOG?tab=repositories>

# Вводная часть

## Актуальность

- Математика всегда полезна для ума

## Объект и предмет исследования

- Модель гармонических колебаний
- Языки для моделирования:
  - Julia
  - OpenModelica

## Цели и задачи

- Построить фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для трех случаев:
  - Колебания гармонического осциллятора без затуханий и без действий внешней силы
  - Колебания гармонического осциллятора c затуханием и без действий внешней силы
  - Колебания гармонического осциллятора c затуханием и под действием внешней силы
- Выполнить задачу на заданном интервале

## Материалы и методы

- Языки для моделирования:
  - Julia
  - OpenModelica

# Выполнение работы

## Теория

$$
\ddot x(t) + a\dot x(t) + bx = F(t)
$$ 
$$
\begin{aligned}
y = \frac{dx}{dt} = \dot x(t)
\\
\frac{d^2x}{dt^2} = \frac{dy}{dt}
\\
\frac{dy}{dt} + ay(t) + bx(t) = 0
\end{aligned}
$$ 
$$
\begin{cases}
  \frac{dx}{dt} = y
  \\
  \frac{dy}{dt} = -ay - bx
\end{cases}
$$ 

## Условие модели №1

- Колебания гармонического осциллятора без затуханий и без действий внешней силы 

$$
\ddot x +21x=0
$$

## Теория модели №1

Общий вид первого случая: $\ddot x + wx = 0$, где $w = \omega^2_0 = 21$.

Тогда система ОДУ первого порядка для решения задачи:

$$
\begin{cases}
  \dot x = y
  \\
  \dot y = -21x
\end{cases}
$$ 

## Условие модели №2

- Колебания гармонического осциллятора c затуханием и без действий внешней силы 

$$
\ddot x + \dot 2.2x +2.3x = 0
$$

## Теория модели №2

Общий вид второго случая: $\ddot x + gy + wx = 0$, где $g = 2.2\gamma = 1$ и $w = \omega^2_0 = 2.3$.

Тогда система ОДУ первого порядка для решения задачи:

$$
\begin{cases}
  \dot x = y
  \\
  \dot y = -2.2y -2.3x
\end{cases}
$$

## Условие модели №3

- Колебания гармонического осциллятора c затуханием и под действием внешней силы $\ddot x + \dot 2.4x +2.5x = 0.2\sin(2.6t)$

## Теория модели №3

Общий вид третьего случая: $\ddot x + gy + wx = F(t)$, где $g = 2\gamma = 2.4$, $w = \omega^2_0 = 2.5$ и $F(t) = 0.2\sin(2.6t)$.

Тогда система ОДУ первого порядка для решения задачи:

$$
\begin{cases}
  \dot x = y
  \\
  \dot y = 0.2\sin(2.6t) -2.4y -2.5x
\end{cases}
$$ 

## Код на Julia

:::::::::::::: {.columns align=center}
::: {.column width="30%"}
![](image/%D0%9A%D0%BE%D0%B41%D0%94%D0%B6%D1%83%D0%BB%D0%B8%D1%8F.png)
:::
::: {.column width="30%"}

![](image/%D0%9A%D0%BE%D0%B42%D0%94%D0%B6%D1%83%D0%BB%D0%B8%D1%8F.png)

:::
::: {.column width="30%"}

![](image/%D0%9A%D0%BE%D0%B43%20%D0%94%D0%B6%D1%83%D0%BB%D0%B8%D1%8F.png)
:::
::::::::::::::

## Код на OpenModelica

:::::::::::::: {.columns align=center}
::: {.column width="30%"}

![](image/%D0%9A%D0%BE%D0%B41%D0%9C%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D0%BA%D0%B0.png)

:::
::: {.column width="30%"}

![](image/%D0%9A%D0%BE%D0%B42%D0%9C%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D0%BA%D0%B0.png)

:::
::: {.column width="30%"}

![](image/%D0%9A%D0%BE%D0%B43%D0%9C%D0%BE%D0%B4%D0%B5%D0%BB%D0%B8%D0%BA%D0%B0.png)

:::
::::::::::::::

## Графики Julia - случай 1

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/first_case_julia.png)

:::
::: {.column width="50%"}

![](image/faze_first_case_julia.png)

:::
::::::::::::::

## Графики OpenModelica - случай 1

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/First_case_modelica.png)

:::
::: {.column width="50%"}

![](image/faze_first_case_modelica.png)

:::
::::::::::::::


## Графики Julia - случай 2

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/second_case_julia.png)

:::
::: {.column width="50%"}

![](image/faze_second_case_julia.png)

:::
::::::::::::::

## Графики OpenModelica - случай 2

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/second_case_modelica.png)

:::
::: {.column width="50%"}

![](image/faze_second_case_modelica.png)

:::
::::::::::::::

## Графики Julia - случай 3

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/third_case_julia.png)

:::
::: {.column width="50%"}

![](image/faze_third_case_julia.png)

:::
::::::::::::::

## Графики OpenModelica - случай 3

:::::::::::::: {.columns align=center}
::: {.column width="50%"}

![](image/third_case_modelica.png)

:::
::: {.column width="50%"}

![](image/faze_third_case_modelica.png)

:::
::::::::::::::



# Результаты работы

- Мы построили фазовый портрет гармонического осциллятора и решение уравнения
гармонического осциллятора для трех случаев:
  - Колебания гармонического осциллятора без затуханий и без действий внешней силы
  - Колебания гармонического осциллятора c затуханием и без действий внешней силы
  - Колебания гармонического осциллятора c затуханием и под действием внешней силы
- Выполнили задачу на заданном интервале

# Вывод

Я создал модель гармонический колебаний по средствам языков Julia и OpenModelica.

[def]: https://github.com/SimpleOG?tab=repositories