class User < ApplicationRecord
  validates :username, presence: true, format:{ with:/\A[\w\-]+\z/ },
                       uniqueness: true
  validates :email, presence: true, format: { with: /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/i },
                    uniqueness: { case_sensitive: false}
  validates :password, presence: true, length: { minimum: 8, maximum: 20 },
                      format: { with: /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z\d$@$!%*?&]{8,}/ } #at least 1 number, one small letter, one capital letter
end
