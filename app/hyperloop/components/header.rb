# app/hyperloop/components/header.
class Header < Hyperloop::Component
  state(:new_todo) { Todo.new }
  render(HEADER, class: :header) do
    H1 { 'shows' }
    EditItem(class: 'new-todo', todo: state.new_todo)
    .on(:save) { mutate.new_todo Todo.new }
  end
end