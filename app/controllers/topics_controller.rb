class TopicsController < ApplicationController
  before_action :set_sub
  before_action :set_topic, only: [:show, :update, :destroy, :edit]

  # get 'subs/:sub_id/topics'
  # return topics for a given sub
  def index
    render component: "Topics", props: { sub: @sub, topics: @sub.topics }
  end

  private

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
