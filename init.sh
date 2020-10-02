
# elk 설정 

apt-get install wget -y
sudo apt-get install apt-transport-https -y
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.9.2-amd64.deb
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.9.2-amd64.deb.sha512
shasum -a 512 -c elasticsearch-7.9.2-amd64.deb.sha512 
sudo dpkg -i elasticsearch-7.9.2-amd64.deb
<!-- sudo service elasticsearch start -->
sudo vi /etc/elasticsearch/elasticsearch.yml
cp /root/elk_config/elasticsearch.yml /etc/elasticsearch/elasticsearch.yml
sudo service elasticsearch restart

# 키바나 설치 

wget https://artifacts.elastic.co/downloads/kibana/kibana-7.9.2-amd64.deb
shasum -a 512 kibana-7.9.2-amd64.deb 
sudo dpkg -i kibana-7.9.2-amd64.deb
cp /root/elk_config/kibana.yml /etc/kibana/kibana.yml

sudo service kibana restart