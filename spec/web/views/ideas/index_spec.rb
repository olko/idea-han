require_relative '../../../spec_helper'

describe Web::Views::Ideas::Index do
  let(:exposures) { Hash[format: :html] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/ideas/index.html.erb') }
  let(:view)      { Web::Views::Ideas::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #format' do
    view.format.must_equal exposures.fetch(:format)
  end
end
