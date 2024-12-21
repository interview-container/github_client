The repository contains a basic Github client for its REST API.

## Requirements
* Ruby 3.1
* Access to at least one Github repository
* Please create a personal access token for your personal account so that the Github API requests work. The repository is public, so any token will work.

## Instructions
It needs to be run at the command line like this

```
TOKEN=github_pat_xxx ruby process.rb <repository URL, like https://api.github.com/repos/user_or_organization/repo>
```

The code implements only one method in the API - `issues`. It outputs up to 50 issues in the provided repository. It lets you set whether the
issues returned are open or closed, and then displays them in decreasing order of date as follows:

1. If you selected open issues, the date used is the issue's created date.
1. Else, it's the issues' closed date.

## Notes written while solving the challenge

- First step was adding Depaginator in a way that didn't alter the behavior at all
- I don't like passing "first_page" into Depaginator, should refactor. The main smell for why this is is the fact that we call the client in both process and depaginator currently. Another one is passing around the client.
- We may want a CLI argument for the "all pages" behavior instead of hardcoding it in process.rb
- Need errors around missing/invalid clients, especially in Depaginator

## Tests

Run tests with `ruby -Ilib:test test/*`. I typically write RSpec, decided to try minitest here for no reason whatsoever.