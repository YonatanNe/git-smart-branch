function git-smart-branch() {
  local model="llama3"
  local diff=$(git diff --cached)

  if [[ -z "$diff" ]]; then
    echo "❌ No staged changes found. Please stage your changes first."
    return 1
  fi

  # Pull model if not available
  if ! ollama list | grep -q "^$model"; then
    echo "📦 Pulling $model model..."
    ollama pull $model || { echo "❌ Failed to pull $model."; return 1; }
  fi

  local full_prompt="Based on the following staged git diff, suggest a short, descriptive git branch name.

Use kebab-case and include conventional prefixes like: feature/, fix/, chore/.

Only output the branch name. No explanation.

Git diff:

$diff"

  local suggestion=$(echo "$full_prompt" | ollama run $model | head -n 1 | sed 's/^[^a-z]*//i')

  if [[ -z "$suggestion" ]]; then
    echo "❌ No suggestion received from model."
    return 1
  fi

  echo "✨ Suggested branch name: $suggestion"
  read "confirm?Create and switch to this branch? [y/N] "

  if [[ "$confirm" =~ ^[Yy]$ ]]; then
    git checkout -b "$suggestion"
  else
    echo "❌ Aborted."
  fi
}
