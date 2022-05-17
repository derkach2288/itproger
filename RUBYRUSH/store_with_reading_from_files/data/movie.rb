class Movie < Product
    attr_accessor :title, :year, :director

    def self.from_file(file_path)
        lines = File.readlines(file_path).map { |l| l.chomp }
    
        self.new(
          title: lines[0],
          director: lines[1],
          year: lines[2].to_i,
          price: lines[3].to_i,
          amount: lines[4].to_i
        )
      end

    def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
    end

    def to_s
        "Фильм «#{@title}», #{@year}, реж. #{@director}, #{super}"
    end

end