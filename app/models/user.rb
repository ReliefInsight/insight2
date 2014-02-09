class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :request_relations

  def generate_request request_params
    request_relations.create(amount: request_params[:amount], request_at: Time.now)
  end
end
