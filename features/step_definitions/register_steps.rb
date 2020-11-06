# frozen_string_literal: true

Dado('que acesso a página de cadastro') do
  visit '/'
  click_on 'EXPERIMENTE AGORA'
end

Quando('submeto o meu cadastro com:') do |table|
  user = table.rows_hash
  remove_user user[:email]
  register_user
end

Entao('devo ser redirecionado para a área logada') do
  expect(page).to have_css '.dashboard'
end

Entao('devo ver a mensagem: {string}') do |expected_message|
  expect(register_alert.text).to eql expected_message
end

Quando('acesso a página de cadastro') do
  steps %(
    Dado que acesso a página de cadastro
  )
end

Entao('deve exibir o seguinte css: {string}') do |expected_css|
  expect(page).to have_css expected_css
end
