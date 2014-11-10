/**
 * Documentation: http://docs.azk.io/Azkfile.js
 */

// Adds the systems that shape your system
systems({
  zenvia: {
    depends   : [],
    image     : "dynaum/ruby-bundler-node",
    provision : [ "bundle install --binstubs --path /azk/bundler", ],
    workdir   : "/azk/#{manifest.dir}",
    command   : "bundle exec rackup config.ru --port $HTTP_PORT",
    envs      : { RUBY_ENV: "dev", },
    mounts : {
      '/azk/#{manifest.dir}' : path("."),
      "/azk/bundler"         : persistent("bundler-#{system.name}")
    },
  },
});



