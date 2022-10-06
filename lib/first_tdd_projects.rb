class Array

    def my_uniq
        new_arr = []
        self.each {|ele| new_arr << ele if !new_arr.include?(ele)}
        new_arr
    end

    def two_sum
        idx_pairs = []
        (0...self.length-1).each do |idx1|
            (idx1+1...self.length).each do |idx2|
                idx_pairs << [idx1, idx2] if self[idx1] + self[idx2] == 0
            end
        end
        idx_pairs
    end

    
end



def my_transpose(arr)
    raise ArgumentError if !arr.is_a?(Array)

    raise ArgumentError if arr.any? {|subarr| !subarr.is_a?(Array)}

    raise ArgumentError if !arr.all? {|subarr| subarr.length == arr.length}

    new_arr = Array.new(arr.length) { Array.new(arr.length) }

    (0...arr.length).each do |idx1|
        (0...arr.length).each do |idx2|
            new_arr[idx1][idx2] = arr[idx2][idx1]
        end
    end

    new_arr
end

arr_2 = 'hi' #[1,2,3]

def uniq(arr_2)
    raise ArgumentError if !arr_2.is_a?(Array)
    # raise 'Sample Error' if !arr.is_a?(Array)
end

arr = [1,2,3] # [[1,2,3],[1,2,3],[1,2,3]]

# p my_transpose(arr)

def stock_picker(stocks)
    biggest_difference = 0
    index_arr = []

    (0...stocks.length-1).each do |idx1|
        (idx1+1...stocks.length).each do |idx2|
            difference = stocks[idx2] - stocks[idx1]
            if difference > biggest_difference
                biggest_difference = difference
                index_arr = [idx1, idx2]
            end
        end
    end

    # uncomment below code and comment out lines 57-65 to run case where you sell the stock before buying
    # (0...stocks.length).each do |idx1|
    #     (0...stocks.length).each do |idx2|
    #         difference = stocks[idx2] - stocks[idx1]
    #         if difference > biggest_difference
    #             biggest_difference = difference
    #             index_arr = [idx1, idx2]
    #         end
    #     end
    # end

    index_arr
end