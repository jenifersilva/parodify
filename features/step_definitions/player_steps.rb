# frozen_string_literal: true

Dado('Login com {string} e {string}') do |email, password|
  steps %(
        Dado que acesso a página de login
        Quando submento minhas credenciais com: "#{email}" e "#{password}"
        )
end

Dado('que eu gosto muito de {string}') do |category|
  go_to_category(category)
end

Quando('toco a seguinte canção:') do |table|
  @parody = table.rows_hash
  go_to_band(@parody[:band])
  play_song(@parody[:parody])
end

Entao('essa paródia deve ficar em modo de reprodução') do
  expect(song_playing).to have_text @parody[:parody]
end
