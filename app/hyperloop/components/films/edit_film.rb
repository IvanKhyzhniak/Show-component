class EditFilm < Hyperloop::Component
  param :film
  param :on_save, type: Proc                    
  param :on_cancel, type: Proc             
  param :className
  after_mount { Element[dom_node].focus }  
  
  render(DIV, style: {display: :inline}) do
    INPUT(
      type: :text,
      placeholder: :title,
      class: params.className, 
      defaultValue: params.film.title
    ).on(:key_down) do |evt|
      next unless (evt.key_code == 13 and evt.target.value != "")
      params.film.update(title: evt.target.value) 
      params.on_save                       
    end
    .on(:blur) { params.on_cancel }
    
    INPUT(
      type: :text,
      class: params.className,
      placeholder: :about,
      defaultValue: params.film.about
    ).on(:key_down) do |evt|
      next unless (evt.key_code == 13 and evt.target.value != "")
      params.film.update(about: evt.target.value) 
      params.on_save                       
    end
    .on(:blur) { params.on_cancel }
    
    INPUT(
      type: :text,
      class: params.className, 
      placeholder: :poster,
      defaultValue: params.film.poster
    ).on(:key_down) do |evt|
      next unless (evt.key_code == 13 and evt.target.value != "")
      params.film.update(poster: evt.target.value) 
      params.on_save                       
    end
    .on(:blur) { params.on_cancel }
  end
end