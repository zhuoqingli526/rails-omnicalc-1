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




  get("/dice/:number_of_dice/:number_of_sides", { :controller => "dice", :action =>"dynamic"} )



get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  @r = @apr/100/12
  @year = params.fetch("user_years").to_i
  @n = @year*12
  @pv = params.fetch("user_pv").to_f
  @numerator = @r * @pv
  @denumerator = 1 - (1+@r) ** -@n

  @payment_result = @numerator / @denumerator
  erb(:payment_result)
end
