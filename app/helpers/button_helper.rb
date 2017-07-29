module ButtonHelper
  def signup_button
    link_to 'Sign Up', sign_up_path, class: 'button button--primary'
  end

  def login_button
    link_to 'Login', new_session_path(resource_name), class: 'button sign-up-button'
  end

  def create_new_account_button
    link_to 'Create new account', new_registration_path(resource_name), class: 'button sign-up-button'
  end

  def curriculum_button
    link_to 'Curriculum', curriculum_path, class: 'button button--primary'
  end

  def gitter_button
    link_to(
      'Open Gitter',
      chat_link,
      class: 'button button--secondary',
      target: '_blank'
    )
  end

  def contribute_button
    link_to('Contribute', contributing_path, class: 'button button--primary')
  end
end
