module Mine
  class PostsController < ApplicationController
    def new
      @post = current_user.posts.build
    end

    def create
      @post = current_user.posts.build(post_params)
      respond_to do |format|
        if @post.save
          format.html { redirect_to [@post.user, @post], notice: '投稿しました' }
        else
          format.html { render :new }
        end
      end
    end

    private

    def post_params
      params.require(:post).permit(:body)
    end
  end
end