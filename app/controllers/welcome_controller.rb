# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @messages = Message.order(:id)
  end
end
