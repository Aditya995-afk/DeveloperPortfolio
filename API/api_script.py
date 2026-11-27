
import json

# Read GitHub profile data
with open("github_profile.json", "r") as file:
    profile = json.load(file)

print("===== GITHUB PROFILE =====")
print("Name:", profile["name"])
print("Public Repositories:", profile["public_repos"])
print("Followers:", profile["followers"])
print("Created At:", profile["created_at"])

# Read sample posts
with open("sample_posts.json", "r") as file:
    posts = json.load(file)

print("\n===== JSONPLACEHOLDER API =====")
print("Total Posts:", len(posts))
print("First Post Title:", posts[0]["title"])
