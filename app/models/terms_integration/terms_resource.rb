module TermsIntegration
  class TermsResource < ActiveResource::Base
    #cached_resource
    
    case InterfaceUtils::Server.environment
    when InterfaceUtils::Server::DEVELOPMENT
      self.site = "https://dev-terms.kmaps.virginia.edu/"
    when InterfaceUtils::Server::PRODUCTION
      self.site = "https://terms.kmaps.virginia.edu/"
    when InterfaceUtils::Server::NOD_DEV
      self.site = "https://nod-terms-dev.utm.utoronto.ca/"
    when InterfaceUtils::Server::NOD_PRD
      self.site = "https://nod-terms.utm.utoronto.ca/"
    when InterfaceUtils::Server::LOCAL
      self.site = "http://localhost/shanti/terms/"
    else
      self.site = "https://terms.kmaps.virginia.edu/"
    end

    self.timeout = 100
    self.format = :xml
  end
end
