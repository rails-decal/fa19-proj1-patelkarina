class Pokemon < ApplicationRecord
  belongs_to :trainer
  belongs_to :trainer, optional: true
  validates :name, uniqueness: true, presence:true
  validates :ndex, presence: true
end
