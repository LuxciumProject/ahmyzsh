function initnpm() {
  TEMP_FOLDER_="/tmp/$(getstamp 8)"
  gh repo clone Luxcium/template-nodejs-npm-git "${TEMP_FOLDER_}"
  "$(contain .gitignore)" || cp "${TEMP_FOLDER_}/.gitignore" .
  "$(contain LICENSE)" || cp "${TEMP_FOLDER_}/LICENSE" .
  "$(contain README.md)" || cp "${TEMP_FOLDER_}/README.md" .
}
# $(contain .git) && echo "contain .git"
# $(contain node_modules) && echo "contain node_modules"
# $(contain package.json) && echo "contain package.json"
# $(contain package-lock.json) && echo "contain package-lock.json"
# $(contain .gitignore) && echo "contain .gitignore"
# $(contain LICENSE) && echo "contain LICENSE"
# $(contain README.md) && echo "contain README.md"
# $(contain README.md) && echo "contain README.md"
# $(contain README.md) && echo "contain README.md"
# $(contain yarn.lock) && echo "contain yarn.lock"
# $(contain package-lock.json) && echo "contain package-lock.json"
# $(contain yarn-error.log) && echo "contain yarn-error.log"
# $(contain pnpm-lock.yaml) && echo "contain pnpm-lock.yaml"
# }
