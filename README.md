# dotfiles-devday

## Setup

```bash
# git clone
git@github.com:Coordinate-Cat/dotfiles-devday.git

# dotfiles にリネーム
mv dotfiles-devday dotfiles

# dotfiles に移動
cd dotfiles

# install.sh を実行
zsh ./install.sh
```

## 「シンボリックリンクを貼る」の意味

- install.sh を見ると、`ln -s` というコマンドが使われています。
- ln -s は、「シンボリックリンクを貼る」というコマンドです。
- 「シンボリックリンク」を貼るとは、ファイルやディレクトリを参照するリンクを作成することです。
  - 例えば、`~/.zshrc` というファイルを `~/dotfiles/.zshrc` にリンクすると、`~/.zshrc` は `~/dotfiles/.zshrc` を参照するようになります。

```bash
# シンボリックリンクを貼る
# ln -s [ファイルを置く場所はここだけど] [ファイルを働かせる場所はここ]
ln -s /$HOME/dotfiles/.zshrc /$HOME/.zshrc
```

- このようにすることで、`~/dotfiles/.zshrc` を編集すると、`~/.zshrc` にも反映されるようになります。

> [!TIP]
> 簡単に言うとショートカットのようなものです。

## dotfiles を作っておくということ

- dotfiles は、設定ファイルをまとめたものです。
- 例えば、`.zshrc` は、ターミナルの設定ファイルです。
- この設定ファイルを dotfiles にまとめておくと、新しい環境に移行する際に、設定を引き継ぎやすくなります。 いろいろ方法がありますが`git clone`で github から dotfiles をローカルに落とすのが一番手っ取り早いのではないでしょうか。

## 各種設定

> [!IMPORTANT]
> 基本的に dotfiles には何を入れてもいいです。自分だけの箱庭です。

### p10k の設定

https://github.com/romkatv/powerlevel10k

1.インストール

```bash
ln -s /$HOME/dotfiles-devday/powerlevel10k /$HOME/powerlevel10k
```

2.ウィザードに答えてプロンプトの見た目を設定

3.フォントに対応する

```bash
# フォントのインストール(絵文字がいっぱい入ってます)
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

## dotfiles を作る時の色んなアプローチ

- [chezmoi](https://www.chezmoi.io/)
  - 複数のさまざまなマシンにまたがる dotfiles を安全に管理
- [yadm](https://yadm.io/)
- [home-manager](https://github.com/nix-community/home-manager)
  - NixOS の設定ファイルを管理するためのツール
- [starship](https://starship.rs/ja-JP/)
  - クロスシェルのプロンプト
- [neofetch](https://github.com/dylanaraps/neofetch)
  - システム情報を表示するコマンド
- [spotify-tui](https://github.com/Rigellute/spotify-tui)
  - Spotify のコマンドラインインターフェース
- [wezterm](https://wezfurlong.org/wezterm/index.html)
  - ターミナルエミュレータ
- [vim-airline](https://github.com/vim-airline/vim-airline)
  - vim のステータスバー
- [codewhisperer](https://docs.aws.amazon.com/codewhisperer/latest/userguide/command-line.html)
  - AWS CLI の拡張
- [simple-bar](https://github.com/Jean-Tinland/simple-bar)
  - mac のステータスバー

## dotfiles を作るのに役立つ資料

### 記事

- [ようこそ dotfiles の世界へ](https://qiita.com/yutkat/items/c6c7584d9795799ee164)
- [GitHub でスター数の多い dotfiles を使ってみた](https://zenn.dev/yutakatay/articles/try-dotfiles-01)
- [Mac の環境を dotfiles でセットアップしてみた](https://dev.classmethod.jp/articles/joined-mac-dotfiles-customize/)

### Github

- [webpro/awesome-dotfiles](https://github.com/webpro/awesome-dotfiles)
- [Fav dotfiles of Coordinate-Cat](Coordinate-Cat/lists/00-fav-dotfiles)

### Reddit

- [r/unixporn](https://www.reddit.com/r/unixporn/)

## このレポジトリのコントリビューター

<a href="https://github.com/Coordinate-Cat/dotfiles-devday/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=Coordinate-Cat/dotfiles-devday" />
</a>

Made with [contrib.rocks](https://contrib.rocks).

コントリビューターの dotfiles も参考にしてみてください。

- [Coordinate-Cat/dotfiles](https://github.com/Coordinate-Cat/dotfiles)
- [yasunori0418/dotfiles](https://github.com/yasunori0418/dotfiles)
