# frozen_string_literal: true

# Основная запись приложения
class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def hello_world
    puts 'hello world'
  end
end
