class Garage
    car_type = {
        sedan: "sedan",
        suv: "suv",
        coupe: "coupe",
    }.freeze

    def initialize(num_floor, floor_capacity)
        @num_floor = num_floor
        @floor_capacity = floor_capacity
        @floor = Array.new(num_floor) {Array.new(floor_capacity)}
        @queue = []
    end

    def queueCar(car)
        @queue << car
        puts "Car queued, number #{queue.length} in line"
    end

    def parkCar(car)
        for i in @floor do
            for x in i do
                if x == nil
                    x = car
                    puts "Car parked on floor #{i}, spot number #{x}"
                    return
                end
            end
        end
        queueCar(car)
    end

    def removeCar(car_lp)
        for i in @floor do
            for x in i do
                if x.lp_num == car_lp
                    x = nil
                    puts "Car removed"
                    return
                end
            end
        end
    end
    #i can make the remove car function with floor num and spot num
end

class Car
    def initialize(color, type, lp_num)
        @color = color
        @type = type
        @lp_num = lp_num
    end
end