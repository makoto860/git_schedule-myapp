class Schedule9sController < ApplicationController
  def index
    @schedule9s = Schedule9.all
  end
  
  def new
    @schedule9 = Schedule9.new
  end
 
  def create
    @schedule9 = Schedule9.new(params.require(:schedule9).permit(:title, :first_date, :final_date, :all_day, :schedule_memo))
    
    if @schedule9.save
      
      flash[:notice] = "スケジュールを新規登録しました"
      redirect_to :schedule9s
    else
      render "new"
    end
  end
 
  def final_date_after_today
    @schedule9 = Schedule9.new(params.require(:schedule9).permit(:title, :first_date, :final_date, :all_day, :schedule_memo, :final_date_after_today))
    flash[:alert] = "スケジュールを新規登録できません"
  end
  
  
 
  def show
    @schedule9 = Schedule9.find(params[:id])
  end
 
  def edit
    @schedule9 = Schedule9.find(params[:id])
  end

  def update
    @schedule9 = Schedule9.find(params[:id])
    if @schedule9.update(params.require(:schedule9).permit(:title, :first_date, :final_date, :all_day, :schedule_memo))
      flash[:notice] = "ユーザーIDが「#{@schedule9.id}」の情報を更新しました"
      redirect_to :schedule9s
    else
      render "edit"
    end
  end
 
  def destroy
    @schedule9 = Schedule9.find(params[:id])
    @schedule9.destroy
    flash[:notice] = "スケジュールを削除しました"
    redirect_to :schedule9s
  end

  
end
