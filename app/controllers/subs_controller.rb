class SubsController < ApplicationController
  # get '/subs'
  def index
    # TODO: display all subs, get all subs

    # RENDER Component
    render component: "Subs"
  end

  # get '/subs/new'
  def new
    # TODO return form to create new sub
    render component: "NewSub"
  end

  # post '/subs'
  def create
    #TODO: Create a new sub
  end

  # get '/subs/:id'
  def show
    # display a specific sub
    render component: "Sub"
  end

  # get 'subs/:id/edit'
  def edit
    # TODO: return form for editing User
    render component: "EditSub"
  end

  #put/patch '/subs/:id'
  def update
    #TODO Update sub
  end

  # delete 'subs/:id'
  def destroy
    #TODO delete a specific sub
  end
end
