class SayController < ApplicationController
  def hello
   @myvar = params[:message]
  end

  def goodbye
  end
  
  def test
    @mytest = "hello, Chris"
  end
end
