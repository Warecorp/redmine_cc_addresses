RedmineApp::Application.routes.draw do
  match '/issues/:issue_id/cc_addresses/:action/:id', :controller => 'cc_addresses', via: [ :get, :post, :put, :delete ]
end
