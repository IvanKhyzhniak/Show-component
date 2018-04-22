class App < Hyperloop::Router  

  history :browser
  
  render do 
    SECTION(class: 'show-app') do
      Header()
      Index()
    end
  end
  
end
