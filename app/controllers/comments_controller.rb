class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(params[:comment])
    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Comment was successfully created.'
        format.js  {
          render :update do |page|
            page.replace_html 'comments', :partial => @post.comments
            page.visual_effect :highlight, 'comments'
          end
        }

      else
        format.js  {
          render :update do |page|
            page.replace_html 'comments', 'Something wrong happened o comment creation'
            page.visual_effect :highlight, 'comments'
          end
        }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      format.js  {
        render :update do |page|
          page.remove 'comment_' + params[:id]
        end
      }
    end
  end
end
