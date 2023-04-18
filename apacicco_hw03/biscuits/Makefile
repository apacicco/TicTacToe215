.SILENT: #silences potential errors from making it to the terminal (according to Stack Overflow
bake: clean shop checkout mix #recipe with targets // DEFAULT
	echo "LOG --> Putting biscuits in the oven..." #prints to terminal
	./bin/biscuits.sh #runs script 
	echo "LOG --> Ding! Biscuits are done!" #prints to terminal

mix: #recipe
	echo "LOG --> Mixing the ingredients..." #prints to terminal
	cat ./pantry/*.item >> ./bowl_of_ingredients # will print whatever <name>.item in the pantry directory and append it to the bowl_of_ingredients
	shuf ./bowl_of_ingredients > ./tray_of_raw_biscuits # creating a centered output consisting of random mutations of the input in the file and overrides with that whatever is in tray of raw biscuits
	rm bowl* #removes bowl and whatever variation

checkout: # recipe
	echo "LOG --> Checking out and paying for groceries..." #prints to terminal
	mv cart pantry #moves the cart directory to the pantry directory

shop: # recipe
	echo "LOG --> Shopping for the groceries..." # prints statement to terminal
	./bin/flour.sh 32 #runs flour script with constant value
	./bin/water.sh #runs water script
	./bin/butter.sh 2 #runs butter with constant value

clean: #recipe
	echo "LOG --> Cleaning up the mess..." #prints to terminal
	rm -rf pantry cart bowl* *biscuits #removes from the cart directory any files that begin with bowl or end with biscuit
