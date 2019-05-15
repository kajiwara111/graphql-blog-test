module BlogTrainsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_blog_trains_path
    elsif action_name == 'edit'
      blog_train_path
    end
  end
end
