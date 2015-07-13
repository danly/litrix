class User < ActiveRecord::Base
  has_secure_password

  validates :birthdate, :timeliness => {:on_or_before => lambda { Date.current }, :type => :date}

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end
  
end
