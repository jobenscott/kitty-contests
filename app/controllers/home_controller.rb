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
  		ugly_kitty.save!
  	elsif ugly_kitty.votes.excludes?(address)
  		ugly_kitty.votes << address
  		ugly_kitty.save!
  	end

  	respond_to do |format|
  		format.js {
  			render json: { vote_count: ugly_kitty.votes.count }
  		}
  	end
  end
end
