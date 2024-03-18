# Dockerfile
FROM alpine
RUN echo "here is my test file!!!" > my_test_file.txt
RUN echo "current dockerfile directory is $PWD"

