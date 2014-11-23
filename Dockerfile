#
# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements.  See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

FROM ubuntu:12.04
MAINTAINER Andrea Turli <andrea.turli@gmail.com>

RUN echo 'root:password' | chpasswd

ADD install-oracle-java7.sh /
ADD install-garuda-runtime.sh /

RUN sh -x /install-garuda-runtime.sh
RUN apt-get -y install python-simplejson
RUN apt-get install -y openssh-server supervisor vim

RUN mkdir /var/run/sshd
RUN mkdir -p /var/log/supervisor

RUN wget https://www.dropbox.com/s/0macmkd23k3hap7/supervisord.conf
RUN mv supervisord.conf /etc/supervisor/conf.d/supervisord.conf
RUN chmod 644 /etc/supervisor/conf.d/supervisord.conf

EXPOSE 22 5555 8000

CMD ["/usr/bin/supervisord"]