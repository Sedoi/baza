class Product < ApplicationRecord
    validates :title, :presence => {:message => 'Хей! Здесь должно быть название товара!'}
    validates :description, :presence => {:message => 'Упс.. Мы же хотим понимать что это за товар ? '}
    validates_length_of :description,
                        :minimum   => 7,
                        :maximum   => 100,
                        :too_short => "должен содержать не менее %{count} символов !!!",
                        :too_long  => "должен содержать не более %{count} символов !!!"
end


