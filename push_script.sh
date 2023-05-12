# 사용법: sh -r push_script <커밋 메시지>
# 커밋 메시지에 공백이 있을 경우, 반드시 " "를 양옆에 붙인다.

echo "\n"executing git add .
git add .

echo "\n"git commit -m "$1"
git commit -m "$1"

echo "\n"git remote remove origin
git remote remove origin

echo "\n"git remote add origin https://github.com/busAlarm/capstonefrontendmonitor
git remote add origin https://github.com/busAlarm/capstonefrontendmonitor

echo "\n"git push origin main
git push origin main

echo "\n"git remote remove origin
git remote remove origin

echo "\n"git remote add origin https://github.com/OSS-util-project/Frontend
git remote add origin https://github.com/OSS-util-project/Frontend

echo "\n"git push origin main
git push origin main