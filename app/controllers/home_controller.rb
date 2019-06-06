class HomeController < ApplicationController
  def onlyAMother
  	@kitties = UglyKitty.order('votes')
  end

  def tempRedirect
  	redirect_to only_a_mother_path
  end


  def kitty_vote
  	kitty_id = params[:kitty_id]
  	address = params[:address]
  	ugly_kitty = UglyKitty.find_by_kitty_id(kitty_id)

  	if ugly_kitty.votes.nil?
  		ugly_kitty.votes = []
  		ugly_kitty.votes << address
  	elsif ugly_kitty.votes.exclude?(address)
  		ugly_kitty.votes << address
  	else 
  		puts 'what'
  	end

  	if ugly_kitty.save!
  		puts "yo yo"
	  	respond_to do |format|
	  		format.js {
	  			render json: { vote_count: ugly_kitty.votes.count }
	  		}
	  	end
	end
  end
end
