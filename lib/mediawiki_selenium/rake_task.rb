require 'cucumber/rake/task'
require 'mediawiki_selenium'
require 'uri'

module MediawikiSelenium
  class RakeTask < Cucumber::Rake::Task
    def initialize(name: :selenium, test_dir: Environment.default_test_directory, site_tag: true)
      target = File.expand_path(test_dir, Rake.original_dir)
      env = Environment.load_default(target)

      workspace = env.lookup(:workspace, default: nil)
      site = URI.parse(env.lookup(:mediawiki_url)).host
      browser_tags = env.browser_tags.map { |tag| "@#{tag}" }.join(',')

      require 'shellwords'
      options = Shellwords.escape(test_dir)

      if workspace
        options +=
          ' --backtrace --verbose --color --format pretty'\
          " --format Cucumber::Formatter::Sauce --out '#{workspace}/log/junit'"\
          ' --tags ~@skip'
        options +=
          " --tags @#{site}" if site_tag
      end

      super(name) do |t|
        t.cucumber_opts = "#{options} --tags #{browser_tags}"
      end
    end
  end
end
