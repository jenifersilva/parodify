# frozen_string_literal: true

Before do
  page.current_window.resize_to(1440, 900)
end

After do
  shot = page.save_screenshot('reports/screenshots/temp_shot.png')
  Allure.add_attachment(
    name: 'screenshot',
    type: Allure::ContentType::PNG,
    source: File.open(shot)
  )
end
