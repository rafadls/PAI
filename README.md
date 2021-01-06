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
### Robocup 2019 modificada (sin gente)
```bash
roslaunch kobuki_gazebo robocup_real.launch
```
### Robocup 2019 modificada (con gente)
```bash
roslaunch kobuki_gazebo robocup_real_wp.launch
```
## Correr en otras arenas:
### Arena 1
```bash
roslaunch kobuki_gazebo arena_1.launch
```
### Arena 2
```bash
roslaunch kobuki_gazebo arena_2.launch
```
### Arena 3
```bash
roslaunch kobuki_gazebo arena_3.launch
```
### Arena 4
```bash
roslaunch kobuki_gazebo arena_4.launch
```

## Controlar el robot 
```bash
roslaunch kobuki_keyop safe_keyop.launch 
```

## Abrir rviz
```bash
rviz
```

