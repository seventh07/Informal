class Informalidade < ActiveRecord::Base
  belongs_to :prestador
  belongs_to :cliente
end
