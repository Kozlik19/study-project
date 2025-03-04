# frozen_string_literal: true

# Создание комментариев
class Comment < ApplicationRecord
  include Visible

  belongs_to :article
end
