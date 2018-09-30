class Owner
  attr_accessor :owner, :cat, :dog, :fish, :fishes, :cats, :dogs, :pets
  attr_reader :species, :name

  @@all = []

  def initialize(owner)
    @owner = owner
    @species = owner
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.length
  end

  def self.species
    @species = species
  end

  def say_species
    "I am a #{self.species}."
  end

  def name=(name)
    @name=name
  end

  def pets
    @pets = {:cats => [], :dogs => [], :fishes => []}
  end

  def self.buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end

  def self.buy_cat
  end

  def self.buy_dog
  end

  def self.walk_dog
  end

  def self.play_with_cats
  end

  def self.feed_fish
  end

  def self.sell_pets
  end

  def self.list_pets
  end

end
