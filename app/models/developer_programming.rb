class DeveloperProgramming < ApplicationRecord
  belongs_to :developer
  belongs_to :programming_language
end
