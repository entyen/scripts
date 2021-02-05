if ! screen -list | grep -q MinecraftServer; then
	echo "$(date) $(ls -1 | wc -l):" >> /home/regul/mf-1.7.10/MCServerRestartLog.txt 2>&1
	cd /home/regul/mf-1.7.10
    "/home/regul/mf-1.7.10/start.sh" | sed 's/^/  /' >> /home/regul/mf-1.7.10/MCServerRestartLog.txt 2>&1
fi
