# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    created_at  { 1.years.ago }
    updated_at  { 1.years.ago }
    email { 'name@example.com' }
    password { '123456' }
  end
end