class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index] #이 컨트롤러에선 로그인 필요 없게

  def index
  end
end
