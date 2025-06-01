# Add term capabilities to server

infocmp -x xterm-ghostty | ssh YOUR-SERVER -- tic -x -

## Additionaly you can edit your sshconfig to fallback to old xterm- capabilities

# .ssh/config
Host example.com
  SetEnv TERM=xterm-256color

