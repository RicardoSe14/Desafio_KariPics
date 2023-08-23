class Article < ApplicationRecord
has_many :reactions, dependent: :destroy
has_many :comments, dependent: :destroy
has_many :users, through: :reactions
has_many :users, through: :comments
has_many_attached :images

Kinds = %w[like dislike].freeze
KindsSpanish = {"like" => "❤️", "dislike" => "💔"}.freeze
end
