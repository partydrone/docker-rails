# Docker Rails
This container is not a working rails app. Rather, it is an executable container that can be used to create a fresh new Rails app without the need to have a local installation of Ruby or the Rails gem.

To create a new Rails app, you will first need to pull the Docker image.

```$ docker pull partydrone/docker-rails```

To create a new Rails app, navigate to the folder where you want to create your app and:

```$ docker run --rm -v `pwd`:`pwd` -w `pwd` partydrone/docker-rails new my_rails_app```

The `-w` option is important—that is what gets the container to write the application files to the host machine rather than inside the container (where you can't get at them).

The `partydrone/docker-rails` replaces the normal `rails` command, but you can still pass any options you normally would:

```$ docker run --rm `pwd`:`pwd` -w `pwd` partydrone/docker-rails new my_rails_app -d postgresql -B -m path_to_template_file```
