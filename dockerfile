# Используем лёгкий официальный образ Nginx
FROM nginx:alpine

# Удаляем дефолтный конфиг, если он есть
RUN rm -f /etc/nginx/conf.d/default.conf

# Копируем ваш кастомный конфиг
COPY nginx.conf /etc/nginx/conf.d/

# Копируем статические файлы
COPY html /usr/share/nginx/html

# Открываем порт 80
EXPOSE 80

# Команда запуска Nginx в фореграунд
CMD ["nginx", "-g", "daemon off;"]
