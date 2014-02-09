class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: [:request_list, :add_request]
  def index
  end

  def request_list
    @request_list = RequestRelation.all
  end

  def add_request
    current_user.generate_request(request_params)
  end

  private
  def request_params
    params.permit(:amount)
  end
end
