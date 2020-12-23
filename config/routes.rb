RedmineApp::Application.routes.draw do
  match 'issues/:issue_id/cc_addresses/:action/:id', :controller => 'cc_addresses', :via => [:get, :post]
  post 'issues/:issue_id/cc_addresses/destroy/:id', :to => 'cc_addresses#destroy'
  post 'issues/:issue_id/cc_addresses/create/:id', :to => 'cc_addresses#create'
end
