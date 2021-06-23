class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions
  has_many :answers
  has_many :comments
  has_many :likes

  after_initialize :default_values

  private
  def default_values
    self.username = "user"+self.id.to_s
    self.introduction = "This person is lazy, he left nothing"

    case self.id
    when 1
      self.username = "Dobby"
      self.introduction = "Dobby is free."
    when 2
      self.username = "Albus Dumbledore"
      self.introduction = "It does not do well to dwell on dreams and forget to live."
    when 3
      self.username = "Stephen Curry"
      self.introduction = "Curries are the fulcrum of the Indian meal."
    when 4
      self.username = "Michael Jordan"
      self.introduction = "Talent wins games, but teamwork and intelligence wins championships."
    end

  end
  
  def default_values4
    self.username = "Michael Jordan"
    self.introduction = "Talent wins games, but teamwork and intelligence wins championships."
  end

  def default_values3
    self.username = "Stephen Curry"
    self.introduction = "Curries are the fulcrum of the Indian meal."
  end

  def default_values2
    self.username = "Albus Dumbledore"
    self.introduction = "It does not do well to dwell on dreams and forget to live."
  end

  def default_values1
    self.username = "Dobby"
    self.introduction = "Dobby is free."
  end

end
