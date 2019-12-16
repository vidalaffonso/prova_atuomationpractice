# Pegando todos os arquivos que estao dentro do caminho a baixo
Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

# Modulos para instanciar classes
module Page
  def home_page
    @home_page ||= HomePage.new
  end
  def pesquisa_dress
    @pesquisadress ||=PesquisaDress.new
  end
def checkout_page
  @checkout_page ||=CheckoutPage.new
end

end