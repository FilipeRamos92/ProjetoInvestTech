class AssetTransaction < ApplicationRecord
  belongs_to :asset
  belongs_to :fund
end
