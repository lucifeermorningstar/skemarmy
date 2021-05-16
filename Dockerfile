FROM lucifeermorningstar/SkemArmy:alpine

#clonning repo 
RUN git clone https://github.com/lucifeermorningstar/SkemArmy.git /root/DaisyX
#working directory 
WORKDIR /root/DaisyX

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/DaisyX/bin:$PATH"

CMD ["python3","-m","DaisyX"]
