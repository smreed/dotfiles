# https://github.com/joemiller/dotfiles/blob/master/_zsh.d/joemiller.zsh-theme#L25-L52
# add current kubernetes cluster and namespace (if set) to the prompt.
# Prefix with `gke:` if this is a google container engine cluser.
#
#   ‹cluster-01›
#   ‹gke:cluster-01›
#   ‹gke:cluster-01/production›
#
function kube_info
  set PREFIX "‹"
  set SUFFIX "›"

  set cluster (kubectl config current-context 2>/dev/null)
  if [ -z "$cluster" ]
    return
  end
  set cluster_shortname (echo $cluster | awk -F_ '{print $NF}')
  set namespace (kubectl config view -o jsonpath --template "{.contexts[?(@.name==\"$cluster\")].context.namespace}" 2>/dev/null)

  switch $cluster
    case 'gke*'
      set cluster_shortname "gke:$cluster_shortname"
  end

  if [ "$namespace" != "" ]
    set namespace "/$namespace"
  end

  echo "$PREFIX$cluster_shortname$namespace$SUFFIX"
end
