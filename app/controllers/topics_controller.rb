class TopicsController < ApplicationController
  before_action :set_sub
  before_action :set_topic, only: [:show, :update, :destroy, :edit]

  # get 'subs/:sub_id/topics'
  # return topics for a given sub
  def index
    render component: "Topics", props: { sub: @sub, topics: @sub.topics }
  end

  # GET	/subs/:sub_id/topics/:id
  # show a single topics
  def show
    render component: "Topic", props: { topic: @topic }
  end

  # get '/subs/:sub_id/topics/new'
  # render form to create a new topic
  def new
    # in neo notes (not needed rails/erb thing)
    # what we really need here is the id of the sub
    # we would need @topic if we are doing error handling
    # @topic = @sub.topics.new
    render component: "NewTopic", props: { sub: @sub }
  end

  # post 'subs/:sub_id/topics'
  def create
    #create new topic in memory(not db)
    @topic = @sub.topics.new(topic_params)
    if (@topic.save)
      #these two are the same (takes us to topic show page)
      redirect_to [@sub, @topic]
      # redirect_to sub_topic_path(@sub, @topic)
    else
      #TODO ERROR HANDLING
    end
  end

  # get 'subs/:sub_id/topics/:id/edit'
  # return form to edit topic
  def edit
    render component: "EditTopic", props: { sub: @sub, topic: @topic }
  end

  # put/patch 'subs/:sub_id/topics/:id'
  # update topic
  def update
    if (@topic.update(topic_params))
      redirect_to [@sub, @topic]
    else
      #TODO ERROR HANDLING
    end
  end

  # DELETE	/subs/:sub_id/topics/:id
  # delete a single topic
  def destroy
    @topic.destroy
    redirect_to sub_topics_path(@sub)
  end

  private

  def topic_params
    params.require(:topic).permit(:name, :body)
  end

  def set_sub
    @sub = Sub.find(params[:sub_id])
  end

  def set_topic
    # this way is better, because it is only going to search
    # the given subs topics
    @topic = @sub.topics.find(params[:id])
    # also do it this way
    # @topic = Topic.find(params[:id])
  end
end
