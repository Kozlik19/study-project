class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def hello_world
    puts 'hello world'
  end
end
