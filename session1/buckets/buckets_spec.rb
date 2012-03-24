class Bucket
  attr_accessor :capacity, :contents
  def initialize(capacity)
    @capacity = capacity
    @contents = 0
  end

  def fill
    @contents = @capacity
    return self
  end

  def empty
    @contents = 0
  end

  def fill_from(bucket)
    max_pour = @capacity - @contents
    if bucket.contents <= max_pour
       pour_amount = bucket.contents
    else
       pour_amount = max_pour
    end

    @contents = @contents + pour_amount
    bucket.contents = bucket.contents - pour_amount
  end

end

describe Bucket do

  before(:each) do
    @bucket_5 = Bucket.new(5)
    @bucket_3 = Bucket.new(3)
  end

  it 'should create a bucket with a capacity of 5' do
    @bucket_5.capacity.should == 5
  end

  it 'should create a bucket with a capacity of 3' do
    @bucket_3.capacity.should == 3
  end

  it 'should fill a bucket with a capacity of 5' do
    @bucket_5.fill
    @bucket_5.contents.should == 5
  end

   it 'should fill a bucket with a capacity of 3' do
    @bucket_3.fill
    @bucket_3.contents.should == 3
  end

  it 'should empty a bucket' do
    @bucket_5.fill
    @bucket_5.empty
    @bucket_5.contents.should == 0
  end

  it 'should fill a 3 bucket from a full 5 bucket and the 5 bucket should have remaining 2' do
    @bucket_5.fill
    @bucket_3.fill_from(@bucket_5)
    @bucket_3.contents.should == 3 && @bucket_5.contents.should == 2
  end

   it 'should fill a 3 bucket from a 5 bucket containing 2 and the 5 bucket should have 0 and the 3 bucket should have 2' do
    @bucket_5.contents = 2
    @bucket_3.fill_from(@bucket_5)
    @bucket_3.contents.should == 2 && @bucket_5.contents.should == 0
  end

  it 'should fill a 3 bucket containing 2 from a full 5 bucket and the 5 bucket should contain 4' do
    @bucket_3.contents = 2
    @bucket_3.fill_from(@bucket_5.fill)
    @bucket_5.contents.should == 4
  end

  it 'should measure 4qt if you have a 3qt and a 5qt bucket' do
    @bucket_5.fill
    @bucket_3.fill_from(@bucket_5)
    @bucket_3.empty
    @bucket_3.fill_from (@bucket_5)
    @bucket_5.fill
    @bucket_3.fill_from(@bucket_5)
    @bucket_5.contents.should == 4
  end

end

