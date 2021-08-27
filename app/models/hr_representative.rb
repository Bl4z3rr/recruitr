# frozen_string_literal: true

class HrRepresentative < ApplicationRecord
    validates :name, presence: true
    validates :surname, presence: true
    validates :email, presence: true
end
