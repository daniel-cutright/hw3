Rails.application.routes.draw do
  get("/places", {:controller => "places", :action => "index"})

  resources "entries"
end
