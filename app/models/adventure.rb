class Adventure < ActiveRecord::Base
  has_many :pages
  belongs_to :library

  accepts_nested_attributes_for :pages

  before_save :generate_guid

  def generate_guid
     self.guid = SecureRandom.urlsafe_base64(10)
  end
end
