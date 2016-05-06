# Goes in ~/.config/fish/functions/start_agent.fish
# Adapted from http://www.snip2code.com/Snippet/34752/ssh-agent-for-fish

# this script can never fail
# i use it in the fish_config
# call it with start_agent

function start_agent
  if [ -n "$SSH_AGENT_PID" ]
    ps -ef | grep $SSH_AGENT_PID | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
      test_identities
    end
  else
    if [ -f $SSH_ENV ]
      . $SSH_ENV > /dev/null
    end
    ps -ef | grep $SSH_AGENT_PID | grep -v grep | grep ssh-agent > /dev/null
    if [ $status -eq 0 ]
      test_identities
    else
      echo "Initializing new SSH agent ..."
      ssh-agent -c | sed 's/^echo/#echo/' > $SSH_ENV
      echo "succeeded"
      chmod 600 $SSH_ENV
      . $SSH_ENV > /dev/null
      ssh-add
    end
  end
end


function test_identities
  ssh-add -l | grep "The agent has no identities" > /dev/null
  if [ $status -eq 0 ]
    ssh-add
    if [ $status -eq 2 ]
      start_agent
    end
  end
end


function fish_title
  if [ $_ = 'fish' ]
    echo (prompt_pwd)
  else
    echo $_
  end
end
