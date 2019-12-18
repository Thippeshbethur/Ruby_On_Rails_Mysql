class LoginsController < ApplicationController
    def index
        @logins = Login.all
    end
    def new
        @logins = Login.new
    end
    def edit
        @logins = Login.find(params[:id])
    end
    def create
        @logins = Login.new(params.permit(:loginname, :password))
        if @logins.save
            redirect_to @logins
        else
            render 'new'
        end
    end
    
    def update            
        
    end
    def show
        @logins = Login.find(params[:id])
    end
    def destroy
        
      end
    private
    def article_params
        
    end
end
