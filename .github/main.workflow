workflow "Build PDF" {
  on = "push"
  resolves = ["Build"]
}

action "Build" {
  uses = "./.github/actions/latex"
  secrets = ["GITHUB_TOKEN"]
}
