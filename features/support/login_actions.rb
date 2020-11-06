# frozen_string_literal: true

# Login actions
module LoginActions
  def go_to_login
    visit '/'
    click_on 'Login'
  end

  def login_with(email, password)
    find('#user_email').set email
    find('#user_password').set password
    click_on 'Log in'
  end

  def login_alert
    find('.message .message-body').text
  end
end
