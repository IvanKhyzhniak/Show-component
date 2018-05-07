class ShowItem < Hyperloop::Component
  param :show
  state editing: false
  render(LI, class: 'show-item') do
    if state.editing
      EditShow(show: params.show, className: :edit)
      .on(:save, :cancel) { mutate.editing false }
    else
      LABEL { params.show.time }
      .on(:double_click) { mutate.editing true }
      A(class: :destroy)
      .on(:click) { params.show.destroy }
    end
  end
end