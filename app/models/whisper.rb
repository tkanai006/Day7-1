class Whisper < ApplicationRecord
    validates :content, presence: true
end
