export SSHPORT=22
export YOURDOMAIN=example.com
export TUNNELEDPORT=443
screen -dm bash -c "while :; do  ssh -p $SSHPORT root@hind.es \"fuser -k $TUNNELEDPORT/tcp ; fuser -k $TUNNELEDPORT/udp\" ; ssh -o ExitOnForwardFailure=yes -p $SSHPORT -R $TUNNELEDPORT:localhost:$TUNNELEDPORT root@$YOURDOMAIN  ; done ; pause"
