function eslint_global() {
  npx install-peerdeps -g @typescript-eslint/parser@latest
  npx install-peerdeps -g @typescript-eslint/eslint-plugin@latest
  npx install-peerdeps -g eslint-config-airbnb-base@latest
  npx install-peerdeps -g eslint-config-prettier@latest
  npx install-peerdeps -g eslint-plugin-flowtype@latest
  npx install-peerdeps -g eslint-plugin-import@latest
  npx install-peerdeps -g eslint-plugin-jest@latest
  npx install-peerdeps -g eslint-plugin-jsx-a11y@latest
  npx install-peerdeps -g eslint-plugin-node@latest
  npx install-peerdeps -g eslint-plugin-prettier@latest
  npx install-peerdeps -g eslint-plugin-react-hooks@latest
  npx install-peerdeps -g eslint-plugin-react@latest
  npx install-peerdeps -g eslint-plugin-unicorn@latest
  yarn-update_ &
  return 0

}
