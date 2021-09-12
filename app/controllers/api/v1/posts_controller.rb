class Api::V1::PostsController < Api::V1::BaseController
  def index
    p "ù"*60
    p current_user
    p "ù"*60
    posts = Post.all
    render json: posts, each_serializer: Api::PostSerializer
  end
end
