Rails.application.routes.draw do
  mount TermsIntegration::Engine => "/terms_integration"
end
