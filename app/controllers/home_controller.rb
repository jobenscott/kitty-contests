class HomeController < ApplicationController
  def onlyAMother
  	
  	@kitties = UglyKitty.all.sort_by { |a| !a.votes.nil? ? a.votes.count : 0 }

  	@kitties = @kitties.reverse

  end
  def tempRedirect
  	redirect_to only_a_mother_path
  end

  def ugly_kitty
  	@kitty = UglyKitty.find_by_kitty_id(params[:id])
  	@questions = UglyKittyQuestion.all
  	puts @kitty.q_a
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
#  ks.each do |k|
# 2.6.0 :004 >     if k.votes.nil?
# 2.6.0 :005?>     puts k.kitty_name
# 2.6.0 :006?>     k.votes = Array.new
# 2.6.0 :007?>     k.save!
# 2.6.0 :008?>     end
# 2.6.0 :009?>   end
