

virtualenv venv --python=python3.9

# Requirements
- Node 14.17.5 (Pro tip: Use [nvm](https://www.freecodecamp.org/news/node-version-manager-nvm-install-guide/) to manage your node versions)
- Python 3.9
- Git Bash

All the following commands are executed from a git bash shell. If not specified otherwise the commands are run inside the root folder 

## Setup
- Unpack the gtg_pretrained model inside the soloist folder
- `py -3.9 -m venv venv`
- `source venv/Scripts/activate`
- `pip install -r requirements.txt`
- `python`
- `import nltk`
- `nltk.download('punkt', 'nltk_data')` 
- `exit()`

# Running with git bash
- Run Backend (inside venv)
    - (inside examples/knowledgebasebot) `python convert_rasa.py`
    - (inside soloist) `scripts/train_kbbot.sh`
    - (inside examples/knowledgebasebot) `python kbbot_server`
- Run Frontend
    - Open a second shell (do not activate the venv)
    - go inside soloist/html
    - `npm install`
    - `npm run dev`

# Did not work?
- If you can't activate the environment try setting the ExecutionPolicy to Unrestricted (only works from an admin shell)
`Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted`
- update c++ Build tools