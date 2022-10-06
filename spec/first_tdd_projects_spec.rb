require "first_tdd_projects"
require "rspec"

describe Array do
    describe "#my_uniq" do
    subject(:arr) { [1,2,3,2,1]}
        context "removes duplicates from an array" do 
            it "should take in an array as the receiver" do
                expect(arr).to respond_to(:my_uniq)
            end

            it "should return an array with duplicates removed" do
                expect(arr.my_uniq).to eq([1,2,3])
            end
        end
    end

    describe "#two_sum" do
    subject(:arr) { [1,2,0,-1,-2,3]}
        it "return a 2d array including index pairs of elements which sum to 0, with smaller indeces first" do
            expect(arr.two_sum).to eq([[0,3], [1,4]])
            expect(arr.two_sum).to_not eq([[3,0], [4,1]])
        end

        # it "should return pairs with the smaller index listed first" do
        #     expect(arr.two_sum).to_not eq([[3,0], [4,1]])
        # end

    end

    
    
end

describe "#my_transpose" do
    subject(:arr) {[[1,2,3],[4,5,6],[7,8,9]]}   
    # it "should take in a square matrix as the argument" do
    #     expect{ my_transpose(arr) }.to_not raise_error
    #     expect{ my_transpose([1,2,3])}.to raise_error
    #     expect{ my_transpose(1)}.to raise_error
    # end
    it "should return a matrix with the rows and columns switched" do 
        expect(my_transpose(arr)).to eq([[1,4,7],[2,5,8],[3,6,9]])
        # expect(my_transpose(arr).length).to eq(arr.length)
    end

    it "shoudl return an argument error if the argument is not an array" do 
        expect{my_transpose(1)}.to raise_error(ArgumentError)
        expect{my_transpose("string")}.to raise_error(ArgumentError)
    end
    it "should return an argument error if the argumment is a 1D array" do
        expect{my_transpose([2,3,4])}.to raise_error(ArgumentError)
    end
    it "should return an argument error if the argument is an array that is not a square matrix" do
        expect{my_transpose([[1,2,3],[1,2,3]])}.to raise_error(ArgumentError)
    end
end

# describe "#stock_picker" do
#     subject(:stocks) {[5,6,0,2,1,3,2]}


# end

describe "#uniq" do
subject(:arr) { [1,2,3,2,1]}
    it "should accept an array as the argument" do 
        # arr = [1,2,3,2,1]
        expect{ uniq(arr) }.to_not raise_error
    end

    it "should raise an error if the argument is not an array" do
        expect{ uniq(1) }.to raise_error(ArgumentError)
    end
end

