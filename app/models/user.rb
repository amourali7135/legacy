class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :badhabitlist, dependent: :destroy
  has_many :badhabits, through: :badhabitlist, dependent: :destroy
  has_one :bucketlist, dependent: :destroy
  has_many :bucketlistitems, through: :bucketlist, dependent: :destroy
  has_one :careergoallist, dependent: :destroy
  has_many :careergoals, through: :careergoallist, dependent: :destroy
  has_one :currentlegacy, dependent: :destroy
  has_one :currentlegacydisconnect, through: :currentlegacy, dependent: :destroy
  has_one :travellist, dependent: :destroy
  has_many :traveldestinations, through: :travellist, dependent: :destroy
  has_one :dreamlegacy, dependent: :destroy
  has_many :dreamlegacysteps, through: :dreamlegacy, dependent: :destroy
  has_one :financialgoallist, dependent: :destroy
  has_many :financialgoals, through: :financialgoallist, dependent: :destroy
  has_one :futureregretlist, dependent: :destroy
  has_many :futureregrets, through: :futureregretlist, dependent: :destroy
  has_one :peoplemissed, dependent: :destroy
  has_many :persons, through: :peoplemissed, dependent: :destroy
  has_one :careergoallist, dependent: :destroy
  has_many :careergoals, through: :careergoallist, dependent: :destroy
  has_one :familygoallist, dependent: :destroy
  has_many :familygoals, through: :familygoallist, dependent: :destroy
  has_one :publicgoallist, dependent: :destroy
  has_many :publicgoals, through: :publicgoallist, dependent: :destroy
  has_one :purpose, dependent: :destroy
  has_one :dreamlifelist, dependent: :destroy
  has_many :dreamlifecomponents, through: :dreamlifelist, dependent: :destroy
  has_one :healthgoallist, dependent: :destroy
  has_many :healthgoals, through: :healthgoallist, dependent: :destroy
  has_one :endgame, dependent: :destroy
  has_one :dreamlifelist, dependent: :destroy
  has_many :dreamlifecomponents, through: :dreamlifelist, dependent: :destroy
  has_one :mistakeslist, dependent: :destroy
  has_many :mistakes, through: :mistakeslist, dependent: :destroy
  has_one :gratefullist, dependent: :destroy
  has_many :gratefulfors, through: :gratefullist, dependent: :destroy
  has_one :traumalist, dependent: :destroy
  has_many :traumas, through: :traumalist, dependent: :destroy

  
end
