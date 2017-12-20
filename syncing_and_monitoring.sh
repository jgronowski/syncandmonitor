#!/usr/bin/env bash

## Konfiguracja ścieżek docelowy i monitorowany

path="/var/log" # miejsce do przechowywania logów
file="synchronizacja"
docelowy="/home/ingest/" # miejsce gdzie mają znaleźć się pliki
monitorowany="/media/monitoring" # podmontowany zasób

## Wchodzę do katalogu
cd "$monitorowany"
## Monitoruje katalog
inotifywait -m -r -q -e close_write --format %w%f "${monitorowany}" | while read file;
## po przeczytaniu pliku synchronizuje folder
do
	if rsync -ar "$monitorowany" "$docelowy1"
		then 
		echo "$(date)" 'OK' 'Dokonano poprawnego kopiowania' >> $path/synchronizacja/$file.log
		else
		echo "$(date)" 'ERROR' 'Cos poszlo nie tak' >> $path/synchronizacja/$file.log
	fi
	if rsync -ar "$monitorowany" "$docelowy2"
		then 
		echo "$(date)" 'OK' 'Dokonano poprawnego kopiowania' >> $path/synchronizacja/$file.log
		else
		echo "$(date)" 'ERROR' 'Cos poszlo nie tak' >> $path/synchronizacja/$file.log
	fi
	if rsync -ar "$monitorowany" "$docelowy3"
		then 
		echo "$(date)" 'OK' 'Dokonano poprawnego kopiowania' >> $path/synchronizacja/$file.log
		else
		echo "$(date)" 'ERROR' 'Cos poszlo nie tak' >> $path/synchronizacja/$file.log
	fi
	if rsync -ar "$monitorowany" "$docelowy4"
		then 
		echo "$(date)" 'OK' 'Dokonano poprawnego kopiowania' >> $path/synchronizacja/$file.log
		else
		echo "$(date)" 'ERROR' 'Cos poszlo nie tak' >> $path/synchronizacja/$file.log
	fi
	if rsync -ar "$monitorowany" "$docelowy5"
		then 
		echo "$(date)" 'OK' 'Dokonano poprawnego kopiowania' >> $path/synchronizacja/$file.log
		else
		echo "$(date)" 'ERROR' 'Cos poszlo nie tak' >> $path/synchronizacja/$file.log
	fi
## wyswietlam komunikat o zakonczonej synchronizacji pliku
  echo Synchronizacja pliku zakończona sukcesem "$file"
done
