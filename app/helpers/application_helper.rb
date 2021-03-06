module ApplicationHelper
  def form_group_tag(errors, &block)
    css_class = 'form-group'
    css_class << 'has_error' if errors.any?
    #  the content_tag helper method is called. This method is used to build the HTML and CSS to display the form element and any associated errors
    content_tag :div, capture(&block), class: css_class
  end

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=48"
  end
end
