class LoginController < ApplicationController
  layout "login"
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
      redirect_to login_path
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
  
  def admin_login
  end
  
  def create_admin_session
    admin = Admin.find_by(email: params[:email], password: params[:password])
    
    if admin.present?
      flash[:notice] = "You are signed in as admin successfully"
      session[:admin_id] = admin.id
      redirect_to admins_path
    else
      flash[:alert] = "Email and passwords is incorrect"
      redirect_to action: :admin_login
    end
  end

  def destroy_admin_session
    session[:admin_id] = nil
    flash[:notice] = "You are signed out successfully"
    redirect_to action: :admin_login
  end
  
  def teacher_login
  end
  
  def create_teacher_session
    teacher = Teacher.find_by(email: params[:email], password: params[:password])
    
    if teacher.present?
      flash[:notice] = "You are signed in as teacher successfully"
      session[:teacher_id] = teacher.id
      redirect_to teachers_path
    else
      flash[:alert] = "Email and passwords is incorrect"
      redirect_to action: :teacher_login
    end
  end

  def destroy_teacher_session
    session[:teacher_id] = nil
    flash[:notice] = "You are signed out successfully"
    redirect_to action: :teacher_login
  end
  
  def parent_login
  end
  
  def create_parent_session
    parent = Parent.find_by(email: params[:email], password: params[:password])
    
    if parent.present?
      flash[:notice] = "You are signed in as parent successfully"
      session[:parent_id] = parent.id
      session[:parent_name] = parent.name
      session[:parent_student_id] = parent.student_id
      redirect_to main_page_index_path
    else
      flash[:alert] = "Email and passwords is incorrect"
      redirect_to action: :parent_login
    end
  end

  def destroy_parent_session
    session[:parent_id] = nil
    flash[:notice] = "You are signed out successfully"
    redirect_to action: :parent_login
  end
end
