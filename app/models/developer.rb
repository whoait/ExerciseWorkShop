class Developer < ApplicationRecord
  has_many :developer_programmings, dependent: :destroy
  has_many :programming_language, through: :developer_programmings
end
