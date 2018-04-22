class Index < Hyperloop::Router::Component
  render(SECTION, class: :main) do
    UL(class: 'show-list') do
      Show.sorted.each do |show|
        ShowItem(show: show)
      end
    end
  end
end