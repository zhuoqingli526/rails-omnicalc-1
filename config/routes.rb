Rails.application.routes.draw do
  get("/", { :controller => "omnicalc", :action => "homepage"})

  get("/square/new", { :controller => "omnicalc", :action => "square_form"})
  
  get("/square/results", { :controller => "omnicalc", :action => "square_result"})

  get("/square_root/new", { :controller => "omnicalc", :action => "square_root_form"})

  get("/square_root/results", { :controller => "omnicalc", :action => "square_root_result"})

  get("/random/new", { :controller => "omnicalc", :action => "random_form"})

  get("/random/results", { :controller => "omnicalc", :action => "random_result"})

  get("/payment/new", { :controller => "omnicalc", :action => "payment_form"})

  get("/payment/results", { :controller => "omnicalc", :action => "payment_result"})
end
