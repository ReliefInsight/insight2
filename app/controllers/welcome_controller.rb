class WelcomeController < ApplicationController
  before_filter :authenticate_user!, only: [:request_list]
  def index
  end

  def request_list
    @request_list = RequestRelation.all
  end
end
