# frozen_string_literal: true

FactoryBot.define do
  factory :deal do
    id { '1' }
    title { 'title' }
    description { 'description' }
    status {'New'}
    created_at  { 1.years.ago }
    updated_at  { 1.years.ago }
  end
end