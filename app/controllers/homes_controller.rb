class HomesController < ApplicationController
  def new_guest
    # binding.pry
    # user = User.find_or_create_by!(email: 'guest@example.com', name: 'ゲストユーザー') do |user|
    #   # user.name = "ゲストユーザー"
    #   user.password = SecureRandom.urlsafe_base64
    #   # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    # end
    # sign_in user
    # redirect_to root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
end
