class ShowCcAddressesHook < Redmine::Hook::ViewListener
  render_on :view_issues_show_description_bottom, :partial => "issues/cc_addresses", :if => :can_edit_cc_addresses?

private
  def protect_against_forgery?
    false
  end

  def can_edit_cc_addresses?(context)
    context[:project].module_enabled?('cc_addresses') and User.current.allowed_to?(:edit_cc_addresses, context[:project])
  end  
end
