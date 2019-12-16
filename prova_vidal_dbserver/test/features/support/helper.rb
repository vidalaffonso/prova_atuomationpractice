#Faz Screenshot do nos
module Helper
  def tira_foto(file_name, resultado)
    caminho = "results/evidencias/test_#{resultado}"
    foto = "#{caminho}/#{ENV['BROWSER']}_.png"
    page.save_screenshot(foto, full: true)
    embed(foto, 'image/png', 'Ver_Evidencia')
  end
end
