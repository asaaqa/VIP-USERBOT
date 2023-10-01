FROM asaaqa/Plugins-T:slim-buster

RUN git clone https://github.com/asaaqa/Plugins-T.git /root/TelethonHell

WORKDIR /root/TelethonHell

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/TelethonHell/bin:$PATH"

CMD ["python3","-m","TelethonHell"]
