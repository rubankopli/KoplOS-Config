# ? NOTE: Must be run from within a git repository!

function _get_jira_ticket_from_branch_name --description 'Parse the current git branch name and attempt to determine the relevant jira ticket its used with'
    set branch_name (git rev-parse --abbrev-ref HEAD)
    set ticket_name (string match --regex "[[:upper:]]{2,10}.[[:digit:]]{1,5}" $branch_name)
    echo $ticket_name
end
