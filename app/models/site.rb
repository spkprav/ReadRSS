class Site
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :description,  type: String
  field :url, type: String
  field :content_tag, type: String

  has_many :site_datas
end
