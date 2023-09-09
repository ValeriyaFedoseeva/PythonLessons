# Вопросы

## Python

### 1 Определите понятие модуля в контексте Python и аргументируйте преимущества его использования.

    Модулем в Питоне называется отделльный файл с кодом который работает в рамках Питоновского проекта, и может быть использован в различных программах. 
    В модуле можно описать несколько функций,классов или переменных, к кторым другая программа может неоднократно обращаться при правильной загрузке модуля в программу.

    Модуль помогает локонично организовать код. Вместо того чтобы писать длинный код в одном файле, его можно разбить на несколько файлов и просто обращаться к нужному элементу кода.
    Это облегчает процесс чтения и правки кода.

### 2 Поясните назначение типов данных в Python и их влияние на работу программы.

    В Питоне есть несколько типов данных:
    1 Числа int - целые числа, float -числа с плавающей точкой и слложные числа (complex).
    2 Строки str - символоы, заключенные в одинарные или двойные кавычки.
    3 Списки list- это упорядоченная коллекция элементов произвольных типов. 
    4 Словари dict - набор пар ключ-значение. 
    5 Boolean - значения True или False.

    Благодаря типам данных, Python может правильно интерпретировать код и предотвращать ошибки. (Пример недопустить умножения str на str)

### 3 Изложите принципы структурирования кода (классы, функции и т.д.) на отдельные блоки и обоснуйте их необходимость.

    Код лучше и проще структурировать для локаничной работы программы. Это важный принцип программирования, направленный на улучшение читаемости, 
    расширяемости и сопровождаемости кода. Это осуществляется за счет разделения кода на классы или функции.

    Класс - это пользовательский тип данных, инкапсулирующий данные и методы, которые манипулируют этими данными.
    Классы позволяют создавать объекты со значениями свойств и методов/функций, определенных в классе. Это обеспечивает реализацию принципов объекто орриентированного программирования таких как наследование.

    Функция- это блок кода,выполняющий определенную задачу.Они могут принимать параметры и возвращать значения. Функции упрощают чтениек ода, уменьшают его дублированиеи делают код более модульным.

### 4 Опишите смысл команд: pass, return, continue, break, yield в языке Python.

    В Питоне есть набор ключевых команд pass, return, continue, break, yield.
    * Pass - оператор-заместитель,полезный для создания синтаксически корректного,но ничего не выполняющего кода.
    * Return - спользуется для завершения выполнения функции и возвращает результат.
    * Continue - можно использовать для пропуска части цикла, в которой активно внешнее условие, и позволяет выполнить остальную часть цикла.
    * Break - используется для преждевременного выхода из цикла. 
    * Yield - используется в функциях-генераторах для создания повторяющихся последовательностей.

### 5 Охарактеризуйте понятие "класс" в Python и аргументируйте их преимущества перед функциями. 

    Класс-это шаблон или описание объекта, который может содержать переменные и функции. 
          Когда вы создаете объект класса, он наследует переменные и функции класса и может настраиваться в соответствии с конкретными потребностями автора.

     преимущества перед функциями:
        - Классы позволяют группировать данные ифункции,связанныес этимиданными.Это помогает сделать код более организованным и понятным, особенно при работе с большими и сложными проектами.
        - Классы поддерживают наследование, что позволяет создавать новые классы на основе существующих. Это позволяет повторно использовать код или создавать модернизированную/персонализированную версию класса.
        - Классы могут хранить состояние объекта в его атрибутах. Это удобно, когда требуется создать объекты с уникальными свойствами и потом получить к ним доступ в любом месте.


### 6 Проиллюстрируйте свое понимание декораторов и генераторов в Python.





### 7 Опишите, каким образом можно узнать имя любого атрибута ноды (которое подходит для программирования).
    Узнать имя любого атрибута ноды можно при помощи команды cmds.listAttr()

```python
import maya.cmds as cmds

node = 'Object'

    
def get_attr(node):
    attr = cmds.listAttr(node)
    return attr

attr = get_attr(node)
print(attr)

```

### 8 Опишите известные вам способы узнать информацию (координаты, смежные компоненты и т.д.) о любом компоненте объекта (его вершина, ребро и т.д.).

*1* Можно воспользоваться командой cmds.xform() чтобы узнать координаты конкретного компонента.

```python
    import maya.cmds as cmds

cmds.select('pCube1.vtx[3]')
vtx_pos = cmds.xform(query=True, translation=True)
print(vtx_pos)

```


*2* Можно вернуть информацию о Bounding Box объекта при помощи команды cmds.xform:

```python

    import maya.cmds as cmds

cmds.select('pCube1')
bb = cmds.xform(query=True, boundingBox=True)
print(bb)   

```

*3* Более продвинутый способ решить эту задачу будет с использованием Open Maya.

### 9 Что такое DAG нода и почему в outliner не DAG ноды скрыты по умолчанию?

    DAG нода является звеном в иерархии и представляет собой отношения "родитель-ребенок" всех звеньев, составляющих объект в Maya. 
    Допустим в любом объекте полигона есть нода transform и shape когда мы совершаем манипуляции с изменением формы объекта то работаем 
    нодой shape а если нужно произвести маниполяции с тем где эта нода находится в сцене то это выполняется через ноду transform.

### 10 Изложите последовательность действий при создании Python проекта для Maya и его интеграции в среду Maya.

    В папке \[Имя Пользователя]\Documents\maya\scripts
    нужно создать папку проекта, внутри должен присутствовать файл __init__.py чтобы эта папка воспринималась как проект программы на Python.

### 11 Что такое OpenMaya, и зачем его используют вместо Maya.cmds ?

    OpenMaya - это набор библиотек для программирования и расширения Maya. OpenMaya предоставляет разработчикам набор инструментов для работы с ядром Maya, 
                что позволяет создавать плагины, ноды и более сложные программы.


### 12 Сравните PySide интерфейс с Maya.Cmds интерфейсом, выделив их преимущества и недостатки.

    Интерфейс на Maya.cmds возможно более прост в понимании новичку так как есть огромное колличество понятной документации на сайте разработчка, в то время как
    PySide может новичку показаться немного сложным к восприятию плюс отсутствие понятной документации для Питон версии тоже не помогает. Так же если программист
    пока еще не знаком с классами, делать UI на PySide может быть сложным. Есть программы которые позволяют графически делать дизайн на PySide но это не очень 
    поможет если не разобраться с классами. В таких случаях UI на Maya.cmds гораздо проще.

    Но, в тоже время UI на Maya.cmds менее универсален и не очень локоничен в плане кода. PySide предоставляет широкие возможности для создания сложных и настраиваемых пользовательских интерфейсов. 
    Вы можете создавать окна, виджеты и диалоги с высокой степенью настройки.



### 13 Определите понятие "виджет" в контексте пользовательского интерфейса.

    Виджет это элемент UI котрый позволяет взаимодействовать с программой. То есть это может быть кнопка, чекбокс, сладер или текстовое поле.

### 14 Описать взаимосвязь между QWidget и другими виджетами.

    Все виджеты PySide являются производными от класса QWidget или его подклассов.

### 15 Раскройте значение Signal в контексте виджета и его функциональное назначение.

    "Signal" - это способ для передачи уведомлений от одного виджета - другому. 
    Когда пользователь нажимает кнопку виджет отдает сигнал, который другие объекты могут получить и выполнять определенные действия. 
    Например, при нажатии кнопки сигнал "clicked" будет отдан сигнал функции (методу) в коде который отвечает за создание модели приметива (куба, сферы и т.д.)


### 16 Поясните понятие Event у виджета и его роль в контексте пользовательского интерфейса.

    "Event" это действие внутри виджета, которое может быть зафиксировано и обработано программой. Такие как поменять курсор при нажатии на кнопку или 
    визуальная смена виджета при перемещением из одного окра в другое. Все зато задает команда event.

# Практика

## Задание 1

Разработайте программный код, предназначенный для выявления слова с максимальной длиной из предоставленного набора. Реализуйте функцию, способную принимать переменное число аргументов (слов для анализа). Следуйте предложенному ниже шаблону.


```python
def find_max_word(*words):
    max_length = 0
    mad_word = ""

    for word in words:
        if len(word) > max_length:
            max_length = len(word)
            max_word = word

    return max_word

max_word = find_max_word("pineapple", "polynomial", "equation")
print(max_word)



```

## Задание 2
У вас есть список my_list с разным набором слов. Также имеется словарь my_dict с категориями fruit (фрукты) и vegetables (овощи). Задача - заменить в списке my_list все овощи и фрукты на альтернативные из словаря (в соответствии с их принадлежностью определенной категории). Причем фрукт/овощь не может быть заменен на такой же (например если вы замените apple на apple - это будет не правильно)

Например, список ['apple', 'tomato', 'car'], должен быть заменен на нечто вроде ['blueberry', 'potato', 'car']. Обратите внимание что car ни на что не заменилось, т.к. не относится ни к одной из категорий словаря myDict.


```python
import random

my_dict = {"fruit": ["apple", "blueberry", "pineapple"], "vegetable": ["broccoli", "potato", "tomato"]}
my_list = ["maya", "apple", "potato", "blueberry", "laptop", "icecream", "tomato", "candy"]


def new_list(word_list, word_dict):
    for i in range(len(word_list)):
        word = word_list[i]
        if word in word_dict["fruit"] and len(word_dict["fruit"]) > 1:
            while True:
                replacement = random.choice(word_dict["fruit"])
                if replacement != word:
                    break
            word_list[i] = replacement
        elif word in word_dict["vegetable"] and len(word_dict["vegetable"]) > 1:
            while True:
                replacement = random.choice(word_dict["vegetable"])
                if replacement != word:
                    break
            word_list[i] = replacement


new_list(my_list, my_dict)

print(my_list)
```


## Задание 3
Используя любой из известных вам методов, найдите все элементы в списке, удовлетворяющие следующим условиям:

* Первая буква должна быть заглавной, за которой следует нижнее подчеркивание
* Где-то в середине слова должно присутствовать одно из трех car, или bus, или truck
* Заканчиваться слово должно подчеркиванием и тремя любыми цифрами.
* Например: A_super_bus_driver_001 или B_sport_car_091

```python
import re

my_list = [
    "A_super_bus_driver_001",
    "B_sport_boat_091",
    "C_big_truck_123",
    "d_small_car_456",
    "E_fast_bus_789",
    "F_blue_car_99",
    "G_red_truck333",
]

pattern = r'^[A-Z]_(.*_(car|bus|truck)_\d{3})$' 

'''
[A-Z] matches any uppercase letter.
_ matches the underscore character.
(.*_(car|bus|truck)_\d{3}) captures a group that * matches any character (except newline) zero or more times.
(car|bus|truck) matches either "car", "bus", or "truck".
\d{3} matches exactly three digits.
'''

for item in my_list:
     if re.match(pattern, item):
          print(item)

```


## Задание 4

В Outliner у вас имеется определенная иерархия объектов (См. пример ниже).

Группа objects является скрытой (соответственно все объекты внутри тоже). Все локаторы (loc_inst_##) расположены где-то в сцене, имеют различные координаты, вращение, масштабы. Ваша задача - заменить эти локаторы на объекты из группы objects. Объекты из этой группы должны быть выбраны для каждого локатора случайно. Замена должна произойти либо копиями объектов из группы (оригиналы остаются в скрытой группе), либо самими оригиналами (при этом количество локаторов и объектов должно совпадать - нужно будет это проверить). Заметьте что локаторы могут находиться либо в корне в Outliner, либо в какой-то группе.

ver 2
```python 

import maya.cmds as cmds
import random

scene = cmds.ls(dag=True)

loc = []
mesh = []

for obj in scene:
    if cmds.objectType(obj) == "locator":
        o = cmds.listRelatives(obj, parent=True)
        loc.append(o)

for obj in scene:
    if cmds.objectType(obj) == "mesh" or cmds.objectType(obj) == "nurbsSurface":
        o = cmds.listRelatives(obj, parent=True)
        mesh.append(o)

# Shuffle the mesh list after populating it
random.shuffle(mesh)

def place_obj():
    for l, m in zip(loc, mesh):
        parent_of_locator = cmds.listRelatives(l, parent=True)
        mesh_top_node = cmds.listRelatives(m[0], parent=True)

        loc_t = cmds.xform(l, q=True, t=True, ws=True)
        loc_r = cmds.xform(l, q=True, ro=True, ws=True)
        new_obj = cmds.duplicate(m)

        # Check if new_obj is already a child of 'world'
        if not cmds.listRelatives(new_obj, parent=True):
            cmds.parent(new_obj, world=True)

        cmds.setAttr(new_obj[0] + '.translateX', loc_t[0])
        cmds.setAttr(new_obj[0] + '.translateY', loc_t[1])
        cmds.setAttr(new_obj[0] + '.translateZ', loc_t[2])

        if parent_of_locator is None:
            cmds.parent(new_obj, world=True)
        else:
            cmds.parent(new_obj, parent_of_locator)

        cmds.parent(l, mesh_top_node)

# Call the function to place objects
place_obj()


```


ver 1
```python
import maya.cmds as cmds
import random

scene = cmds.ls(dag=True)

loc = []
mesh = []

for obj in scene:
    if cmds.objectType(obj) == "locator":
        o = cmds.listRelatives(obj, parent=True)
        loc.append(o)

for obj in scene:
    if cmds.objectType(obj) == "mesh":
        o = cmds.listRelatives(obj, parent=True)
        mesh.append(o)

    if cmds.objectType(obj) == "nurbsSurface":
        o = cmds.listRelatives(obj, parent=True)
        mesh.append(o)

# Shuffle the mesh list after populating it
random.shuffle(mesh)

parent_of_locator = None  # Initialize parent_of_locator variable here

if len(loc) == len(mesh) > 0:
    for l, m in zip(loc, mesh):
        new_obj = cmds.duplicate(m)[0]
        cmds.parent(new_obj, world=True)
        
        # Get the parent node for the mesh
        mesh_top_node = cmds.listRelatives(m[0], parent=True)
        if parent_of_locator is None:

            pass
        else:
            cmds.parent(new_obj, parent_of_locator)
        
        parent_of_locator = cmds.listRelatives(l, parent=True)

        if parent_of_locator:
            loc_trans = cmds.xform(parent_of_locator[0], q=True, t=True, ws=True)
            loc_rot = cmds.xform(parent_of_locator[0], q=True, ro=True, ws=True)
            cmds.xform(new_obj, t=loc_trans, ro=loc_rot)
        cmds.parent(l, mesh_top_node)

else:
    cmds.warning("Objects don't match. Make sure that the number of locators matches the number of mesh objects in the scene.")

```

## Задание 5

Имеется некая геометрическая поверхность в сцене. Вам необходимо написать скрипт, который расположит другие выделенные объекты (сферы или локаторы, неважно) на поверхности текущего объекта в рандомных позициях. Используйте любой известный вам метод. Если объекты при расположении на поверхности будут пересекаться с поверхностью - это нормально, т.к. пивоты объектов обычно находятся в центре их геометрии. Иные способы расположения будет намного труднее реализовать, так что делать этого не надо.




## Задание 6

Создайте диалоговое окно
* В этом окне два кастомных виджета
* Эти два виджета должны быть экземплярами одного и того же класса. Они должны быть подсвечены так, чтобы они выделялись на фоне диалогового окна.
* Задача - при клике мышью на одном виджете другой виджет должен поменять цвет на рандомный.

```python
import maya.cmds as cmds
import random
from PySide2 import QtCore, QtGui, QtWidgets

class base_btn(QtWidgets.QWidget):
    def __init__(self, parent=None, label="Test"):
        super(base_btn, self).__init__()
        self.setFixedSize(250, 60)
        self.setAutoFillBackground(True)
        self.p = self.palette()
        self.p.setColor(self.backgroundRole(), QtGui.QColor(100, 100, 100))
        self.setPalette(self.p)
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setContentsMargins(2, 2, 2, 2)
        self.setLayout(self.main_layout)
        self.label = QtWidgets.QLabel(label)
        self.main_layout.addWidget(self.label)

class button_A(base_btn):
    def __init__(self, other_button, label="Test"):
        super(button_A, self).__init__(label=label)
        self.other_button = other_button

    def mousePressEvent(self, event):
        super(button_A, self).mousePressEvent(event)
        self.other_button.setRandomBackgroundColor()

class button_B(base_btn):
    def __init__(self, label="Test"):
        super(button_B, self).__init__(label=label)

    def setRandomBackgroundColor(self):
        red = random.randint(0, 255)
        green = random.randint(0, 255)
        blue = random.randint(0, 255)
        color = "#{:02x}{:02x}{:02x}".format(red, green, blue)
        self.setStyleSheet("background-color: {};".format(color))




class ToolSet(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super(ToolSet, self).__init__()
        self.setWindowFlags(QtCore.Qt.WindowStaysOnTopHint)
        self.setup_ui()

    def setup_ui(self):
        self.setWindowTitle("My Window")
        self.setObjectName("MyWindowID")
        self.setMinimumSize(260, 150)
        self.main_layout = QtWidgets.QVBoxLayout()
        self.main_layout.setAlignment(QtCore.Qt.AlignTop)
        self.main_layout.setContentsMargins(3, 3, 3, 3)
        self.main_layout.setSpacing(5)
        self.setLayout(self.main_layout)
        self.btn_layout = QtWidgets.QVBoxLayout()
        self.main_layout.addLayout(self.btn_layout)


        button_b = button_B(label="Button B")
        button_a = button_A(other_button=button_b, label="Button A")

        
        self.btn_layout.addWidget(button_a)
        self.btn_layout.addWidget(button_b)

def main():
    if cmds.window("MyWindowID", exists=True):
        cmds.deleteUI("MyWindowID", window=True)

    if cmds.windowPref("MyWindowID", exists=True):
        cmds.windowPref("MyWindowID", remove=True)

    global myUI
    myUI = ToolSet()
    myUI.show()

main()


```