FROM node:18-alpine

# تعيين مجلد العمل داخل الحاوية
WORKDIR /app

# نسخ ملفات حزمة التطبيق (package.json و package-lock.json)
COPY package*.json ./

# تثبيت التبعيات
RUN npm install

# نسخ ملفات التطبيق المصدر
COPY . .

# تعريض المنفذ الذي يستمع إليه التطبيق
EXPOSE 8080

# تشغيل التطبيق
CMD ["npm", "start"]