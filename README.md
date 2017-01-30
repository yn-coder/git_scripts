# Git scripts
Some Git scripts

## git_chain.bat

Example git script contain solution for how to handle with remoted isolated work copy.

For example, you have a GitHub repo, and some work clone on workstation `A`. `A` have no network connection to GitHub. If you have some shared place on thumbdrive, you can use it as [`bare`](https://githowto.com/bare_repositories) clone for two-way transfer from GitHub to `A` and back.

### Sync flow ###

`first_wc` is a direct clone of `main_repo`

`main_repo <-> first_wc`

`second_bare` is a bare clone of `main_repo`. You can place `second_bare` on a thumb drive or shared folder.

`second_bare <-> main_repo`

`third_wc` is a clone of `second_bare`

`third_wc <-> second_bare`
