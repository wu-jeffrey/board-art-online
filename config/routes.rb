Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do

    end
  end

  get '*page', to: 'static#index', constraints: -> (req) do
    !req.xhr? && req.format.html? && req.path.exclude?('rails/active_storage')
  end

  root 'static#index'
end
