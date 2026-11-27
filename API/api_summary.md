
# API Integration Summary

## 1. What is a REST API?

A REST API allows different applications to communicate with each other over the internet using HTTP requests. It helps applications access and exchange data in formats such as JSON.

## 2. HTTP Status Codes

- **200 OK:** The request was successful and the server returned the requested data.
- **404 Not Found:** The requested resource could not be found on the server.

## 3. GitHub API

The GitHub REST API was used to retrieve public profile information.

Command used:

`curl -L https://api.github.com/users/Aditya995-afk -o github_profile.json`

The following information was extracted using jq:

- Name
- Public repositories
- Followers
- Account creation date

## 4. JSONPlaceholder API

JSONPlaceholder was used to retrieve sample post data.

Command used:

`curl -L https://jsonplaceholder.typicode.com/posts -o sample_posts.json`

A total of 100 sample posts were downloaded.

## 5. Understanding jq

`jq` is a command-line tool used to process and extract information from JSON files.

Example:

`jq '.name, .public_repos, .followers, .created_at' github_profile.json`

- `.` accesses the JSON object.
- `.name` extracts the name field.
- `.public_repos` extracts the public repository count.
- `.followers` extracts the follower count.
- `.created_at` extracts the account creation date.

## 6. Python API Processing

A Python script was created using the `json` module to read both API response files, display GitHub profile details, and count the sample posts.
