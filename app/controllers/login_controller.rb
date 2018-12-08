class LoginController < ApplicationController
   def new
  end 
  
  def create
    licensee = Licensee.find_by(email: params[:email], password: params[:password])
    
    if licensee.present?
      flash[:notice] = "You are signed in successfully"
      session[:licensee_id] = licensee.id
      session[:licensee_name] = licensee.name
      session[:licensee_branch_id] = licensee.branch.id
      session[:licensee_branch_name] = licensee.branch.name
      redirect_to main_page_index_path
    else
      flash[:alert] = "Email and password is incorrect"
      redirect_to action: :new
    end
  end
  
  def destroy
    session[:licensee_id] = nil
    session[:licensee_name] = nil
    session[:licensee_branch_id] = nil
    session[:licensee_branch_name] = nil
    flash[:notice] = "You are signed out successfully"
    redirect_to login_path
  end
end
