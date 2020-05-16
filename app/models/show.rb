class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  
  def build_network(x)
    network = Network.create(x)
    self.network_id = network.id
    binding.pry
  end
  
end