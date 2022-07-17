echo '执行命令：gitbook build .'
gitbook build .

# 进入_book文件
echo "执行命令：cd ./_book\n"
cd ./_book

# 将_book初始化为git的仓库，方便推送到GitHub上面
echo "执行命令：git init"
git init

# 保存所有的修改
echo "执行命令：git add ."
git add .

# 把修改的文件提交
echo "执行命令：git commit -m 'deploy'"
git commit -m "deploy"

# 发布
echo "执行命令：git push -f 自己的仓库地址 master:gh-pages"
git push -f https://github.com/No-Ten/testGitBook.git master:gh-pages

# 返回上一级目录
echo "回到刚才工作目录"
cd -