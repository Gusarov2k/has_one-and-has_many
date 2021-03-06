class Image < ActiveRecord::Base
# Для модели Image фактически не существует никаких связанных пользователей или
# товаров. Модель думает, что она связана с неким абстрактным объектом, носящим имя
# imageable
# — то есть "способный иметь изображения". Обычно полиморфные ассоциации
# так и называют, добавляя в конец слова суффикс -able. Например, если бы мы делали
# полиморфную ассоциацию для модели Comment (комментарий) и захотели бы сделать
# возможным комментирование не только товаров в магазине, но и новостей, то мы назвали
# бы такую ассоциациию commentable .
	belongs_to :imageable, polymorphic: true
end
