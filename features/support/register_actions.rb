# frozen_string_literal: true

# Register actions
module RegisterActions
  def register_user(email, password, password_confirmation)
    find('input[name*=email]').set email
    find("input[placeholder='Sua senha secreta']").set password
    find("input[placeholder='Confirme a senha']").set password_confirmation
    click_on 'Cadastrar'
  end

  def register_alert
    find('.message p')
  end
end
