class HomeController < ApplicationController
  def onlyAMother
  	@kitties = UglyKitty.all
  end

  def tempRedirect
  	redirect_to only_a_mother_path
  end
end
