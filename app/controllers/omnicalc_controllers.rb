class OmnicalcController < ApplicationController
  def homepage
    render({ :template => "omnicalc_templates/homepage"})
  end

  def square_form

    render({ :template => "omnicalc_templates/square_form"})
  end

  def square_result

    @number = params.fetch("number")
    @result = @number.to_f ** 2

    render({ :template => "omnicalc_templates/square_result"})
    
  def square_root_form

    render({ :template => "omnicalc_templates/square_root_form"})

  def square_root_result

    @number = params.fetch("number")
    @result = Math.sqrt(@number.to_f)

    render({ :template => "omnicalc_templates/square_root_result"})
  
  def random_form

    render({ :template => "omnicalc_templates/random_form"}
  
  def random_result

    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @random_result = rand(@min..@max)

    render({ :template => "omnicalc_templates/random_result"}

  def payment_form

    render({ :template => "omnicalc_templates/payment_form"}

  def payment_result

    @apr = params.fetch("user_apr").to_f
    @r = @apr/100/12
    @year = params.fetch("user_years").to_i
    @n = @year*12
    @pv = params.fetch("user_pv").to_f
    @numerator = @r * @pv
    @denumerator = 1 - (1+@r) ** -@n
  
    @payment_result = @numerator / @denumerator

    render({ :template => "omnicalc_templates/payment_result"}
end
