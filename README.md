docker-neovim-nightly
--------------------

Allows users to run neovim nightly without installing or building anything. Used
as the base image for running http://github.com/ThePrimeagen/vim-be-good in
docker.

Build steps:

- `docker build --no-cache -t brandoncc/neovim-nightly:latest .`
- `docker push brandoncc/neovim-nightly:latest`

#### Thanks

Thanks goes out to [FL3SH](https://github.com/FL3SH) for helping me create this
base image for vim-be-good, instead of the 2GB image I originally created and
used [docker-neovim-master](https://github.com/brandoncc/docker-neovim-master).
