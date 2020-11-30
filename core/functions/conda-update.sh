function condaupdate() {
  conda update conda -y &
  conda update --all -y &
  return 0
}
