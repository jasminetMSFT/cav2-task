# Dockerfile
FROM alpine
WORKDIR /home/test/report/
CMD ["sh", "-c", "echo 'Your text here' > /home/test/report/file.txt"]

