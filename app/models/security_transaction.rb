class SecurityTransaction < ApplicationRecord
  belongs_to :security
  belongs_to :fund
end
