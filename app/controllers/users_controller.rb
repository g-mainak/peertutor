class UsersController < ApplicationController
  def index
    @users = User.where(seen: false).order(:created_at)
    @topics = @users.map(&:topic).uniq
    @colors = %w(  
  darkgreen   darkkhaki darkmagenta darkolivegreen darkorange darkorchid  
  darkred   darksalmon    darkseagreen    darkslateblue 
  darkslategray darkturquoise   darkviolet  deeppink  
  deepskyblue   dimgray   dodgerblue  firebrick   floralwhite   forestgreen 
  fuchsia  gainsboro   ghostwhite    gold  
  goldenrod   gray    green   greenyellow 
  honeydew    hotpink   indianred indigo  
  ivory   khaki   lavender  lavenderblush 
  lawngreen   lemonchiffon    lightblue lightcoral  
  lightcyan   lightgoldenrodyellow    lightgray)
  end

  def new
    @user = User.new
    @topics = User.all.map(&:topic).uniq
  end

  def create
    @user = User.create(user_params)
    redirect_to users_path
  end

  def admin_list
    @users = User.where(seen: false).order(:created_at)
  end

  def destroy
    User.find(params[:id]).update_attribute(:seen, 'true')
    redirect_to admin_list_users_path
  end

  private
    def user_params
      params.require(:user).permit( :name, :topic, :posx, :posy)
    end

    
end
