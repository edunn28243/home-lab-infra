import subprocess
import os

repo_path = r"C:\Users\Eric\home-lab-infra"
os.chdir(repo_path)

commands = [
    ["git", "pull"],
    ["git", "add", "readme.md"],
    ["git", "commit", "-m", "Sync README"],
    ["git", "push"]
]

for cmd in commands:
    subprocess.run(cmd)
