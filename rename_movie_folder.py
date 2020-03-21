# folder name: Inception.2010.1080p.x264.AAC-RARBG
import os
import sys
import re

print("Before:-")
print(sys.argv[1])
string = sys.argv[1]
string = string.replace("."," ")
#print(string)
string = string.replace(" 1080p"," [1080p]")
string = string.replace(" 720p"," [720p]")
string = string.replace(" BluRay","")
string = string.replace(" Bluray","")
#print(string)

string = re.sub(' 20(..)',r' (20\1)',string)
string = re.sub(' 19(..)',r' (19\1)',string)
string = re.sub(' x264.+','',string)
string = re.sub(' H264.+','',string)
string = re.sub(' x265.+','',string)
print('After:-')
print(string)

os.rename(sys.argv[1],string)
print("Done.")
