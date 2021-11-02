class Widget < ApplicationRecord

    validates :name, presence: true, length: { in: 4..15}
    # , numericality: { only_string: true}

end
