class Operator < ActiveRecord::Base
  self.table_name='admins'
  #  attr_accessor :password , :password_confirmation
  #attr_accessible :parent_id, :login_id, :nickname, :email, :password, :password_confirmation, :encrypted_password, :photo, :photo_cache, :flag, :address1, :address2, :tel1, :tel2, :company, :roles_admin_attributes
  validates_confirmation_of :password
  validates_length_of :password, :within => 4..40, :allow_blank=>true

  has_many :roles_admin, :foreign_key=>:admin_id
  has_many :role, :through=> :roles_admin

  accepts_nested_attributes_for :roles_admin

  def password=(pass)
    if pass.present?
      @password=pass
      admin = Admin.new(:login_id=>self.login_id, :password=>pass)
      self.encrypted_password=admin.encrypted_password
    else
      return nil
    end
  end
end
