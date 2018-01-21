
if test "$(uname)" = "Darwin"
then
  osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/LaunchBar.app", hidden:false}' 
  osascript -e 'tell application "System Events" to make login item at end with properties {path:"/Applications/SizeUp.app", hidden:false}' 
fi
