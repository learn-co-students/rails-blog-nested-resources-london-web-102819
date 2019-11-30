class CommentsController < ApplicationController

    def create
        @comment = Comment.new(c_params)

        if @comment.save
            redirect_to post_path(@comment.post)
        else
            render "posts/show"
        end

    end

    private

    def c_params
        params.require(:comment).permit(:content, :post_id)

    end
end
