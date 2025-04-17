# git-smart-branch 🧠✨

A Zsh plugin that uses a local AI model (via [Ollama](https://ollama.com)) to suggest meaningful git branch names based on your staged changes.

---

## 🚀 Features

- 🧠 Generates short, descriptive branch names from your staged git diff  
- 🏷️ Uses conventional prefixes: `feature/`, `fix/`, `chore/`  
- 💻 Runs fully local using Ollama — no cloud required  
- ✨ Clean UX with confirm-to-create prompt  

---

## ⚙️ Prerequisites

### ✅ 1. Install Ollama

Install via [Homebrew](https://brew.sh):

```bash
brew install ollama
```

Or download directly from [https://ollama.com/download](https://ollama.com/download)

### ✅ 2. Start the Ollama server

Before using the plugin, start the Ollama background server:

```bash
ollama serve
```

> Ollama must be running in the background while using the plugin.

---

## 🧪 Example Usage

1. Stage some changes:

```bash
git add .
```

2. Run:

```bash
git-smart-branch
```

You'll see output like:

```
✨ Suggested branch name: feature/add-auth-check
Create and switch to this branch? [y/N]
```

---

## 🔧 Installation

### 1. Clone the plugin into your Oh My Zsh custom plugins folder

```bash
git clone https://github.com/YOUR-USERNAME/git-smart-branch.git ~/.oh-my-zsh/custom/plugins/git-smart-branch
```

### 2. Enable it in your `.zshrc`

Edit your `.zshrc` and add it to the plugins list:

```zsh
plugins=(git git-smart-branch)
```

Then reload Zsh:

```bash
source ~/.zshrc
```

---

## 🧠 Notes

- Uses `llama3` as the default model.
- Model will be automatically pulled by Ollama the first time you run the function.
- You can change the model by editing the `model="llama3"` line in the script.
- Model files are stored in `~/.ollama/models`.

---

## 📜 License

MIT
