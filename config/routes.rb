Rails.application.routes.draw do
  scope :api, defaults: { format: :json } do
    scope :v1 do
      post "process" => "api/v1/clothes#process"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
