class UsersController < ApplicationController
    before_action :set_article, only: [:edit, :update, :show, :destroy]
    
    def index
        @users=User.all
    end
    
    def new
        @user=User.new
    end
    
    def edit
            
    end
    
    def update
            
        if @user.update(user_params)
            flash[:notice] =  "User successfully updated"
            redirect_to user_path(@user)
        else
            render 'edit'
        end
    end
    
    def create
        #render plain: params[:article].inspect 
        #@article=Article.new(article_params)
        #@article.save
        #redirect_to article_path(@article)

        
        @user=User.new(user_params)
        #@article.user = User.first
        if @user.save
            flash[:notice] = "User successfully created"
            redirect_to article_path(@user)
        else
            render 'new'
        end 
    end
    
    def show
            
    end

    def destroy
        
        @user.destroy
        flash[:notice] = "User successfully destroyed"
        redirect_to users_path
    end

    private
    def set_article
        @user=User.find(params[:id])
    end
    def user_params
        params.require(:user).permit(:username,:email,:password)
    end
end