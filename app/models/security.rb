class Security < ApplicationRecord
    has_many :quotations
    # def self.filter_security
    #     all
    #     .where("price > 0")
    #     .order("name")
    # end
end
