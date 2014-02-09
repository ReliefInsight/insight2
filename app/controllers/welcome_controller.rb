class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: [:request_list, :add_request]
  def index
  end

  def request_list
    @request_list = RequestRelation.all
  end

  def add_request
    current_user.generate_request(request_params)
    respons = {title: current_user.name + '(' + current_user.address + ')',
               avatar: current_user.avatar_url,
               amount: current_user.request_relations.last.amount}
    render :json => respons.to_json
  end

  private
  def request_params
    params.permit(:amount)
  end
end
