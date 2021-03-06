describe 'calling bookbinder with --version' do
  let(:gem_root) { File.expand_path('../../../', __FILE__) }
  let(:version) { Gem::Specification::load(File.join gem_root, "bookbinder.gemspec").version }

  it 'outputs the version' do
    expect(`#{gem_root}/install_bin/bookbinder --version`).to eq("bookbinder #{version}\n")
  end
end
