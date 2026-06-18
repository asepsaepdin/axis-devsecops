pipeline{
  agent any
  stages{
    stage ('Create'){
      steps{
        sh 'echo "Download Axis Web Terbaru dari Github Repository"'
        sh 'mkdir -p /tmp/web && chmod 777 /tmp/web && cd /tmp/web & git clone git@github.com:asepsaepdin/axis-devsecops.git'
        sh 'echo "Build Axis Web menjadi Docker Image."'
        sh 'docker build -t axis-web:10.0 .'
        sh 'echo "Jalankan Axis Web pada port 9090."'
        sh 'docker run -itd --name axis-webs -p 9090:80 axis-web:10.0'
      }
    }
  }
}
