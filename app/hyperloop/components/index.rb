# app/hyperloop/components/index.rb
class Index < Hyperloop::Router::Component
  render(SECTION, class: :main) do
    UL(class: 'todo-list') do
      Todo.sorted.each do |todo|
        TodoItem(todo: todo)
      end
    end
  end
end