class Api::V1::PostsController < Api::V1::BaseController
  def index
    posts = Post.all.page(page).per(per_page)

    render json: posts
  end

  def create
    post = Post.create!(post_params.merge(user: current_user))

    render json: post, links: link(post), serializer: Api::V1::StatusCreatedSerializer, status: :created
  end

  private

  def post_params
    params.require(:post).permit(:description)
  end

  def link(post)
    {self: api_v1_posts_url(post)}
  end
end
