class FilmInput < Hyperloop::Component
  state(:new_film) { Film.new }
  render(HEADER, class: :header) do
    H1 { 'FILMS' }
    EditFilm(class: '', film: state.new_film)
    .on(:save) { mutate.new_film Film.new }
  end
end