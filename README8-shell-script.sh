(shell script with github intergration)
Tasks = How can you list users who have access to a repository
This can be automated with shell script

###########################################################################################

(prerequisies before executing this script)
export username= "" # we export because we donot want to hardcode the username and token.
export tokens= "" # generate token from the github settings
#sudo apt-get install jq -y
# REPO_OWNER=$1 = the owner of the repo
# REPO_NAME=$2 = the name of the repo
#*** so you have to pass line 11 and 12 in the command line arguments ./shell-script.sh $REPO_OWNER $REPO_NAME
#NB if the script is executed and the names are not display it means they are the admins of the group
########################################################################################################
#!/bin/bash
# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token
USERNAME=$username
TOKEN=$token

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"

    # Send a GET request to the GitHub API with authentication
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

    # Fetch the list of collaborators on the repository
    collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

    # Display the list of collaborators with read access
    if [[ -z "$collaborators" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

# Main script

echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access