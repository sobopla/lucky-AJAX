get '/' do
  erb :index
end


# TODO: convert this route to use AJAX
post '/rolls' do
  @die = Die.new(params[:sides].to_i)

  erb :index  # HINT: what does this do? what should we do instead?
end

# 1. What happens when you click the "Roll the Die" button?
# when first load page it loads normal index / 
# at that point die is not defined 
# theres no variable die yet - not defined 

# every time you roll the die with submit, 
# it creates a new n sided die
# with a certain number of sides (in post)
# When it renders the page, it displays the new die roll value

# 2. What should happen instead?
# create a new n sided die still , but just display the new
# result