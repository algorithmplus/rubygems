class ApplicationController < ActionController::Base
      before_action :authenticate_user!
      before_action :set_global_variables, if: :user_signed_in?
  def set_global_variables
    @ransack_contracts = Contract.ransack(params[:contracts_search], search_key: :contracts_search) #navbar search
  end
end
