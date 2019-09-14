class StaticPagesController < ApplicationController
  def home
    @posts = ButterCMS::Post.all
  end

  def about
  end

  def donate
  end

  def contact
  end

  def programs
    @posts = ButterCMS::Post.all
  end
  
  def schools
  end
  
  def privacy
  end
  
  def resources
  end
  
  def thanks
  end
  
  def recruitment
  end
end
