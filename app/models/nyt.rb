class Nyt < OpenStruct
    
  def self.service
    @service ||= NytService.new
  end

  def self.lists
    new(service.time_best_seller).results[:lists]
  end

  def self.images
    pics = self.lists.map do  |image|
      image[:list_image]
    end
    pics.uniq!
  end

end