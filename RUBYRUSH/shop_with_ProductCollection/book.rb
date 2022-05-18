class Book < Product
    attr_accessor :title, :genre, :author

    def self.from_file(file_path)

        lines = File.readlines(file_path).map { |l| l.chomp }
        
        self.new(
            title: lines[0],
            genre: lines[1],
            author: lines[2],
            price: lines[3].to_i,
            amount: lines[4].to_i
          )
        end

    def initialize(params)
        super
    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
    end

    def to_s
        "Книга \"#{@title}\", жанр #{@genre}, автор #{@author}, #{super}"
    end
end
