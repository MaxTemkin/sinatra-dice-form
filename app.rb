require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/process_roll/:dice/:sides") do

  @num_dice = params.fetch("dice").to_i
  @num_sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    roll = rand(1..@num_sides)
    @rolls.push(roll)
  end

  erb(:rollresult)

end

get("/process_roll") do

  @num_dice = params.fetch("dice").to_i
  @num_sides = params.fetch("sides").to_i

  @rolls = []

  @num_dice.times do
    roll = rand(1..@num_sides)
    @rolls.push(roll)
  end

  erb(:rollresult)

end
