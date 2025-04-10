# frozen_string_literal: true

class Account < ApplicationRecord
  include Rodauth::Rails.model

  has_many :posts, dependent: :destroy
  has_one :profile, dependent: :destroy

  enum :status, { unverified: 1, verified: 2, closed: 3 }
end
