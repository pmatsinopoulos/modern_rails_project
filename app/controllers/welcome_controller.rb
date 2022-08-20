class WelcomeController < ApplicationController
  def index
    @messages = Message.order(:id)
  end
end
