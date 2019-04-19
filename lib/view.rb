


class View

  def initialize
  end

  def create_gossip
    puts  "Quel est votre potin ?"
    potin = gets.chomp
    puts "Vous êtes qui ?"
    auteur = gets.chomp

    return params = {content: potin, author: auteur}
  end

  def index_gossips(gossips)
    gossips.each do |potin|
      puts "Contenu du potin : #{potin.content}"
      puts "De #{potin.author}"
    end
  end
end
