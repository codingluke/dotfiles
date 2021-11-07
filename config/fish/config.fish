set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# proxy
set PROXY_HOST (head -1 ~/.config/tokens/proxy-host)
set PROXY_PORT (head -1 ~/.config/tokens/proxy-port)
if false # Proxy or not
  set -xg HTTP_PROXY "http://$PROXY_HOST:$PROXY_PORT"
  set -xg HTTPS_PROXY "http://$PROXY_HOST:$PROXY_PORT"
  set -xg http_proxy $HTTP_PROXY
  set -xg https_proxy $HTTPS_PROXY
  set -xg no_proxy (head -1 ~/.config/tokens/no-proxy)
  set -xg NO_PROXY (head -1 ~/.config/tokens/no-proxy)
else
  set -xg HTTP_PROXY ""
  set -xg HTTPS_PROXY ""
  set -xg http_proxy $HTTP_PROXY
  set -xg https_proxy $HTTPS_PROXY
  set -xg no_proxy ""
  set -xg NO_PROXY ""
end

# blade
set -xg PATH $HOME/Library/PackageManager/bin $PATH
set -xg PATH $HOME/Library/RedHat/openshift-client-mac $PATH

# nvim
set -xg EDITOR "~/.asdf/shims/nvim"
set -xg FZF_DEFAULT_COMMAND 'rg --files --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'

# yarn npm registry
set -xg NPM_AUTH_TOKEN (head -1 ~/.config/tokens/yarn-npm-auth-token) 

# docker from MINIKUBE
set -gx DOCKER_TLS_VERIFY "1";
set -gx DOCKER_HOST "tcp://192.168.64.2:2376";
set -gx DOCKER_CERT_PATH "~/.minikube/certs";
set -gx MINIKUBE_ACTIVE_DOCKERD "minikube";

# init misc shell hooks
direnv hook fish | source
starship init fish | source
source /usr/local/opt/asdf/libexec/asdf.fish
source ~/.asdf/plugins/java/set-java-home.fish
