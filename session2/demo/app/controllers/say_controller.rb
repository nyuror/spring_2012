class SayController < ApplicationController
  def hello
    @message = params[:message]
    render "hello"
  end

  def goodbye
    
  end
end
