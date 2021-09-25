# 构建示例说明

## 准备条件，编译 iceoryx

### gitpod

参见 ./scripts/ 目录中的脚本

```bash

# 升级rust
source ./scripts/upgrade_rust.sh

# 安装swift编译环境

```


### Linux

#### 编译准备条件

```bash
sudo apt install gcc g++ cmake libacl1-dev libncurses5-dev pkg-config
```

#### 编译命令

关于 iceoryx 的配置说明

https://github.com/eclipse-iceoryx/iceoryx/blob/master/doc/website/advanced/configuration-guide.md

```bash
cd iceoryx/
cmake -Bbuild -Hiceoryx_meta
cmake -Bbuild -Hiceoryx_meta -DCMAKE_PREFIX_PATH=$(PWD)/build/dependencies/ -DIOX_MAX_CHUNKS_HELD_PER_SUBSCRIBER_SIMULTANEOUSLY=4
cmake --build build -j 4

# 默认安装到`/usr/local`下
# 例如: 
# /usr/local/bin/iox-roudi
# /usr/local/lib/libiceoryx_posh.a
# /usr/local/include//iceoryx_binding_c
# /usr/local/share/doc/iceoryx_binding_c/LICENSE
sudo cmake --build build -j 4 --target install 

# cmkae 可以指定安装的目录
# 设置 DESTINATION 环境变量
# TODO: 注释一下

```

### macOS

```bash
  https://github.com/elBoberido/iceoryx-rs.git
  git clone https://github.com/elBoberido/iceoryx-rs.git --recursive
  ls
  cd iceoryx-rs
  ls
  cd iceoryx
  cd ../
  code ./
  cd "/Users/ian/GitHub/refs/iceoryx-rs"
  cd iceoryx
  ICEORYX_DIR=$PWD
  mkdir -p build
  cd build
  git clone https://github.com/mirror/ncurses.git
  cd ncurses
  git checkout v6.2
  ./configure  --prefix=$ICEORYX_DIR/build/dependencies/ --exec-prefix=$ICEORYX_DIR/build/dependencies/ --with-termlib
  make -j12
  make install
  cd ../../
  # /Users/ian/GitHub/refs/iceoryx-rs/iceoryx
  cmake -Bbuild -Hiceoryx_meta -DCMAKE_PREFIX_PATH=$(PWD)/build/dependencies/
  cmake --build build -j 4
  cd ../
  # /Users/ian/GitHub/refs/iceoryx-rs
  cargo build --all --examples
```





## 构建命令

## Demo 测试

### 编译

```
cargo build --all --examples
```

## 运行


### 常用操作

- start RouDi 
```bash
./target/iceoryx-install/bin/iox-roudi -c ./roudi_config.toml 
```
- start
```bash
./elBoberido_iceray/target/debug/iceray
```

- start the publisher `./target/debug/examples/publisher_simple`
- start a subscriber `./target/debug/examples/subscriber_simple`

### 指定运行配置


