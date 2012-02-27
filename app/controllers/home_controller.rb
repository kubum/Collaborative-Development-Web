class HomeController < ApplicationController
  def index
    
  end

  def about
  	@feedback = Feedback.new  	
  end

  def create_feedback
    @feedback = Feedback.new(params[:feedback])

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to @feedback, notice: 'Feedback was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
  
  def single

  end

  def shop

  end

  def products

  end
end
