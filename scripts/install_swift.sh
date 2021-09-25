# 安装Swift指定版本

# 参考 https://swift.org/download/

# 判断Swift是否有下载安装

if [ -d "$HOME/swift" ] ; then
   echo "swift 目录存在" 
else
   # 安装基础依赖环境
   apt-get install \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-9-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2 \
          libz3-dev \
          pkg-config \
          tzdata \
          uuid-dev \
          zlib1g-dev
   
   # 下载swift压缩包
   mkdir -p "$HOME/swift/"
   cd "$HOME/swift/"
   wget https://swift.org/builds/swift-5.5-release/ubuntu2004/swift-5.5-RELEASE/swift-5.5-RELEASE-ubuntu20.04.tar.gz
   # 解压
   tar xzf swift-5.5-RELEASE-ubuntu20.04.tar.gz
   # 删除压缩包
   # 设置环境变量及写入到 profile中

fi