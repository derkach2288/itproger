class Bodybuilder
    attr_accessor :triceps, :biceps, :deltovidka

    
    def initialize(triceps, biceps, deltovidka)
        @triceps = triceps
        @biceps = biceps
        @deltovidka = deltovidka

    end

    def pump(muscle) 
      
        case muscle
            when "triceps"
                @triceps +=1
            when "biceps"
                @biceps += 1
            when "deltovidka"
                @deltovidka += 1
        end

        
    end

    def show_muscle
        puts "Бицепсы #{@biceps}"
        puts "трицепсы #{@triceps}"
        puts "Дельтовидка #{@deltovidka}"


    end


end

body_builder1 = Bodybuilder.new(0, 0, 0)
body_builder2 = Bodybuilder.new(1, 1, 1)
body_builder3 = Bodybuilder.new(5, 5, 5)

5.times do
    body_builder1.pump("triceps")
end

2.times do
    body_builder1.pump("biceps")
end

4.times do
    body_builder1.pump("deltovidka")
end


5.times do
    body_builder2.pump("triceps")
end

2.times do
    body_builder2.pump("biceps")
end

4.times do
    body_builder2.pump("deltovidka")
end


5.times do
    body_builder3.pump("triceps")
end

2.times do
    body_builder3.pump("biceps")
end

4.times do
    body_builder3.pump("deltovidka")
end


puts body_builder1.show_muscle
puts body_builder2.show_muscle
puts body_builder3.show_muscle