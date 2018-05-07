class FilmList < Hyperloop::Component
  render(SECTION, class: :main) do
    UL(class: 'show-list') do
      Film.each do |film|
        FilmItem(film: film)
      end
    end
  end
end