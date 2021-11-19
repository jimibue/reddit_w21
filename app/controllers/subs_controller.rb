class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :destroy]
  # get '/subs'
  # return all subs

  def react_demo
    render component: "Demo"
  end

  def index
    render component: "Subs", props: { subs: Sub.all }
  end

  # get '/subs/new'
  # render a form for new sub
  def new
    render component: "NewSub"
  end

  # post '/subs'
  def create
    # sub = Sub.new(params.require(:sub).permit(:name))
    # create sub in memory
    # we a use a class method
    sub = Sub.new(sub_params)
    # try to save it to DB (will validation)
    if (sub.save)
      redirect_to subs_path
    else
      #TODO:  render our new form with sub(to show errors)
    end
  end

  # get '/subs/:id'
  def show
    # sub = Sub.find(params[:id])
    # render component: "Sub", props: { sub: @sub }
    render component: "Topics", props: { sub: @sub, topics: @sub.topics }
  end

  # get 'subs/:id/edit'
  def edit
    # sub = Sub.find(params[:id])
    # TODO: return form for editing Sub (want sub )
    render component: "EditSub", props: { sub: @sub }
  end

  #put/patch '/subs/:id'
  def update
    #TODO Update sub
    if (@sub.update(sub_params))
      redirect_to subs_path
    else
      #TODO: render our edit form with sub(to show errors)
    end
  end

  # delete 'subs/:id'
  def destroy
    # sub = Sub.find(params[:id])
    @sub.destroy
    redirect_to subs_path
  end

  # do this for now:  private means only visible to class
  private

  def sub_params
    params.require(:sub).permit(:name)
  end

  def set_sub
    @sub = Sub.find(params[:id])
  end
end
