require 'pry'
require 'csv'

class Gossip
  attr_reader :author, :content

  def initialize(author, content)
    @content = content
    @author = author
  end

  def self.all
    all_gossips = Array.new

    CSV.foreach ("./../db/gossip.csv") do |ligne|
      gossip_provisoire = Gossip.new(ligne[1], ligne[0])
      all_gossips << gossip_provisoire
    end
    return all_gossips
  end


  def save
    CSV.open("./../db/gossip.csv", "a+") do |csv|
      csv << [@content, @author]
    end

  end
  # binding.pry

end
