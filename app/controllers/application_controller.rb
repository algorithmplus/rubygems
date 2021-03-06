class ApplicationController < ActionController::Base
      before_action :authenticate_user!
      protect_from_forgery
      include Pundit
      rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
          
      
      before_action :set_global_variables, if: :user_signed_in?
      
      def set_global_variables
         @ransack_contracts = Contract.ransack(params[:contracts_search], search_key: :contracts_search) #navbar search
      end


 private

  def user_not_authorized #pundit
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end
end
