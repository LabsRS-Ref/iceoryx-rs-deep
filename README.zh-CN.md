# 构建示例说明

## 准备条件，编译 iceoryx



### Linux

#### 编译准备条件

```bash
sudo apt install gcc g++ cmake libacl1-dev libncurses5-dev pkg-config
```

#### 编译命令

```bash
cd iceoryx/
cmake -Bbuild -Hiceoryx_meta
cmake -Bbuild -Hiceoryx_meta -DCMAKE_PREFIX_PATH=$(PWD)/build/dependencies/
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
```





## 构建命令

## Demo 测试