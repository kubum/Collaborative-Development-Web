class FeedbackController < ApplicationController
  def create
    @feedback = Feedback.new(params[:feedback])

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to about_path, notice: 'Feedback was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end
end
