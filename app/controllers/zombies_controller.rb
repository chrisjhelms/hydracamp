class ZombiesController < ApplicationController
  def new
    @zombie = Zombie.new
  end
  
  def create
    @zombie = Zombie.create(params[:zombie])
    redirect_to zombies_path, :notice=>"Zombie Added"
  end
  
  def index
    @zombies = Zombie.order(:name)
  end
  
end
