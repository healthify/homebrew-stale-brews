# homebrew-stale-brews

## Using this Tap

To get started with using the forumals in this project, simply tap it:

```
brew tap cbortz/stale-brews
```

Then, install your desired formula:

```
brew install elasticsearch17
```

### Tapping via SSH

Homebrew, by default, uses HTTPS requests to clone Taps, requiring a username and password. To use SSH instead, you can use git's [`insteadOf` configuration](https://git-scm.com/docs/git-config#git-config-urlltbasegtinsteadOf):

```
git config --global url.'git@github.com:'.insteadOf https://github.com/
```

If applied correctly your `~/.gitconfig` file should look similar to this:

```config
[user]
  name = YOUR NAME

#
# Other configuration settings...
#

[url "git@github.com:"]
  insteadOf = https://github.com/
```

## Additional Reading

- [Brew Taps documentation](http://docs.brew.sh/brew-tap.html)
