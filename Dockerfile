# استخدم صورة Ubuntu كأساس
FROM ubuntu:latest

# تحديث النظام وتثبيت Squid
RUN apt-get update -y && \
    apt-get install -y squid

# نسخ إعدادات Squid من ملف محلي إلى الحاوية
COPY squid.conf /etc/squid/squid.conf

# فتح البورت 3128 المستخدم في Squid
EXPOSE 3128

# الأمر الذي يبدأ تشغيل Squid
CMD ["squid", "-N"]
