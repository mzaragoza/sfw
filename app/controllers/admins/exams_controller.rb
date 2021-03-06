class Admins::ExamsController < AdminController
  expose(:exams){ Exam.order("id DESC").scoped{} }
  expose(:exam)
  expose(:girl){ 
    if params[:format] 
      girl = Girl.find(params[:format])
    else
      girl = exam.girl.id
    end
    girl
  }

  def create
    if exam.save
      flash[:notice] = t(:exam_was_successfully_created)
      redirect_to(admins_girl_path(exam.girl.id))
    else
      render :new
    end
  end

  def update
    if exam.save
      flash[:notice] = t(:exam_was_successfully_updated)
      redirect_to(admins_girl_path(exam.girl.id))
    else
      render :edit
    end
  end

end

