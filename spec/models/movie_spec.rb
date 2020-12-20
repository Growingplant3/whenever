require 'rails_helper'

RSpec.describe Movie, type: :model do
  it "publish_checkは正しく機能するか" do
    Movie.create(title: 'title-1', status: 0, publish_at: "2017-10-10 12:00:00")
    Movie.create(title: 'title-2', status: 0, publish_at: "2017-10-11 12:00:00")
    Movie.create(title: 'title-3', status: 0, publish_at: "3000-10-12 12:00:00")
    expect{ Movie.publish_check }.to change{ Movie.where(status: 1).pluck(:title) }.from([]).to(["title-1", "title-2"] )
  end
end
