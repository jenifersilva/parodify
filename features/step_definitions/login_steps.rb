# frozen_string_literal: true

Dado('que acesso a página de login') do
  go_to_login
end

Quando('submento minhas credenciais com: {string} e {string}') do |email, password|
  login_with(email, password)
end

Entao('devo ver a mensagem de erro: {string}') do |expected_message|
  expect(login_alert).to eql expected_message
end
