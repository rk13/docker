FROM java:7
COPY dropwizard-example/* /data/dropwizard-example/
WORKDIR /data/dropwizard-example
RUN java -jar dropwizard-example.jar db migrate example.yml
CMD java -jar dropwizard-example.jar server example.yml

