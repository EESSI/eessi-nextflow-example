# This can be clunky and invasive, that's why it is hidden

if command -v direnv &> /dev/null
then
    echo "direnv command exists, no need for an install"
else
    echo "direnv does not exist, attempting an install"

    # Make sure there's a location already in PATH that we can install to
    mkdir -p $HOME/.local/bin &&
    # Run the direnv installer (!!not secure!! we should ship direnv with EESSI)
    curl -sfL https://direnv.net/install.sh | bash &&
fi

# Add the direnv hook to our shell
echo 'eval "$(direnv hook bash)"' >> $HOME/.bashrc &&
eval "$(direnv hook bash)"
echo ""
echo "--------------------------------------"
echo "-- direnv available and configured! --"
echo "--------------------------------------"
