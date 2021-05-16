FROM lucifeermorningstar/SkemArmy:j1xlte

# Working Directory
WORKDIR /DaisyX/

# Clone Repo
RUN git clone -b daisy https://github.com/lucifeermorningstar/SkemArmy.git /DaisyX/
