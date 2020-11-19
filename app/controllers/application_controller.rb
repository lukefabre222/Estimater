class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    my_page_path(resource) # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    root_path # ログアウト後に遷移するpathを設定
  end
end
