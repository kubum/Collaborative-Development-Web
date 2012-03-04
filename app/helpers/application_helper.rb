module ApplicationHelper
  def show_message(notice = nil)
    content_tag("div", notice, { :class => "notice" }) unless notice.nil?
  end
end
