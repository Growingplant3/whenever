require 'rails_helper'
describe "Schedule" do
  let(:whenever) { Whenever::JobList.new(file: File.join(Rails.root, "config", "schedule.rb").to_s) }
  it "publish_checkが毎晩実行されるか" do
    binding.pry
    expect(whenever).to schedule("Movie.publish_check").every('0 0 * * *')
  end
end
