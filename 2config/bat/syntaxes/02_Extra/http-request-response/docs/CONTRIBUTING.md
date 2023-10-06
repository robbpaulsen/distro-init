# How to contribute

Thanks for being interested in improving this syntax highlighting definition.

## Testing

If possible, please write test assertions for changes you make, more test coverage is always good!
There is some documentation on this at http://www.sublimetext.com/docs/syntax.html#testing, which is mainly aimed at Sublime Text users.
If you are not a Sublime Text user, and are contributing to improve a tool that uses the `syntect` Rust library, such as `bat`,
then feel free to have a go at it or even submit your PR without any changes to the tests[^1] - CI will catch any assertion failures for you.
Maintainers of this repository can always add/fix tests or guide you - so we won't let it be a barrier to contribution.
You can always manually check your changes by adding the updated syntax definition to your preferred tool and seeing the highlighted output.

If you *are* a Sublime Text user, probably you already know this, but tests are much easier to write with the PackageDev package installed.
[^1]: `syntect` itself includes an example which can run syntax tests, but it isn't exposed through most tools using the library.

## Submitting changes

Please send a Pull Request with a clear list of what you've done. (If you are new to GitHub, you can read more about [pull requests here](http://help.github.com/pull-requests/). If you are asked to make changes during the code review, you can just push new commits to the same branch which you created the PR from and they will be added to the PR automatically.)

Always write a clear log message for your commits.
If the changes are complicated and you want to explain your reasoning for your approach,
feel free to either do it in the commit description, the PR description or by adding comments in the PR itself -
however you are most comfortable. Even writing nothing is fine, but be prepared to answer some questions or be asked to change things in such cases.

Indeed, ideally changes would refer to an existing issue, so nothing comes "out of the blue",
and implementation details can be discussed before work is started, in order to save time.
But this not a hard rule and small changes are of course welcome without a prior issue -
as it would be silly to spend longer creating an issue than writing the fix itself just
to follow red-tape processes. :)
