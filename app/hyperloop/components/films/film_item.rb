class FilmItem < Hyperloop::Component
  param :film
  state editing: false
  render(LI, class: '') do
    if state.editing
      EditFilm(film: params.film, className: '')
      .on(:save, :cancel) { mutate.editing false }
    else
      H1 { params.film.title }.on(:double_click) { mutate.editing true }
      PARA { params.film.about}.on(:double_click) { mutate.editing true }
      Shows()
      A(class: :destroy)
      .on(:click) { params.film.destroy }
    end
  end
end