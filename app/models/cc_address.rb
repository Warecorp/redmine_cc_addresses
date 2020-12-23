class CcAddress < ActiveRecord::Base
  belongs_to :issue
  validates_presence_of :mail
  validates_format_of :mail, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :mail, :uniqueness => { :scope => :issue_id, :message => 'must be unique per issue' }
end
