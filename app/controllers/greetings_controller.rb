class GreetingsController < ApplicationController
  def random
    totalGreetings = Greeting.count
    id = rand(1..totalGreetings)
    @greeting = Greeting.find(id)
    render json: @greeting
  end
end
