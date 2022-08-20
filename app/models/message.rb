class Message < ApplicationRecord
  after_create_commit -> { broadcast_append_to :messages, partial: "contact_us/message", locals: { message: self } }
end
