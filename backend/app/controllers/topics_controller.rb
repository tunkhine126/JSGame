class TopicsController  < ApplicationController

  def index 
    topics = Topic.all
    render json: TopicSerializer.new(topics)
  end

  def show
    topic = Topic.find_by(id: params[:id])
    render json: TopicSerializer.new(topic)
  end 
  
end