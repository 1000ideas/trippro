  # Kontroler modułu aktualności.
  #
  # Pozwala na dodawanie, edycję i usuwanie aktualnosci.
  #
  class NewsController < L::NewsController
    layout "application"

    # Akcja wyświetlająca listę aktualności. Dostępna dla mogących czytać newsy.
    #
    # *GET* /news
    #
    def index
      authorize! :read, L::News
      @categories = Category.all
      @news = L::News
        .ordered
        .paginate page: params[:page]


      respond_to do |format|
        format.html
      end
    end

    # Akcja wyświetlająca pojedynczy news. Dostępna dla mogących czytać newsy.
    #
    # *GET* /news/1
    #
    def show
      @news = L::News.find(params[:id])
      authorize! :read, @news

      respond_to do |format|
        format.html
      end
    end

  end