# dotfiles

Personal config, laid out for [GNU stow](https://www.gnu.org/software/stow/): each top-level
folder mirrors `$HOME`.

```sh
git clone https://github.com/nimapdevyash/dotfiles ~/Codes/dotfiles
cd ~/Codes/dotfiles && stow -t ~ tmux
```

## tmux

Based on [vayu](https://github.com/theyashsawarkar/vayu)'s tmux setup ("Rose Dusty" status bar),
with extra stability guards, session restore, and popups. tmux 3.4, kitty, Wayland.

Plugins (tpm bootstraps itself on first launch): tmux-resurrect, tmux-continuum, extrakto.
Needs `fzf`, `wl-copy`, `notify-send`, and a Nerd Font; `lazygit` / `btop` / `gh-dash` / `posting` for their popups.

Prefix is `Ctrl-a`. `prefix ?` lists every binding with a description.

| Key | Action |
|---|---|
| `prefix s` | Session picker: live preview, `ctrl-x` kill, type a new name to create |
| `prefix :` | Floating command prompt |
| `prefix g` / `t` / `T` | lazygit / scratch shell / btop popup |
| `prefix G` | gh-dash popup: PRs/issues (needs `gh extension install dlvhdr/gh-dash`) |
| `prefix P` | Posting HTTP client popup (toggle) |
| `prefix Tab` | extrakto: fuzzy-pick paths, URLs, words from the pane |
| `prefix \|` / `-` | Split in current directory |
| `prefix S` | Toggle synchronized input across panes |
| `Alt-←↑↓→` / `Alt-Shift-←↑↓→` | Move between / resize panes |
| `Alt-1`…`9` | Jump to window |
| copy mode `v` / `y` | Select / copy to Wayland clipboard |

The session block turns peach while the prefix is active and green in copy mode; windows show
`⤢` when zoomed and `⇄` when panes are synchronized.
