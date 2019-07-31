class ComentsController < ApplicationController

    def index    
        post = Post.find(params[:id])
        @comments = post.coments
    end 

    def create
        post = Post.find(params[:post_id])
        post.coments.build(coment_params).save
        redirect_to posts_path(post)
    end

    def destroy 
        @post = posts.find(params[:id])
        @comment = @post.coments.find(params[:id])
        @coment.destroy
        redirect_to posts_path(@post)
    end

    private
        def coment_params
            params.require(:coment).permit(:post_id, :comenter, :body)
        end
end
