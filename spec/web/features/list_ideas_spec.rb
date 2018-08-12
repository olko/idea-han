require 'features_helper'

describe 'List Ideas' do
  it 'display each idea on the page' do
    visit '/ideas'

    within '#ideas' do
      assert page.has_css?('.idea', count: 2), 'Expected to find 2 ideas'
    end
  end
end