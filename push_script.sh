# 사용법: sh -r push_script <커밋 메시지>
# 커밋 메시지에 공백이 있을 경우, 반드시 " "를 양옆에 붙인다.

git add .
echo $1
git commit -m $1
git remote remove origin
git remote add origin https://github.com/busAlarm/capstonefrontendmonitor
git push origin main
git remote remove origin
git remote add origin https://github.com/OSS-util-project/Frontend
git push origin main