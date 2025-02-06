# 启动模拟器
emulator -list-avds
emulator -avd Pixel_4a_API_35

# 生成 FromJson 和 ToJson
dart run build_runner build --delete-conflicting-outputs