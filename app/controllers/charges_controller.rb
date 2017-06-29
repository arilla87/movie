class ChargesController < ApplicationController
	before_action :authenticate_user!
  
  def new
    @pelicula = params[:pelicula_name]
    @email = params[:user_email]
    @precio = params[:pelicula_precio]
  end


  def create
  # Amount in cents
  @amount = @precio

  customer = Stripe::Customer.create(
  	:email => params[:stripeEmail],
  	:source  => params[:stripeToken]
  	)

  charge = Stripe::Charge.create(
  	:customer    => customer.id,
  	:amount      => @amount,
  	:description => 'Rails Stripe customer',
  	:currency    => 'eur'
  	)

	rescue Stripe::CardError => e
	flash[:error] = e.message
	redirect_to new_charge_path
  end
end
