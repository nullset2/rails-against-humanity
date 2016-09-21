class OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def google_oauth2
    @user = User.from_omniauth_hash(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "Google") if is_navigational_format?
    else
      failure("Google")
    end
  end

  def facebook
    @user = User.from_omniauth_hash(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
      set_flash_message(:notice, :success, kind: "Facebook") if is_navigational_format?
    else
      failure("Facebook")
    end
  end

  private

  def failure(provider)
    set_flash_message(:notice, :failure, kind: provider, reason: "you have previously registered with this email") #TODO: manage this shit, has more logic cases but I gotta sprint
    redirect_to root_path
  end

end
