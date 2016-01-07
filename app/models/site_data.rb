class SiteData
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :url,  type: String
  field :content, type: String
  field :author, type: String
  field :unique_id, type: String
  field :published, type: DateTime

  belongs_to :site
end
