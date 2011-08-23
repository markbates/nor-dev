routes = global.Nor.routes

# routes.match '/foo', to: 'foo#index'
# routes.match '/foo/:id', to: 'foo#show'

routes.match '/foo/:a/:b/:c', to: 'foo#show'

routes.resources 'foo'

routes.match '/endpoint', endpoint: (env)->
  env.write('ENDPOINT!!')
routes.match '/boom', to: 'foo#boom'