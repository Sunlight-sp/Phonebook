class UserController < ApplicationController
  def index
    @tmp=User.all
    #@tmp = User.all.paginate(:page => params[:page], :per_page => 2)
    render json: @tmp
  end

  def show
    @Id=params[:id]
    @tmp=User.find(@Id)
    render json: @tmp
  end

  def create
    name_=params['name']
    mob_=params['mob']
    email_=params['email']

    @obj=User.new(name:name_, mob:mob_, email:email_)
    if @obj.save
      render json: @obj.id
    else
      render json: "Not valid"
    end
  end

  def update
      @user = User.find(params[:id])

      name_=params['name']
      mob_=params['mob']
      email_=params['email']

      if @user.update(name:name_, mob:mob_, email:email_)
        render json: @user
      else
        render json: "not updated"
      end

  end

  def delete
    @obj=User.find(params[:id])
    @obj.destroy
    render json: "Deleted"
  end

  def search
      query = params[:query]

      if query
        @users = User.search(query, :page => params['page'], :per_page => 2)
        # @users.paginate(:page => params[:page], :per_page => 2)
        # render json: query
        render json: @users
      else
        render json: "invalid query"
      end
  end


end
