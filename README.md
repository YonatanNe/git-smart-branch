# git-smart-branch 🧠✨

A Zsh plugin that uses AI (via [Ollama](https://ollama.com)) to suggest meaningful git branch names based on your staged changes.

---

## 🚀 Features

- Generates short, descriptive branch names from your staged diff
- Uses local LLMs via Ollama (e.g., LLaMA 3, Mistral, etc.)
- Follows conventional naming: `feature/`, `fix/`, `chore/`
- Works offline, no Copilot or cloud dependency
- Automatically starts and stops Ollama if needed

---

## 🔧 Installation

### 1. Clone the plugin into your Oh My Zsh custom plugins folder:

```bash
git clone https://github.com/your-user/git-smart-branch.git ~/.oh-my-zsh/custom/plugins/git-smart-branch
