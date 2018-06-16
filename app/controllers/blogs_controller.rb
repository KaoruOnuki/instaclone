class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :show, :update, :destroy]
  before_action :your_page, only: [:index, :new, :edit, :show, :destroy]
    def index
        @blogs = Blog.all
    end

    def new
      if params[:back]
        @blog = Blog.new(blog_params)
      else
        @blog = Blog.new
      end
    end

    def create
      set_current_user_in_blog
      respond_to do |format|
        if @blog.save
          BlogMailer.blog_mail(@blog).deliver
          format.html { redirect_to @blog, notice: "ブログ作成" }
          format.json { render :show, status: :created, location: @blog }
        else
          format.html { render :new }
          format.json { render json: @blog.errors, status: :unprocessable_entity }
        end
      end
    end

    def show
      @favorite = current_user.favorites.find_by(blog_id: @blog.id)
    end

    def edit
    end

    def update
      if @blog.update(blog_params)
        redirect_to blogs_path, notice: "ブログ編集"
      else
        render "edit"
      end
    end

    def destroy
      @blog.destroy
      redirect_to blogs_path, notice: "ブログ削除"
    end

    def confirm
      set_current_user_in_blog
      render :new if @blog.invalid?
    end

  private
    def blog_params
      params.require(:blog).permit(:title, :content, :image, :image_cache)
    end

    def set_blog
      @blog = Blog.find(params[:id])
    end

    def your_page
      unless logged_in?
        redirect_to new_session_path
      end
    end

    def set_current_user_in_blog
      @blog = current_user.blogs.new(blog_params)
    end
end
