class ProgrammingLanguage < ApplicationRecord
  has_many :developer_programmings, dependent: :destroy
  has_many :developer, through: :developer_programmings
end
