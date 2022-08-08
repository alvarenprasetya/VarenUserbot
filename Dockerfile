#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b NANDEE-Userbot https://github.com/sip-userbot/NANDEE-Userbot /home/nandeeuserbot/ \
    && chmod 777 /home/nandeeuserbot \
    && mkdir /home/nandeeuserbot/bin/

COPY ./sample_config.env ./config.env* /home/nandeeuserbot/

WORKDIR /home/nandeeuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
