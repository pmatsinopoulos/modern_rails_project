# frozen_string_literal: true

class ContactUsController < ApplicationController
  def new
    @message = Message.new
  end

  def index; end

  # rubocop: disable Metrics/MethodLength, Rails/I18nLocaleTexts
  def create
    @message = Message.new(message_params)
    if @message.save
      respond_to do |format|
        format.turbo_stream do
          render turbo_stream: turbo_stream.append(:messages, partial: 'contact_us/message',
                                                              locals: { message: @message })
        end
      end
    else
      flash[:error] = 'Cannot save message'
      redirect_to welcome_path
    end
  end
  # rubocop: enable Metrics/MethodLength, Rails/I18nLocaleTexts

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
