FROM centos:8

RUN mkdir /home/my_model

WORKDIR /home/my_model

COPY . /home/my_model

RUN yum install python3 -y

RUN pip3 install -U pip

RUN pip3 install numpy

RUN pip3 install pandas

RUN pip3 install cython

RUN pip3 install scikit-learn

RUN pip3 install xgboost

CMD ["python3", "/home/my_model/model.py"]

