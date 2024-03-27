# bash

packages=(
  "pip"
  "wget"
  "gzip"
  "conda-forge::tar"
  "conda-forge::ipykernel"
)

for package in $packages; do
  conda install "$package" -y
done

