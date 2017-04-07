class CommentsController < ApplicationController
    http_basic_authenticate_with name: "dhh", password: "rahul", only: :destroy
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end

  def edit
     @article = Article.find(params[:article_id])
     @comment = Comment.find(params[:id])
  end

 def destroy
    #@article = Article.find(params[:id])
    #@comment = @article.comments.find(params[:article_id])
    @article = Article.find(params[:article_id])
     @comment = Comment.find(params[:id])
    @comment.destroy
    #redirect_to article_path(@article)
    redirect_to article_path(@article)

  end

  def update
     @article = Article.find(params[:article_id])
     @comment = Comment.find(params[:id])
     if @comment.update(comment_params)
      flash[:notice] = "Comment Updated"

   redirect_to article_path(@article)
     else
      render 'edit'
   end
  end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end