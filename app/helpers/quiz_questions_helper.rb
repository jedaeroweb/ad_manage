module QuizQuestionsHelper
  def list_param(lparam)
    lparam[:controller]=nil
    lparam[:action]=nil
    lparam[:id]=nil    
    lparam[:quizzes_id]=nil
    
    return lparam
  end
end
