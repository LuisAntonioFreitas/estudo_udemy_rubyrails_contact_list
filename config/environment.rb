# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Impede que mensagens de erro atrapalhem o CSS nos formulários
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    html_tag.html_safe
end