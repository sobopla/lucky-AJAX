get '/' do
	# @die = Die.new(1) this would be better to go here then we wouldn't have to put the dom structure in the ajax done block handler. Just keep the damn die set to ONE EVERY TIME YOU LOAD!!!!!
	erb :index
end


# TODO: convert this route to use AJAX
post '/rolls' do

	@die = Die.new(params[:sides].to_i)

	if request.xhr? #would you only roll here and take out in the erb?
		@die.roll.to_s
	else

  erb :index  # HINT: what does this do? what should we do instead?
end
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