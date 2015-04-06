class Player < ActiveRecord::Base
  has_secure_password

  before_create :generate_token

  belongs_to :game
  has_many :scores
  has_many :games, through: :scores
  accepts_nested_attributes_for :scores, :games

  def generate_token
    return if token.present?

    begin
      self.token = SecureRandom.uuid.gsub(/\-/,'')
    end while self.class.exists?(token: token)
  end

end
