#宿主机也需要安装nodejs，需要npm安装hexo

#必须先安装nodejs：yum install nodejs

	
1.创建hexo文件夹
	
	mkdir /www
	cd /www
	hexo init
	

2.使用next主题

	cd /www
	mkdir themes/next
	git clone --branch v5.1.2 https://github.com/iissnan/hexo-theme-next themes/next
	sed -ri 's#(theme: ).*#\1next#'  /www/_config.yml
	
#next主题使用：http://theme-next.iissnan.com/theme-settings.htm	
	
	
3.使用docker-compose启动nginx+hexo容器

	docker-compose up -d	
