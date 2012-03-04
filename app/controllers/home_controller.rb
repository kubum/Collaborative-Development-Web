class HomeController < ApplicationController
  def index
    
  end

  def about
  	@feedback = Feedback.new  	
  end

  def feedback_send
    @feedback = Feedback.new(params[:feedback].merge(:ip => request.remote_ip))

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to about_path, notice: 'Feedback was successfully created.' }
      else
        format.html { render action: "about" }
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
