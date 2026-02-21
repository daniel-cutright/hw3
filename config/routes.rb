Rails.application.routes.draw do
  root({:controller => "places", :action => "index"})
  resources "places"
  resources "entries"
end
