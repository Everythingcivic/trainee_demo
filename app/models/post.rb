class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  
  field :title, type: String
  field :content, type: String
  field :is_active , type: Boolean
  
  has_mongoid_attached_file :picture,
  :styles => {
	 :thumb => "150x150",
     :small  => "200x200>",
     :medium => "300x300" }

   validates_attachment_content_type :picture, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
