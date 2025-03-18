# frozen_string_literal: true

# Создание модуля помошника спек контроллеру
module ControllerSpecHelpers
  def json_response
    JSON.parse(response.body).deep_symbolize_keys
  end
end
