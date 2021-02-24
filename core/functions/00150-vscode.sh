function codeprioritymore() {
  sudo ionice -c 1 -n 2 -p $(pidof -w -x code)
  sudo renice -n -35 -p $(pidof -w -x code)
}
function codepriorityless() {
  sudo ionice -c 2 -n 1 -p $(pidof -w -x code)
  sudo renice -n 10 -p $(pidof -w -x code)
}

function insidersprioritymore() {
  sudo ionice -c 1 -n 2 -p $(pidof -w -x code-insiders)
  sudo renice -n -35 -p $(pidof -w -x code-insiders)
}
function insiderspriorityless() {
  sudo ionice -c 2 -n 1 -p $(pidof -w -x code-insiders)
  sudo renice -n 10 -p $(pidof -w -x code-insiders)
}
