class ChargesController < ApplicationController
	before_action :authenticate_user!
  
  def new
    @pelicula = params[:pelicula_name]
    @email = params[:user_email]
    @precio = params[:pelicula_precio]
  end


  def create
  @amount = params[:precio]
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
  current_user.payments.create(subscription: false, channel: 'stripe', amount: @amount)
  flash[:success] = t('flash.payment')
  render :new

	rescue Stripe::CardError => e
	flash[:error] = e.message
	redirect_to new_charge_path
  end
end
