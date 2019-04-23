all=$(($(kubectl get node |wc -l)-1))
notReady=$(kubectl get node|grep NotReady|wc -l)
echo $(date "+%Y-%m-%d %H:%M:%S")
echo total nodes:$all
echo ready nodes: $(($all-$notReady))
