$:.unshift File.expand_path("./../", __FILE__)
require 'gossip'
require 'view'
require 'pry'
class Controller

  def initialize
  @view = View.new
end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    #pour le moment, le contenu de ce gossip est inscrit "en dur" dans le code. L'utilisateur ne peut pas le changer.

    gossip.save
  end
def index_gossips
  gossip = Gossip.all
  @view.index_gossips (gossip)


end

binding.pry

end
