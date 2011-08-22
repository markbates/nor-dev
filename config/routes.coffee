routes = global.Nor.routes

routes.match '/foo', to: 'foo#index'
routes.match '/boom', to: 'foo#boom'