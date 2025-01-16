# frozen_string_literal: true

# Основная почтовая программа
class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end
