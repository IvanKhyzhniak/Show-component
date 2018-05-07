class Films < Hyperloop::Component
  

  render(SECTION, class: 'show-app') do 
    FilmInput()
    FilmList()
  end
  
  
end