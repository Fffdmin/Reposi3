#!/bin/bash

echo "自动扫描插件目录并打包"
dpkg-scanpackages ./pkg > Packages
bzip2 -fks Packages
echo "Down !!"
echo "上传至 Git   =====>"
git add .
echo "更新提交说明"
git commit -m "Update"
echo 
echo "开始推送"
git push
echo "Down !!"
