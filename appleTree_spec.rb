require_relative 'appletree'
RSpec.describe AppleTree do
    before(:each) do
        @tree = AppleTree.new(6)
    end
    it 'has a getter and setter for age attribute' do
        @tree.age = 1
        expect(@tree.age=1)
    end  
    it 'has a getter method for height attribute' do
        @tree.height
        expect(6)
    end  
    it 'has no setter method for height attribute' do
        expect{@tree.height = 8}.to raise_error(NoMethodError)
    end  
    it 'has getter method for apple_count attribute' do
        @tree.apple_count
        expect(0)
    end    
    it 'has no setter method for apple_count attribute' do
        expect{@tree.apple_count = 1}. to raise_error(NoMethodError) 
    end 
    it 'has year_gone_by method' do
        @tree.year_gone_by 
        expect(@tree.age=1)
        expect(@tree.height).to eq(6.6)
        expect(@tree.apple_count).to eq(0)
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        expect(@tree.apple_count).to eq(2)
    end 
    it 'has a pick_apples method that removes all the apples from the tree' do
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.pick_apples
        expect(@tree.apple_count).to eq(0)  
    end  
    it 'should not grow apples if it is older than 10' do
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        @tree.year_gone_by
        expect(@tree.apple_count).to eq(14)
    end    
end        