# Instrucciones para correr robot y obtener imagenes
## setup
```bash
source devel/setup.bash
```
## Correr robocup: 
Dependiendo del mundo donde se quiera correr se tienen los siguiente comandos
### Robocup 2019
```bash
roslaunch kobuki_gazebo robocup.launch
```
### Robocup 2019 modificada
```bash
roslaunch kobuki_gazebo robocup_real.launch
```
### Arena 1
```bash
roslaunch kobuki_gazebo arena_1.launch
```
### Arena 2
```bash
roslaunch kobuki_gazebo arena_2.launch
```


## Controlar el robot 
```bash
roslaunch kobuki_keyop safe_keyop.launch 
```

## Abrir rviz
```bash
rviz
```

