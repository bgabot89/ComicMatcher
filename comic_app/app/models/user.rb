class User < ActiveRecord::Base
	has_many :writings
	has_many :drawings, :dependent => :destroy
  validates :email, uniqueness: true
  validates :email, presence: true
  validates :username, uniqueness: true
  validates :username, presence: true

	has_secure_password

	def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

has_attached_file :avatar,
  :styles => { :medium => "250x200>", :thumb => "125x125#" },
  :default_url => "/images/default.jpg"

  validates_attachment :avatar,
                       :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] },
                       :size => { :in => 0..1000.kilobytes }
end
