class SayController < ApplicationController
  require 'functions'
  def hello
    
    @myvar =  Myclass.find(2).name
  end

  def goodbye
  end
end
