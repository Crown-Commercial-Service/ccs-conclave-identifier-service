Rails.application.routes.draw do
  namespace 'identifiers' do
    namespace 'id' do
      match '/ppon', to: 'organisations#create', via: [:post]
    end
  end
  match '/health_check', to: proc { [200, {}, ['success']] }, via: [:get]

  post '*unmatched_route', to: 'application#not_found'
end
