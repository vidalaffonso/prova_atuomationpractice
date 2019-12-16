class PesquisaDress < SitePrism::Page
    element :search, '#search_query_top'
    element :btn_pesquisa, '.btn-default.button-search'
    element :dress_prod, 'ul.product_list.grid.row>li:nth-child(5) img'
    

def pesquisa
    search.set 'Dresses'
    btn_pesquisa.click
    dress_prod. click
end

def add_carrinho
  click_button 'Add to cart'
  
end
end