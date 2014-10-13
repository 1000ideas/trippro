module ApplicationHelper
  def nav_link(link_text, link_path)
    class_name = current_page?(link_path) ? "navbold" : ""
    link_to link_text, link_path, class: class_name
  end

  def content(id)
    # cache ['mcontent', id, Content.order('created_at').last] do
      if Content.where(id: id).exists?
        Content.where(id: id).first.value.html_safe
      else
        Content
          .where("`id` LIKE ?", "#{id}-%")
          .order('id')
          .map(&:value)
          .join
          .html_safe
      end
    # end
  end

  def month_name(no)
    Date::MONTHNAMES[no]
  end
end
