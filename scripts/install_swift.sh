# 安装Swift指定版本

WORKDIR=$PWD
echo "WORKDIR=$WORKDIR"

# 参考 https://swift.org/download/

prepare()
{
   # 安装基础依赖环境
   sudo apt-get update -y
   sudo apt-get install -y \
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
}

install()
{
   # 下载swift压缩包
   mkdir -p "/workspace/.swift-vm/"
   cd "/workspace/.swift-vm/"

   if [ -f "./swift-5.5-RELEASE-ubuntu20.04.tar.gz" ]; then
      echo "swift-5.5-RELEASE-ubuntu20.04.tar.gz 已经存在"
   else
      echo "下载swift tar.gz包"
      wget https://swift.org/builds/swift-5.5-release/ubuntu2004/swift-5.5-RELEASE/swift-5.5-RELEASE-ubuntu20.04.tar.gz
   fi
   
   # 删除源目录
   echo "删除部署目录"
   rm -fr ./swift-5.5-RELEASE-ubuntu20.04/
   
   # 解压压缩包
   echo "解压压缩包"
   tar xzf swift-5.5-RELEASE-ubuntu20.04.tar.gz

   # 删除压缩包吗? 不用，留着方便使用
   # rm -fr swift-5.5-RELEASE-ubuntu20.04.tar.*

   # 设置环境变量及写入到 profile中
   echo "设置变量"
   export PATH=/workspace/.swift-vm/swift-5.5-RELEASE-ubuntu20.04/usr/bin:"${PATH}"

   # 切换会原先的工作目录
   cd "$WORKDIR"

   # 验证
   echo "验证"
   swift --version
}

# 执行安装
prepare
install