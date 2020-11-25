class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    @contracts = Contract.all.limit(3)
    @latest_contracts = Contract.all.limit(3).order(created_at: :desc)
  end
end


