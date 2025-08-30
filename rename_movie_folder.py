# Usage: rename_movie_folder.py <folder>
# Date modified: 30 Aug 2025
import os
import sys
import re

string = sys.argv[1]
print("Before:-")
print(string)


# Find resolution
resolution = 0
for pixel in ["2160p", "1080p", "720p"]:
   if string.find(pixel) != -1:
      resolution = pixel
      string = string[:string.find(pixel)]



# Find year
year = re.findall(r'\b(1[0-9]{3}|2[0-9]{3})\b', string)
year = year[-1]

# Find title
match = re.search(re.escape(year), string)
string = string[:match.start()]
index = -1
found_index = 1
for char in reversed(string):
   if char.isalnum():
      found_index = index
      break
   else:
      index -= 1
string = string[:found_index + 1]
string = string.replace("."," ")

#Append year & resolution
print(f"year:{year} resolution:{resolution}")
string += f" ({year}) [{resolution}]"

print('After:-')
print(string)

os.rename(sys.argv[1],string)
print("Done.")

