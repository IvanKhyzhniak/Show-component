class Shows < Hyperloop::Component
  
  render(SECTION, class: 'show-app') do 
    ShowInput()
    ShowList()
  end
  
end