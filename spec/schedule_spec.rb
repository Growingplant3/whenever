# require 'rails_helper'
# describe "Schedule" do
#   let(:whenever) { Whenever::JobList.new(file: File.join(Rails.root, "config", "schedule.rb").to_s) }
#   it "publish_checkが毎晩実行されるか" do
#     binding.pry
#     expect(whenever).to schedule("Movie.publish_check").every('0 0 * * *')
#   end
# end

require 'rails_helper'
describe "Schedule" do
  it 'publish_checkが毎晩実行されるか' do
    schedule = Whenever::Test::Schedule.new(file: 'config/schedule.rb')
    assert_equal "Movie.publish_check", schedule.jobs[:runner].first[:task]
    assert_equal ["0 0 * * *"], schedule.jobs[:runner].first[:every]
  end
end