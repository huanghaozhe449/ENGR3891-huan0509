#!/bin/bash

# To move around the map, you only need to input "west", "east", "south", "north", "inside"

# to achieve the final success,
# you need to 1. find the key. 2. find the exit

location="house"
current_direction="south"
key="no"
where_to_go="Where you want to go next? (west, south, north, east, inside)"
divider="............"
at_the_house="You are at the south of a white house."
west="west"
east="east"
north="north"
south="south"
inside="inside"

echo $at_the_house
echo "You have to find the exit of this map"
echo $divider
sleep 0.5
echo $where_to_go
echo "Plese input: west, south, north, east, inside"


returnToEntrance(){
	echo "Now, you have arrived the boundary of the map, "
	echo "so you are sent back to the entrance of the map(south of the house)."
	echo ""
}

randomTalk(){
	random=$(( ( RANDOM % 10 )  + 1 ))
	if [ $random -gt 7 ]
	then
		echo "There seems to be nothing here"
	fi
}

while true
do
	read new_direction
	echo $divider
	sleep 0.5
	if [ "$new_direction" == "$west" ] || [ "$new_direction" == "$south" ] || [ $new_direction == "$north" ] || [ $new_direction == "$east" ] || [ $new_direction == "$inside" ]
	then
		if [ $location == "house" ]
		then
			if [ "${current_direction}" != "${new_direction}" ] && [ "${new_direction}" != "inside" ] 
			then
				echo "Now, you are at the ${new_direction} of this HOUSE"
				location="house"
			elif [ "${new_direction}" == "west" ]
			then
				echo "Now, you are at the east of a STORE BARROW"
				location="store_barrow"
				new_direction="east"
				randomTalk
			elif [ "${new_direction}" == "north" ]
			then
				echo "Now, you are at the south of a FORE STREET"
				location="fore_street"
				new_direction="south"
				randomTalk
			elif [ "${new_direction}" == "south" ]
			then
				echo "Now, you are at the entrance of the map"
				location="house"
				new_direction="south"
			elif [ "${new_direction}" == "east" ]
			then
				echo "Now, you are at the west of the CANYON VIEW"
				location="canyon_view"
				new_direction="west"
				randomTalk
			elif [ "${new_direction}" == "inside" ]
			then
				echo "You go inside the house, but nothing special here."
				echo "Now, you are still at the ${current_direction} of this HOUSE."
				location="house"
				new_direction=$current_direction
			fi
		elif [ $location == "canyon_view" ] 
		then
			if [ "${current_direction}" != "${new_direction}" ] && [ "${new_direction}" != "inside" ] 
			then
				echo "Now, you are at the ${new_direction} of the CANYON VIEW"
				location="canyon_view"
				randomTalk
			elif [ "${new_direction}" == "east" ]
			then
				returnToEntrance
				location="house"
				new_direction="south"
				randomTalk
			elif [ "${new_direction}" == "west" ]
			then
				echo "Now, you are at the east of a WHITE HOUSE"
				location="house"
				new_direction="east"
				randomTalk
			elif [ "${new_direction}" == "south" ]
			then
				echo "Now, you are at the north of the ROCKY LEDGE"
				location="rocky_ledge"
				new_direction="north"
			elif [ "${new_direction}" == "north" ]
			then
				echo "Now, you are at the south of a FORE STREET"
				location="fore_street"
				new_direction="south"
				randomTalk
			elif [ "${new_direction}" == "inside" ] 
			then
				echo "You went inside the canyon view, but found nothing speicial here."
				echo "Now, you are still at the ${current_direction} of the canyon view."
				location="canyon_view"
				new_direction=$current_direction
			fi
		elif [ $location == "rocky_ledge" ] 
		then
			if [ "${current_direction}" != "${new_direction}" ] && [ "${new_direction}" != "inside" ] 
			then
				echo "Now, you are at the ${new_direction} of the ROCKY LEDGE"
				location="rocky_ledge"
			elif [ "${new_direction}" == "north" ]
			then
				echo "Now, you are at the west of the CANYON VIEW"
				location="canyon_view"
				new_direction="north"
			elif [ "${new_direction}" == "inside" ]
			then
				echo "You have found the KEY!"
				echo "Now you are at the ${current_direction} of the ROCKY LEDGE"
				location="rocky_ledge"
				new_direction=$current_direction
				key="yes"
			else
				returnToEntrance
				location="house"
				new_direction="south"
			fi
		elif [ $location == "store_barrow" ] 
		then
			if [ "${current_direction}" != "${new_direction}" ] 
			then
				echo "Now, you are at the ${new_direction} of the STORE BARROW"
				location="store_barrow"
				randomTalk
			elif [ "${new_direction}" == "north" ]
			then
				echo "Now, you are at the south of a FOREST"
				location="forest"
				new_direction="south"
			elif [ "${new_direction}" == "east" ]
			then
				echo "Now, you are at the west of a HOUSE"
				location="house"
				new_direction="west"
			else
				returnToEntrance
				location="house"
				new_direction="south"
			fi
		elif [ $location == "forest" ] 
		then
			if [ "${current_direction}" != "${new_direction}" ] 
			then
				echo "Now, you are at the ${new_direction} of the FOREST"
				location="forest"
			elif [ "${new_direction}" == "south" ]
			then
				echo "Now, you are at the north of the STORE BARROW"
				location="store_barrow"		
				new_direction="north"

			elif [ "${new_direction}" == "east" ]
			then
				echo "Now, you are at the west of the FORE STREET"
				location="fore_street"		
				new_direction="west"
				randomTalk

			elif [ "${new_direction}" == "north" ]
			then
				if [ "${key}" == "yes" ]
				then
					echo "Congratulation! You have found the exit."
					break
				else
					echo "You have arrived the exit, but you did not get the key, so you cannot go outside."
					location="forest"		
					new_direction="north"
				fi
			else
				returnToEntrance
				location="house"
				new_direction="south"
			fi
		elif [ $location == "fore_street" ] 
		then
			if [ "${current_direction}" != "${new_direction}" ] 
			then
				echo "Now, you are at the ${new_direction} of the FORE STREET"
				location="fore_street"
				randomTalk

			elif [ "${new_direction}" == "south" ]
			then
				echo "Now, you are at the north of the HOUSE"
				location="house"		
				new_direction="north"
				randomTalk

			elif [ "${new_direction}" == "west" ]
			then
				echo "Now, you are at the east of the FOREST"
				location="forest"		
				new_direction="east"
				randomTalk

			elif [ "${new_direction}" == "east" ]
			then
				echo "Now, you are at the east of the CANYON VIEW"
				location="canyon_view"		
				new_direction="west"
			else
				returnToEntrance
				location="house"
				new_direction="south"
			fi
		fi
		current_direction="$new_direction"
	fi
	echo $where_to_go
done


