.SILENT:
all:
	echo "Running inventory..."
	cd inventory && ./script.sh
	echo "Running biscuits..."
	cd biscuits && make

clean:
	echo "Cleaning up inventory..."
	cd ./inventory && ./script.sh reset
	echo "Cleaning up biscuits..."
	cd ./biscuits && make clean
