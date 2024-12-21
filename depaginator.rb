module Github
  class Depaginator
    attr_accessor :first_page, :all_pages

    def initialize(first_page, all_pages: false)
      @first_page = first_page
      @all_pages = all_pages
    end

    def response
      first_page.body
    end
  end
end
