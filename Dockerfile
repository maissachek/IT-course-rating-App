FROM nginx:alpine

# نسخ ملفات التطبيق
COPY . /usr/share/nginx/html

# نسخ ملف تكوين Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# كشف المنفذ
EXPOSE 80

# تشغيل Nginx
CMD ["nginx", "-g", "daemon off;"]