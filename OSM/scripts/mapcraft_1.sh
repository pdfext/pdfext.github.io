#!/bin/bash
rm result.osm
for file in `ls *.osm`
do
 sed '/node id=/ s|version=.*">|/>|g'     $file    > $file.1
 sed '/node id=/ s|version=.*"/>|/>|g'    $file.1  > $file.2
 grep -v "tag"                            $file.2  > $file.3
 grep -v "/node"                          $file.3  > $file.4
 grep -v "meta"                           $file.4  > $file.41
 grep -v "note"                           $file.41 > $file.42
 sed '/way id=/ s|version=.*>|>|g'        $file.42 > $file.5
 sed '/<relation id/,/relation>/{//!d}'   $file.5  > $file.6
 grep -v "<relation"                      $file.6  > $file.61
 grep -v "/relation>"                     $file.61 > $file.62
 sed 's/\(\.[0-9][0-9][0-9]\)[0-9]*/\1/g' $file.62 > $file.63
 cat $file.63 >> $file.result.osm
 rm $file.1 $file.2 $file.3 $file.4 $file.41 $file.42 $file.5
 rm $file.6 $file.61 $file.62 $file.63
done
