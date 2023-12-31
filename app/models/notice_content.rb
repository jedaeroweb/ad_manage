class NoticeContent < ActiveRecord::Base
  # attr_accessible :id, :content
  validates_presence_of :content
  belongs_to :notice, :foreign_key => :id, :autosave=>true
  accepts_nested_attributes_for :notice, :allow_destroy => true
end
