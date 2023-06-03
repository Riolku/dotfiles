function venv_add
    python3 -m venv ~/.virtualenvs/"$argv[1]"
    source ~/.virtualenvs/"$argv[1]"/bin/activate.fish
end
