# bash

packages=(
  "pip"
  "wget"
  "gzip"
  "conda-forge::tar"
)

for package in $packages; do
  conda install "$package" -y
done

