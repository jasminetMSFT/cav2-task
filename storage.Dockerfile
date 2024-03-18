# Dockerfile
FROM alpine
WORKDIR /home/test/report/
RUN /bin/echo "here is my test file!!!" > my_test_file.txt
RUN /bin/echo "current dockerfile directory is $PWD"
ENTRYPOINT ["sh", "-c", "echo 'Your text here' > /home/test/report/file.txt"]

