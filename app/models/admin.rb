class Admin < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable, :timeoutable
  # attr_accessible :parent_id, :login_id, :nickname, :email, :password, :password_confirmation, :photo, :photo_cache, :flag, :address1, :address2, :tel1, :tel2, :company
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates_uniqueness_of :email
  validates_length_of :name, within: 1..60
  validates_length_of :email, within: 4..150
  validates_length_of :password, within: 5..255

  has_one :admin_picture, dependent: :destroy
  has_one :role_admin
  has_one :role, through: :role_admin
  has_many :admin_login_log, dependent: :destroy
  accepts_nested_attributes_for :admin_picture, allow_destroy: true

  def role?(role)
    unless self.role.present?
      return false
    end

    if self.role.role==role.to_s
      return true
    else
      return false
    end
  end

  def timeout_in
    1.day
  end
end
