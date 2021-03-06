module MediawikiSelenium
  autoload :VERSION, 'mediawiki_selenium/version'
  autoload :ApiHelper, 'mediawiki_selenium/helpers/api_helper'
  autoload :BrowserFactory, 'mediawiki_selenium/browser_factory'
  autoload :ConfigurationError, 'mediawiki_selenium/configuration_error'
  autoload :Environment, 'mediawiki_selenium/environment'
  autoload :EmbedBrowserSession, 'mediawiki_selenium/cucumber/embed_browser_session'
  autoload :HeadlessHelper, 'mediawiki_selenium/helpers/headless_helper'
  autoload :Initializer, 'mediawiki_selenium/initializer'
  autoload :LoginHelper, 'mediawiki_selenium/helpers/login_helper'
  autoload :PageFactory, 'mediawiki_selenium/page_factory'
  autoload :RakeTask, 'mediawiki_selenium/rake_task'
  autoload :RemoteBrowserFactory, 'mediawiki_selenium/remote_browser_factory'
  autoload :ScreenshotHelper, 'mediawiki_selenium/helpers/screenshot_helper'
  autoload :StrictPending, 'mediawiki_selenium/cucumber/strict_pending'
  autoload :UserFactory, 'mediawiki_selenium/user_factory'
  autoload :UserFactoryHelper, 'mediawiki_selenium/helpers/user_factory_helper'
end
