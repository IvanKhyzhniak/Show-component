class EditShow < Hyperloop::Component
  param :show
  param :on_save, type: Proc                    
  param :on_cancel, type: Proc             
  param :className
  after_mount { Element[dom_node].focus }  
  
  render do
    INPUT(
      type: :time,
      class: params.className, 
      defaultValue: params.show.time,
      style: {"padding-left": 16},
      key: params.show.id,
      pattern: "([01]?[0-9]|2[0-3]):[0-5][0-9]"
    ).on(:key_down) do |evt|
      next unless (evt.key_code == 13 and evt.target.value != "")
      params.show.update(time: evt.target.value) 
      params.on_save                       
    end
    .on(:blur) { params.on_cancel }
  end
end