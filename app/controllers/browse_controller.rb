class BrowseController < ApplicationController

  def browse
    @users = Account.where.not(id: current_account.id)
  end

  def approve
    # user swipes right
    logger.debug "User id for matching is #{params[:id]}"

    # create like for user
  end

  def decline
    # user swipes left
  end

end
