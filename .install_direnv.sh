# This is clunky and invasive, that's why it is hidden

# Make sure there's a location already in PATH that we can install to
mkdir -p $HOME/.local/bin &&
# Run the direnv installer (!!not secure!! we will ship direnv with EESSI in 2023.04)
curl -sfL https://direnv.net/install.sh | bash &&
# Add the direnv hook to our shell
echo 'eval "$(direnv hook bash)"' >> $HOME/.bashrc &&
eval "$(direnv hook bash)"
echo ""
echo "-----------------------"
echo "-- Installed direnv! --"
echo "-----------------------"
