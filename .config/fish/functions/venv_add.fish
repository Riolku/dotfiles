function venv_add
    python3 -m venv ~/.virtualenvs/"$argv[1]"
    ~/.virtualenvs/"$argv[1]"/bin/activative.fish
end
