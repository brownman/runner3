#
 docker run brownman/runner3 sudo -u gitlab_ci_runner -H 'env' > /tmp/env.txt
 cp /tmp/env.txt $CIRCLE_ARTIFACTS/env.txt
 
  docker run brownman/runner3 sudo -u gitlab_ci_runner -H 'ps -aux' > /tmp/ps.txt
 cp /tmp/ps.txt $CIRCLE_ARTIFACTS/ps.txt
 
   docker run brownman/runner3 sudo -u gitlab_ci_runner -H 'netstat -ntlp' > /tmp/netstat.txt
 cp /tmp/netstat.txt $CIRCLE_ARTIFACTS/netstat.txt
