#使用ubuntu:14.04作为基础镜像
FROM ubuntu:16.04
#指定镜像创建者信息
MAINTAINER test xxxx@xxx.com
#创建日期
ENV REFRESHED_AT 2017-2-15
#切换镜像目录，进入/usr目录
WORKDIR /usr
#在/usr/下创建jdk目录,用来存放jdk文件
RUN mkdir jdk
#在/usr/下创建tomcat目录，用来存放tomcat
RUN mkdir tomcat
#切换镜像的目录至/usr/jdk
WORKDIR /usr/jdk/
#将宿主机的jdk目录下的文件拷至镜像的/usr/
ADD jdk/jdk1.8.0_131 /usr/jdk
#切换镜像的目录至/usr/tomcat
WORKDIR /usr/tomcat
#将宿主机的tomcat目录下的文件拷至镜像的/usr/tomcat目录下
ADD tomcat/apache-tomcat-8.5.16 /usr/tomcat
#设置环境变量
ENV JAVA_HOME=/usr/jdk
ENV JAVA_BIN=/usr/jdk/bin
ENV PATH=$PATH:$JAVA_HOME/bin
ENV CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
#切换工作目录到ROOT下
WORKDIR /usr/tomcat/webapps/ROOT
#删除tomcat默认的项目文
#将自己的xxx.war系统添加到docker镜像中tomcat下的ROOT目录下
ADD webapp /usr/tomcat/webapps/webapp
#公布tomcat的9999端口
EXPOSE 9999
#启动tomcat
ENTRYPOINT ["../../bin/catalina.sh","run"]