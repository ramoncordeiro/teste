class Usuario < ApplicationRecord
  belongs_to :localizacao
  has_one :iventario
end
