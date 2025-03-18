# frozen_string_literal: true

# Модуль контроллер спек помошник
module ControllerSpecHelpers
  def json_response
    JSON.parse(response.body).deep_symbolize_keys
  end
end
