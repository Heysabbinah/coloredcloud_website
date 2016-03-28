class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Merci pour votre message ! Je vous repond aussi tôt!'
    else
      flash.now[:error] = 'Erreur message'
      render :new
    end
    end
    end