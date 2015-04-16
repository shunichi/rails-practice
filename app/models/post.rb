class Post < ActiveRecord::Base
  belongs_to :user

  def title
    self.body.lines.reject(&:blank?).first.try(:gsub, /\A#+\s*/, '')
  end
end
