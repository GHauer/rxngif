Rxngif::Application.routes.draw do
  get("/picture_details/:id", { :controller => "pictures", :action => "show" })
end

  get("/all_pictures", { :controller => "pictures", :action => "index" })
