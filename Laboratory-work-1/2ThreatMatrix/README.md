### Заповнення матриці реалізації загроз

#### Таблиця 1.3 – Матриця реалізації загроз

| Компоненти інформаційної системи              | Загроза порушення конфіденційності                 | Загроза порушення цілісності                      | Загроза порушення доступності                      |
|-----------------------------------------------|---------------------------------------------------|--------------------------------------------------|----------------------------------------------------|
| **Апаратне забезпечення**                     |                                                   |                                                  |                                                    |
| - Серверне апаратне забезпечення              | - (Немає особливих конфіденційних даних)           | + (Фізичне пошкодження або саботаж)               | + (Можливі збої через апаратні несправності)        |
| - Робочі станції користувачів                 | - (Не зберігають конфіденційні дані)               | - (Дані не змінюються локально)                   | + (Можливі збої обладнання)                        |
| - Камера для збору даних жестів               | - (Не містить конфіденційних даних)                | + (Можливе спотворення даних або помилки)         | + (Несправність камери вплине на доступність)       |
| **Програмне забезпечення**                    |                                                   |                                                  |                                                    |
| - Системне ПЗ (ОС, СУБД)                      | + (Можливий несанкціонований доступ до системи)    | + (Шкідливе ПЗ може вплинути на роботу системи)    | + (Збої системи можуть порушити доступність)        |
| - Прикладне ПЗ (система розпізнавання жестів) | + (Можливий несанкціонований доступ до моделей)    | + (Можлива модифікація або фальсифікація даних)   | + (Недоступність через помилки ПЗ або збої)         |
| **Дані**                                      |                                                   |                                                  |                                                    |
| - Моделі нейронних мереж                      | + (Можливий несанкціонований доступ до моделей)    | + (Зміна моделей може вплинути на результати)     | + (Невірна модель або збій моделі може вплинути на доступність) |
| - Жести, розпізнані системою                  | - (Розпізнані жести не є конфіденційними даними)   | + (Можливе спотворення або маніпуляція даними)    | + (Збої можуть зробити жести недоступними)         |
| **Комунікаційні канали**                      |                                                   |                                                  |                                                    |
| - Відеопотік між камерою та сервером          | + (Можливий перехоплення відео з камери)           | - (Малоймовірне спотворення відео)                | + (Збої зв'язку вплинуть на передачу відео)         |
| - Інтернет-з'єднання для доступу до системи   | + (Можливий перехоплення даних)                    | + (Можлива зміна або фальсифікація сесій)         | + (Недоступність через збої мережі)                |