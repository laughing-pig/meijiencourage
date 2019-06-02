class Lineid < ApplicationRecord
  validates :name, presence: true
  validates :faculity, presence: true
  validates :lineid,presence: true
end
