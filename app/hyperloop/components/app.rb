# app/hyperloop/components/app.rb
class App < Hyperloop::Router  
  # usually the top level component is Router which is a kind of Hyperloop component
  
  history :browser
  
  
  render do 
    SECTION(class: 'todo-app') do
      Header()
      Index()
    end
  end
  
end
