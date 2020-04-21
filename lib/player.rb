# Classe player

class Player
  attr_accessor :name, :life_points

  # initailisation de la classe avec pv et nom du joueur
  def initialize(player_name)
    @name = player_name
    @life_points = 10
  end

  # Affiche l'état des joueurs
  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end 

  def gets_damage(damage)
    @life_points -= damage    # inflige des dommages
    if @life_points <= 0      # vérifie sur PV sont à 0
      puts "#{@name} a été tué !"   # si PV = 0, j'informe
    end
  end

  def attacks(player)
    puts "#{@name} attaque #{player.name} !"   # un joueur lance une attaque
    damage = compute_damage
    puts "Il lui inflige #{damage} points de degats." # calcul les dommages et affiche le résultat
    player.gets_damage(damage)
  end

  def compute_damage
    return rand(1..6)
  end

end

class HumanPlayer < Player    # héritage de la classe Player
  attr_accessor :weapon_level

  def initialize(player_name)
    @weapon_level = 1
    
    super
    @life_points = 100

  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie et une arme de niveau #{@weapon_level}" 
  end 

  def compute_damage
    rand(1..6) * @weapon_level
  end

  def search_weapon
    weapon_level = rand(1..6) # lancr de dé sera égal au niveau de la nouvelle arme trouvée.
    puts "Tu as trouvé une arme de niveau #{weapon_level}"
    if weapon_level > @weapon_level
      @weapon_level = weapon_level
      puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
    else
      puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end

  def search_health_pack
    pv = rand(1..6)
    if pv == 1
      puts "Tu n'as rien trouvé... " 
    end
    if (pv > 1) && (pv < 6)
      puts "Bravo, tu as trouvé un pack de +50 points de vie !"
      @life_points = @life_points + 50
      if @life_points>100
        @life_points = 100
      end
    end
    if pv == 6
      puts "Waow, tu as trouvé un pack de +80 points de vie !"
      @life_points = @life_points + 80
      if @life_points>100 
        @life_points = 100 
      end
    end
  end

end

