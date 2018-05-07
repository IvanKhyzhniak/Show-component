class ShowInput < Hyperloop::Component
  state(:new_show) { Show.new }
  render(HEADER, class: :header) do
    H1 { 'shows' }
    EditShow(class: 'new-show', show: state.new_show)
    .on(:save) { mutate.new_show Show.new }
  end
end