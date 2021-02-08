# 使用说明
---
## 创建rules
shell
```
sudo cp ./52-ftdi.rules /etc/udev/rules.d/
```

## 启动驱动文件
shell

```
roslaunch robotiq_ft_sensor ft_300.launch 
```

## 查看数据
shell
```
rostopic echo /robotiq_ft_sensor
```

## 设置零点
shell
```
rosservice call /robotiq_ft_sensor_acc "command_id: 8
command: ''"
```


