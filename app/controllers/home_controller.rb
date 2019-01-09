class HomeController < ApplicationController
  before_action :common_content, :only => [:index, :team]
  
  def common_content
    @hero_name = Faker::Superhero.name
    @hero_power = Faker::Superhero.power
    @hero_prefix = Faker::Superhero.prefix
    @corp_power = Faker::Company.bs
    @corp_power = @corp_power.titleize
    @origins = Faker::Nation.nationality
    
    @ran_num = rand(1..1000)
    
    @set_num = rand(1..2)
    @bg = rand(1..2)
    
    #Randomly pick an avatar set
    if @set_num == 1
      @set = "set1"
    else 
      @set = "set2"
    end
    
    #Randomly pick an background set
    if @bg == 1
      @back = "bg1"
    else 
      @back = "bg2"
    end
    @avatar = Faker::Avatar.image(@ran_num, "300x300", "png", @set, @back)
  end
  
  
  def index
  end
  
  def team
    @team_number = params[:team_number].to_i
  end
  
  
  
end
