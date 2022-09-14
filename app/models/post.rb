class Post < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    belongs_to :user
    has_many :comments, dependent: :destroy

    has_rich_text :body
    has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy

    has_noticed_notifications model_name: "Notification"
    has_many :notifications, through: :user
end
