defaults write -g KeyRepeat -int 1
defaults write -g InitialKeyRepeat -int 20
defaults write -g com.apple.mouse.tapBehavior -int 1

## .DS_Storeファイルを作成しない
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

## ウィンドウを開閉するときのアニメーションを無効
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

## ウィンドウサイズを調整する際の加速再生
defaults write -g NSWindowResizeTime -float 0.001

## Finderで情報ウィンドウを開くときのアニメーションを無効
defaults write com.apple.finder DisableAllAnimations -bool true

## Quick Lookウィンドウのアニメーションをオフ
defaults write -g QLPanelAnimationDuration -float 0

## Dockからアプリを起動するときのアニメーションを無効
defaults write com.apple.dock launchanim -bool false

## Finderで隠しファイルを表示
defaults write com.apple.finder AppleShowAllFiles -bool true
