FROM public.ecr.aws/lambda/python:3.9

RUN yum -y install zip && yum -y clean all  && rm -rf /var/cache

ENTRYPOINT ["/bin/bash"]
